// Mr Moxey's mint tin holder
// Units: mm. Printer: FDM, PLA.

// ---------------------------------------------------------------------------
// Tin geometry (measured by Tony, 2026-08-06)
// ---------------------------------------------------------------------------

tin_base_length = 96;    // shallow tray half (bottom)
tin_base_width  = 58;
tin_lid_length  = 100;   // overlapping cap half (top) — sets overall envelope
tin_lid_width   = 63;
tin_seam_z      = 10;    // height of the lid/base split, from bottom
tin_total_height = 20;
tin_corner_r    = 13.5;  // plan-view corner radius (avg of measured 12-15mm range)

// Hinge knuckles: PLACEHOLDER geometry — only the protrusion depth was measured.
// Position/width are guesses; adjust hinge_knuckle_* below once you can eyeball
// the real tin, or measure them and I'll fix these.
hinge_protrusion   = 0.75; // beyond the lid's width edge
hinge_side         = 1;    // which long edge: +1 = +X side, -1 = -X side
hinge_knuckle_w    = 8;    // guessed knuckle width along Y
hinge_knuckle_ys   = [12, tin_lid_length - 12]; // guessed knuckle centers along Y

// Fit clearance: PLA on FDM. Added to the total (both-sides) dimension.
// v1 (0.35 both axes) printed too tight: FDM holes commonly print a bit
// undersized, and the real tin runs closer to the top of its tolerance band.
width_clearance  = 0.6;
height_clearance = 1.0; // bumped per v1 test — was very tight at 0.35

// "Lip" = the lid's overhang past the base (tin_lid_width/length vs
// tin_base_width/length). The hinge knuckle pokes out even further past
// the lip on one side — that's what actually blocked the v1 width fit.
// hinge_relief_margin is slop added beyond the measured protrusion.
hinge_relief_margin = 0.5;
hinge_notch_drop    = 1.0; // v2 print: notch caught a little — extend it lower

resolution = 64;

// ---------------------------------------------------------------------------
// Reference tin solid — X = width, Y = length (insertion axis, 0=front),
// Z = height (0 = bottom/base side). For visualization + fit-checking only.
// ---------------------------------------------------------------------------

module rounded_rect(size, r) {
    x = size[0]; y = size[1];
    hull() {
        for (dx = [r, x - r], dy = [r, y - r])
            translate([dx, dy]) circle(r = r, $fn = resolution);
    }
}

module hinge_knuckles(width_env) {
    for (yc = hinge_knuckle_ys)
        translate([hinge_side * (width_env / 2), yc - hinge_knuckle_w / 2, tin_seam_z])
            cube([hinge_protrusion * 2, hinge_knuckle_w, tin_total_height - tin_seam_z]);
}

module tin(clearance = 0) {
    // base (bottom half)
    translate([-tin_base_width / 2 - clearance / 2, (tin_lid_length - tin_base_length) / 2 - clearance / 2, 0])
        linear_extrude(height = tin_seam_z)
            rounded_rect([tin_base_width + clearance, tin_base_length + clearance], tin_corner_r - 2);

    // lid (top half) — also sets the overall footprint
    translate([-tin_lid_width / 2 - clearance / 2, -clearance / 2, tin_seam_z])
        linear_extrude(height = tin_total_height - tin_seam_z)
            rounded_rect([tin_lid_width + clearance, tin_lid_length + clearance], tin_corner_r);

    if (clearance == 0)
        hinge_knuckles(tin_lid_width);
}

// ---------------------------------------------------------------------------
// First print test: a thin plaque with just the front-opening cutout.
// Confirms width/height/corner-radius/clearance fit against the real tin
// before we invest in the full bay + latch geometry.
// ---------------------------------------------------------------------------

frame_thickness = 4;
frame_margin = 10;

function channel_envelope() = [
    tin_lid_width + width_clearance,                                            // 0: w
    tin_total_height + height_clearance,                                        // 1: h
    hinge_protrusion + hinge_relief_margin,                                     // 2: relief_w
    (tin_total_height - tin_seam_z) + height_clearance / 2 + hinge_notch_drop,  // 3: lid_band_h
];

module opening_profile() {
    e = channel_envelope();
    w = e[0]; h = e[1]; relief_w = e[2]; lid_band_h = e[3];

    union() {
        translate([-w / 2, -h / 2]) square([w, h]);
        // hinge relief notch, both sides, upper (lid) band only — so the
        // tin can be inserted with the hinge on either side. The tin gets
        // pushed all the way through this plaque, so the knuckle needs
        // clearance to pass even though it's not centered here.
        translate([w / 2, h / 2 - lid_band_h]) square([relief_w, lid_band_h]);
        translate([-w / 2 - relief_w, h / 2 - lid_band_h]) square([relief_w, lid_band_h]);
    }
    // square corners for now — the front opening's vertical corners were
    // reported sharp, so no radius applied here. Revisit if the real tin
    // proves otherwise against this test piece.
}

module fit_test_frame() {
    w = tin_lid_width + width_clearance + (hinge_protrusion + hinge_relief_margin) * 2 + frame_margin * 2;
    h = tin_total_height + height_clearance + frame_margin * 2;
    linear_extrude(height = frame_thickness)
        difference() {
            translate([-w / 2, -h / 2]) square([w, h]);
            opening_profile();
        }
}

// ---------------------------------------------------------------------------
// Single bay cavity — no latch yet. Validates the full-depth slide fit and
// depth/backstop sizing before the push-push latch (prototyped separately)
// gets integrated.
//
// The channel cross-section is constant along the insertion axis (same
// rectangle as the validated frame test, plus the hinge relief). Since the
// tin's base half (58mm) is narrower than its lid half (63mm), the base
// naturally floats clear of the channel walls and only the lid band makes
// contact — so this already behaves like Tony's "rails on the lip" idea
// without needing a separate stepped-channel feature.
// ---------------------------------------------------------------------------

wall_side        = 3;  // side wall thickness
wall_top_bottom  = 3;  // wall thickness above/below the channel
backstop_thickness = 3;
insertion_extra  = 5;  // slack past tin_lid_length before the backstop —
                        // room to fully seat the tin + future latch mechanism

bay_channel_depth = tin_lid_length + insertion_extra;
bay_total_depth   = bay_channel_depth + backstop_thickness;

module bay_channel(depth) {
    e = channel_envelope();
    w = e[0]; h = e[1]; relief_w = e[2]; lid_band_h = e[3];
    union() {
        translate([-w / 2, -0.5, -h / 2])
            cube([w, depth + 0.5, h]);
        translate([w / 2, -0.5, h / 2 - lid_band_h])
            cube([relief_w, depth + 0.5, lid_band_h]);
        translate([-w / 2 - relief_w, -0.5, h / 2 - lid_band_h])
            cube([relief_w, depth + 0.5, lid_band_h]);
    }
}

module bay_housing() {
    e = channel_envelope();
    w = e[0]; h = e[1]; relief_w = e[2];
    ow = w + relief_w * 2 + wall_side * 2; // relief now on both sides
    oh = h + wall_top_bottom * 2;

    difference() {
        translate([-ow / 2, 0, -oh / 2])
            cube([ow, bay_total_depth, oh]);
        bay_channel(bay_channel_depth);
    }
}

// ---------------------------------------------------------------------------
// N-bay array — shared dividers between adjacent bays instead of printing
// bay_count separate housings side by side. Each bay's own hinge-relief
// notches are accounted for within its own unit width, so the wall_side
// divider between two bays stays fully solid — relief never eats into it.
// No latch yet; this only validates the shared-wall array layout.
// ---------------------------------------------------------------------------

bay_count = 4; // 4 / 6 / 8, per Tony's target range

// Segment-joint tongue/groove — alignment only, not a structural fastener.
// Sized to sit in the bottom wall band (wall_top_bottom) without needing
// to thicken the walls. Tony's plan: glue for the permanent bond.
joint_tongue_d  = 1.5; // protrusion depth
joint_tongue_h  = 2.2; // cross-section height, fits in the 3mm wall band
joint_clearance = 0.3; // per-side groove oversize for a slide fit
joint_margin_y  = 6;   // inset from the front/back edges

module bay_array(n, left_joint = false, right_joint = false) {
    e = channel_envelope();
    w = e[0]; h = e[1]; relief_w = e[2];
    unit_w = w + relief_w * 2;
    oh = h + wall_top_bottom * 2;
    ow = n * unit_w + (n + 1) * wall_side;

    tongue_z = -oh / 2 + wall_top_bottom / 2;
    y0 = joint_margin_y;
    y1 = bay_total_depth - joint_margin_y;

    difference() {
        union() {
            translate([-ow / 2, 0, -oh / 2])
                cube([ow, bay_total_depth, oh]);
            if (right_joint)
                translate([ow / 2, y0, tongue_z - joint_tongue_h / 2])
                    cube([joint_tongue_d, y1 - y0, joint_tongue_h]);
        }
        for (i = [0 : n - 1]) {
            center_x = -ow / 2 + wall_side + unit_w / 2 + i * (unit_w + wall_side);
            translate([center_x, 0, 0])
                bay_channel(bay_channel_depth);
        }
        if (left_joint)
            translate([-ow / 2 - 0.5, y0 - joint_clearance, tongue_z - joint_tongue_h / 2 - joint_clearance])
                cube([joint_tongue_d + joint_clearance + 0.5, (y1 - y0) + joint_clearance * 2, joint_tongue_h + joint_clearance * 2]);
    }
}

// ---------------------------------------------------------------------------
// Segment splitting — a 6-8 bay array is wider than most FDM beds (an
// 8-bay array is ~556mm long). max_segment_width caps each printable piece
// at a safe width for a ~250-300mm bed. bay_segment_sizes() spreads
// bay_count as evenly as possible across the needed number of segments.
//
// NOTE: segments currently butt together with plain flat faces — no
// alignment or fastening feature yet (no tongue/groove, no bolts). That's
// a deliberate placeholder pending a decision on how Tony wants to join
// them (glue / screws+captive nuts / printed dovetail) rather than a
// guess baked into the geometry now.
// ---------------------------------------------------------------------------

max_segment_width = 240; // conservative for a 250-300mm bed

function bays_per_segment() =
    let (e = channel_envelope(), unit_w = e[0] + e[2] * 2)
    max(1, floor((max_segment_width - wall_side) / (unit_w + wall_side)));

function bay_segment_sizes(n) =
    let (per_seg = bays_per_segment(),
         num_segs = ceil(n / per_seg),
         base = floor(n / num_segs),
         rem = n - base * num_segs)
    [for (i = [0 : num_segs - 1]) base + (i < rem ? 1 : 0)];

function cumsum_gapped(widths, gap, i = 0, acc = 0) =
    i >= len(widths) ? [] :
    concat([acc], cumsum_gapped(widths, gap, i + 1, acc + widths[i] + gap));

module bay_segments_preview(n, gap = 15) {
    sizes = bay_segment_sizes(n);
    e = channel_envelope();
    unit_w = e[0] + e[2] * 2;
    widths = [for (s = sizes) s * unit_w + (s + 1) * wall_side];
    starts = cumsum_gapped(widths, gap);
    total_w = starts[len(starts) - 1] + widths[len(widths) - 1];

    for (i = [0 : len(sizes) - 1])
        translate([starts[i] - total_w / 2, 0, 0])
            bay_array(sizes[i], i > 0, i < len(sizes) - 1);
}

// ---------------------------------------------------------------------------
// Push-push latch — heart-cam groove TOPOLOGY test only. Open-top pocket,
// no cover/slider/spring. Drag a toothpick or paperclip tip through it by
// hand to check the routing actually alternates between the two end
// pockets before committing to the full spring+slider mechanism.
//
// Topology: two dead-end pockets, E (open/rest) and L (locked), each
// connected to a shared junction A by their own channel. The channels
// bend around a triangular keep-out (the "tooth") on their way to a small
// shared pocket B just past A. Which side of the tooth the tool is on
// when it arrives at B is what should determine which pocket it falls
// into next — that routing behavior is the thing we're validating.
// ---------------------------------------------------------------------------

lg_lobe_x     = 6;   // lateral offset of E/L pockets from centerline
lg_rest_y     = 0;   // E (open) pocket position
lg_lock_y     = 12;  // L (locked) pocket position
lg_bottom_y   = 18;  // A junction / tooth center
lg_overtravel = 4;   // extra depth past the tooth, shared pocket B
lg_channel_w  = 4;   // groove width — generous, sized for a toothpick/paperclip
lg_tooth_w    = 7;   // lateral width of the tooth keep-out (must exceed lg_channel_w)
lg_pocket_depth = 3; // groove cut depth
lg_plate_margin = 6;

module capsule(p1, p2, w) {
    hull() {
        translate(p1) circle(d = w, $fn = 32);
        translate(p2) circle(d = w, $fn = 32);
    }
}

function groove_points() =
    let (e  = [lg_lobe_x, lg_rest_y],
         l  = [-lg_lobe_x, lg_lock_y],
         p1 = [lg_tooth_w / 2 + lg_channel_w / 2, lg_bottom_y - 3],
         p2 = [-(lg_tooth_w / 2 + lg_channel_w / 2), lg_bottom_y - 3],
         b  = [0, lg_bottom_y + lg_overtravel])
    [e, l, p1, p2, b];

function groove_plate_dims() = [
    2 * (lg_lobe_x + lg_channel_w) + lg_plate_margin * 2,               // 0: plate_w
    lg_bottom_y + lg_overtravel + lg_channel_w + lg_plate_margin * 2,   // 1: plate_d
];

module groove_maze_profile() {
    pts = groove_points();
    e = pts[0]; l = pts[1]; p1 = pts[2]; p2 = pts[3]; b = pts[4];
    union() {
        capsule(e, p1, lg_channel_w);
        capsule(p1, b, lg_channel_w);
        capsule(l, p2, lg_channel_w);
        capsule(p2, b, lg_channel_w);
        translate(e) circle(d = lg_channel_w + 2, $fn = 32);
        translate(l) circle(d = lg_channel_w + 2, $fn = 32);
    }
}

module latch_groove_test() {
    d = groove_plate_dims();
    plate_w = d[0]; plate_d = d[1];
    plate_thickness = lg_pocket_depth + 2;

    difference() {
        translate([-plate_w / 2, -lg_plate_margin, 0])
            cube([plate_w, plate_d, plate_thickness]);
        translate([0, 0, plate_thickness - lg_pocket_depth])
            linear_extrude(height = lg_pocket_depth + 0.5)
                groove_maze_profile();
    }
}

// ---------------------------------------------------------------------------
// Latch integration — v1 first pass, expect to iterate after a test print.
//
// Key constraint that shapes this whole layout: the tin's solid body sweeps
// through most of the bay's depth as it's pushed in/ejected (its back face
// travels from ~mech_rest_y to ~mech_rest_y+lg_bottom_y). A STATIONARY groove
// plate sitting anywhere in that Y-range, at the tin's own width/height,
// would collide with the tin. Fix: the mechanism lives in its own channel
// BELOW the tin channel (separated by a thin membrane), merging into one
// open channel only once behind Y where the tin can ever reach. A pusher
// tab on the slider's front end pokes up through a slot in the membrane —
// only in the region the tin actually travels — to contact the tin's back
// face. The groove maze itself is carried on the underside of a removable
// bottom cover plate (mating against the flat membrane above it), so no
// extra "groove insert" part is needed.
// ---------------------------------------------------------------------------

mech_rest_y    = tin_lid_length - 4; // 96: tin back face at rest — ~4mm poke past the opening
mech_bar_w     = 6;  mech_bar_h = 6; // rigid slider bar cross-section
mech_rigid_len = 20;                 // guided rigid portion, front face to where the flex tongue starts
mech_tongue_len = 20;                // flexible portion, tongue to pin — long & thin flexes easily, not sustained-load
mech_tongue_w  = 1.6;
mech_pin_d     = lg_channel_w - 0.6; // 3.4 — clearance in the 4mm groove

mech_pusher_w   = 10; mech_pusher_len = 6; // tab poking up through the slot to contact the tin
mech_membrane   = 2;                        // wall separating tin channel from the mechanism band
mech_band_h     = 11;                       // mechanism band height (bar 6 + groove pocket 3 + margin)

mech_Y_E = mech_rest_y + mech_rigid_len + mech_tongue_len; // 136: main-frame Y where groove local E sits

mech_slot_y0 = mech_rest_y - 6;                  // 90: slot/band starts here (margin before rest)
mech_slot_y1 = mech_rest_y + lg_bottom_y + 4;     // 118: slot ends past max-push, with margin

mech_spring_pocket_len = 24; // placeholder — measure your actual spring and adjust
mech_endcap = 3;

function groove_plate_w() = groove_plate_dims()[0];
function groove_plate_d() = groove_plate_dims()[1];
function mech_band_w() = max(groove_plate_w(), mech_bar_w + 4);

function mech_plate_front_y() = mech_Y_E - lg_plate_margin;          // 130
function mech_plate_back_y()  = mech_plate_front_y() + groove_plate_d(); // 168
function mech_total_depth()   = mech_plate_back_y() + mech_spring_pocket_len + mech_endcap; // ~195

function mech_band_top() = -(channel_envelope()[1] / 2) - mech_membrane; // just below the tin channel floor
function mech_band_bot() = mech_band_top() - mech_band_h;

module mech_channel(y0, y1) {
    bw = mech_band_w();
    translate([-bw / 2, y0, mech_band_bot()])
        cube([bw, y1 - y0, mech_band_h]);
}

module mech_slot() {
    translate([-mech_pusher_w / 2, mech_slot_y0, mech_band_top()])
        cube([mech_pusher_w, mech_slot_y1 - mech_slot_y0, mech_membrane + 0.5]);
}

module bay_with_latch() {
    e = channel_envelope();
    w = e[0]; h = e[1];
    ow = w + e[2] * 2 + wall_side * 2;
    oh_thin = h + wall_top_bottom * 2;
    z_top = h / 2 + wall_top_bottom;
    z_bot_thin = -(h / 2 + wall_top_bottom);
    total_depth = mech_total_depth();

    difference() {
        union() {
            translate([-ow / 2, 0, z_bot_thin])
                cube([ow, mech_slot_y0, z_top - z_bot_thin]);
            translate([-ow / 2, mech_slot_y0, mech_band_bot()])
                cube([ow, total_depth - mech_slot_y0, z_top - mech_band_bot()]);
        }
        bay_channel(mech_slot_y1);
        mech_channel(mech_slot_y0, total_depth);
        mech_slot();
    }
}

// Printable slider: rigid bar + pusher tab + flexible tongue + pin +
// pushrod-and-flange for the spring to push against. One piece, PLA flex
// is fine here since the tongue is never under SUSTAINED load (only
// momentarily, while transiting the maze).
module latch_slider() {
    band_mid_z = (mech_band_top() + mech_band_bot()) / 2;

    // rigid bar, spans the pusher tab through to where the tongue begins
    hull() {
        translate([0, mech_pusher_len, band_mid_z])
            cube([mech_bar_w, 0.1, mech_bar_h], center = true);
        translate([0, mech_rigid_len, band_mid_z])
            cube([mech_bar_w, 0.1, mech_bar_h], center = true);
    }
    // pusher tab, pokes up through the slot into the tin channel
    translate([-mech_pusher_w / 2 + 1, 0, band_mid_z - mech_bar_h / 2])
        cube([mech_pusher_w - 2, mech_pusher_len, mech_bar_h / 2 + mech_membrane + 3]);
    // flexible tongue, rigid bar's back end to the pin
    translate([0, mech_rigid_len, band_mid_z])
        linear_extrude(height = mech_tongue_w)
            polygon([
                [-mech_bar_w / 2, 0], [mech_bar_w / 2, 0],
                [mech_pin_d / 2, mech_tongue_len], [-mech_pin_d / 2, mech_tongue_len]
            ]);
    // pin
    translate([0, mech_rigid_len + mech_tongue_len, band_mid_z])
        rotate([0, 90, 0])
            cylinder(d = mech_pin_d, h = mech_tongue_w, $fn = 24);
    // spring seat flange, back of the rigid bar — spring pushes here
    translate([0, mech_rigid_len - 4, band_mid_z])
        cube([mech_bar_w + 4, 3, mech_bar_h + 4], center = true);
}

// Printable bottom cover — carries the groove maze pocket (mating against
// the housing's flat membrane above), plus a flat section over the bar
// guide and spring channel. Screws or glue per Tony's call on the
// segment-joint question; holes aren't modeled yet.
module latch_cover() {
    bw = mech_band_w();
    total_depth = mech_total_depth();
    cover_len = total_depth - mech_slot_y0;
    cover_thickness = 2.5;

    difference() {
        translate([-bw / 2, mech_slot_y0, 0])
            cube([bw, cover_len, cover_thickness]);
        translate([0, mech_Y_E, cover_thickness - lg_pocket_depth])
            linear_extrude(height = lg_pocket_depth + 0.5)
                groove_maze_profile();
    }
}

// ---------------------------------------------------------------------------
// Vertical column — one bay wide, N bays tall, per Tony's correction (tins
// stack vertically, not side by side). Stacking pitch uses each bay's full
// height (including the mechanism band at the back), so bays never
// collide even though the front (pure tin-slide) section is shorter.
// ---------------------------------------------------------------------------

column_count = 4; // 4 / 6 / 8

function bay_oh_tall() = (channel_envelope()[1] / 2 + wall_top_bottom) - mech_band_bot();

module bay_column(n) {
    pitch = bay_oh_tall() + wall_side;
    for (i = [0 : n - 1])
        translate([0, 0, i * pitch])
            bay_with_latch();
}

// ---------------------------------------------------------------------------
// Hook-catch latch — v2 mechanism, much simpler than the heart-cam attempt.
// A fixed hook nub near the opening catches the tin's own front lip (the
// ~2mm step where the lid overhangs the base) when the tin is deliberately
// pressed down; lifting clears the hook so the spring can eject it. This
// test rig is deliberately short — just enough channel to push the real
// tin into and try the catch/lift motion by hand, before committing to a
// full-depth bay. No spring in this test; just validating the hook geometry.
// ---------------------------------------------------------------------------

hook_extra_drop  = 4;  // extra downward play beyond the snug fit — room to press the tin down
hook_protrusion  = 4;  // how far the hook nub reaches down from the ceiling
hook_engage_len  = 4;  // hook length along the insertion axis
hook_width       = 24; // hook width, centered — doesn't need to span the full tin width
hook_y           = 6;  // hook position, near the opening
hook_test_depth  = 40; // just enough to test with the tin's front portion

module hook_test() {
    e = channel_envelope();
    w = e[0]; h = e[1];
    z_top = h / 2;
    z_bot_drop = -h / 2 - hook_extra_drop;

    ow = w + wall_side * 4;
    oh = (z_top - z_bot_drop) + wall_top_bottom * 2;

    difference() {
        translate([-ow / 2, 0, z_bot_drop - wall_top_bottom])
            cube([ow, hook_test_depth, oh]);
        translate([-w / 2, -0.5, z_bot_drop])
            cube([w, hook_test_depth + 1, z_top - z_bot_drop]);
    }
    translate([-hook_width / 2, hook_y, z_top - hook_protrusion])
        cube([hook_width, hook_engage_len, hook_protrusion]);
}

// ---------------------------------------------------------------------------
// Render selection
// ---------------------------------------------------------------------------

mode = "hook_test";
// "tin" | "frame_test" | "bay_test" | "latch_groove_test"
// "bay_array_test" | "bay_segments_preview" | "bay_segment_print" (old horizontal array — superseded)
// "bay_with_latch" | "latch_slider_print" | "latch_cover_print" (v1 heart-cam integration — on hold)
// "bay_column_test" (N-bay vertical stack preview, per column_count)
// "hook_test" (v2 mechanism: hand-test the hook-catch geometry with the real tin)

print_segment_index = 0; // which segment to render for "bay_segment_print"

if (mode == "tin")
    tin();
else if (mode == "frame_test")
    fit_test_frame();
else if (mode == "bay_test")
    bay_housing();
else if (mode == "latch_groove_test")
    latch_groove_test();
else if (mode == "bay_array_test")
    bay_array(bay_count);
else if (mode == "bay_segments_preview")
    bay_segments_preview(bay_count);
else if (mode == "bay_segment_print") {
    seg_sizes = bay_segment_sizes(bay_count);
    bay_array(
        seg_sizes[print_segment_index],
        print_segment_index > 0,
        print_segment_index < len(seg_sizes) - 1
    );
}
else if (mode == "bay_with_latch")
    bay_with_latch();
else if (mode == "latch_slider_print")
    latch_slider();
else if (mode == "latch_cover_print")
    latch_cover();
else if (mode == "bay_column_test")
    bay_column(column_count);
else if (mode == "hook_test")
    hook_test();
