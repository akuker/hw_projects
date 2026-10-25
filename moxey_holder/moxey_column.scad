// Mr Moxey's mint tin holder — wall-mount, expandable column (passive shelf)
// Units: mm. Printer: FDM, PLA. Print upright (Z up, as mounted).
//
// Coordinates: X = width (centered), Y = depth (0 = open front, +Y toward wall),
// Z = up (0 = bottom of column). Tins slide in along +Y.
//
// One column = N bays stacked in Z. Columns join side by side: two dovetails on the
// +X face (tongues) mate the -X face (slots) of the next column. They run along Y
// and flare in Z, so the columns slide together front-to-back, and a separate
// locking pin dropped in from the top (mode "pin_print", prints lying flat) through a vertical bore
// that straddles the seam stops them sliding apart. Print on its BACK (mode "print"):
// Y becomes vertical, so the bays, dovetails and windows need no support.
// Column pitch = 16" / 5 so every 5th column lands on a stud.

// ---------------------------------------------------------------------------
// Configuration
// ---------------------------------------------------------------------------

bay_count = 4;                 // 3 was the test print; 4 / 6 / 8 / 10 ...

// Tin geometry (measured, carried over from moxey_holder.scad)
tin_lid_width    = 62.25; // measured 63, but test print 1 channel was ~0.75mm too wide: trim 0.75
tin_lid_length   = 100;
tin_total_height = 20;
tin_seam_z       = 10;
hinge_protrusion = 0.75;

// Fit clearances (from print tests v1/v2)
width_clearance     = 0.6;
height_clearance    = 2.0;   // test print 1 (1.0) was too short: +1mm
hinge_relief_margin = 0.5;
hinge_notch_drop    = 1.0;

// Structure
wall_floor     = 3;            // floor/ceiling between bays
insertion_extra = 5;           // slack behind the tin before the backstop
back_plate     = 8;            // keyhole pockets (2 lip + 4 head) + 2 skin toward the tin
scoop_r        = 14;           // finger scoop through the floors at the front (0 = off)

// Wall / stud layout
stud_spacing   = 406.4;        // 16" on center
columns_per_stud = 5;
column_pitch   = stud_spacing / columns_per_stud;   // 81.28

// Keyhole (#8 wood screw)
kh_head_d   = 9.6;            // #8 pan/flat head is ~8.4; +1.2 for print shrink
kh_slot_w   = 4.8;             // #8 shank is 4.2
kh_slot_len = 10;              // how far the column slides down to lock
kh_lip      = 2;               // material trapped between wall and screw head
kh_head_depth = 4;
kh_z_margin = 12;              // lowest/highest screw center from column end

// Dovetails (two small ones; run the full depth, slide on along Y)
dt_depth  = 3;                 // tongue protrusion
dt_tip_z  = 10;                // tongue height (Z) at the tip
dt_angle  = 15;                // flank angle
dt_clear  = 0.30;              // per-side slot oversize (FDM: holes print small, tongues big)
// One dovetail on every floor between bays (bay_count - 1 of them).

// Lightening cutouts (through slots, rounded ends)
win_h        = 6;              // side-wall window height (Z)
win_margin_y = 16;             // window inset from front/back
back_slot_w  = 20;             // back-plate slots, one each side of the keyhole rib
back_slot_h  = 11;
back_slot_x  = 18;             // slot centre offset from column centre

// Diamond lattice through every floor (cut along Z). Whole diamonds only, so no
// sliver edges; ribs run at 45 degrees.
lat_hole  = 9;                 // diamond hole side length
lat_rib   = 2.4;               // rib width between holes
lat_x_max = 29.3;              // lattice stays inside this half-width
lat_y0    = 17;                // keep the front lip (and scoop) solid
lat_y1    = 102;               // ... and the backstop

// Locking pin: a vertical rod dropped in from the top through a bore that
// straddles the seam — half the bore is in each column's side wall. It blocks the
// only direction the dovetails leave free (sliding front-to-back). The pin is a
// separate printed part, a rounded-square rod with a front-to-back head bar. It
// prints LYING FLAT on the bed (mode "pin_print"): square section = flat bottom,
// and the head only extends in Y so its bottom is level with the rod's.
pin_y        = 12;             // front of the column, clear of the side windows
pin_bore_d   = 5.0;            // square bore side (prints ~0.2 small)
pin_d        = 4.4;            // rod side, 0.6 loose in the bore
pin_corner_r = 0.6;
pin_head_y   = 8;              // head length front-to-back (X width = pin_d)
pin_head_h   = 1.6;
pin_recess_y = 8.6;            // head pocket in the TOP face, straddling the seam
pin_recess_h = pin_head_h + 0.1; // head sits 0.1 below flush; 3 - 1.7 = 1.3mm skin left
pin_end_gap  = 0.4;            // rod stops this far above the column bottom
// The head goes on top: gravity keeps the pin seated. (A bottom head would let it drop out.)

$fn = 48;

// ---------------------------------------------------------------------------
// Derived
// ---------------------------------------------------------------------------

chan_w   = tin_lid_width + width_clearance;
chan_h   = tin_total_height + height_clearance;
relief_w = hinge_protrusion + hinge_relief_margin;
band_h   = (tin_total_height - tin_seam_z) + height_clearance / 2 + hinge_notch_drop;
unit_w   = chan_w + 2 * relief_w;
chan_d   = tin_lid_length + insertion_extra;
depth    = chan_d + back_plate;
col_h    = bay_count * chan_h + (bay_count + 1) * wall_floor;

assert(bay_count >= 2, "bay_count must be >= 2");
assert(pin_bore_d - pin_d >= 0.4, "pin too tight in its bore");
assert((column_pitch - unit_w) / 2 >= dt_depth + dt_clear + 1.5,
       "side wall too thin for dovetail");

// ---------------------------------------------------------------------------
// Parts
// ---------------------------------------------------------------------------

module bay_cut(z0) {
    translate([-chan_w / 2, -0.5, z0]) cube([chan_w, chan_d + 0.5, chan_h]);
    for (s = [-1, 1])
        translate([s > 0 ? chan_w / 2 - 0.01 : -chan_w / 2 - relief_w + 0.01,
                   -0.5, z0 + chan_h - band_h])
            cube([relief_w, chan_d + 0.5, band_h]);
}

// Dovetail: slides along Y. The cross-section lies in the XZ plane — narrow at
// the wall face, flaring in Z toward the tip — extruded along Y (vertical when
// printed on the back).
function dt_neck_z() = dt_tip_z - 2 * dt_depth * tan(dt_angle);
function floor_z(k) = wall_floor / 2 + k * (chan_h + wall_floor);
function dt_zs() = [for (k = [1 : bay_count - 1]) floor_z(k)];

module dovetail_profile(zc, grow = 0) {
    n = dt_neck_z() / 2 + grow;
    t = dt_tip_z / 2 + grow;
    translate([0, zc])
        polygon([[-1, -n], [0, -n], [dt_depth + grow, -t],
                 [dt_depth + grow, t], [0, n], [-1, n]]);
}

// 2D (x, z) profile extruded along +Y
module along_y(len) { rotate([-90, 0, 0]) mirror([0, 1, 0]) linear_extrude(height = len) children(); }

module tongues() {
    translate([column_pitch / 2, 0, 0])
        along_y(depth) for (z = dt_zs()) dovetail_profile(z);
}

module slots() {
    translate([-column_pitch / 2, -0.5, 0])   // +x runs INTO the wall from the -X face
        along_y(depth + 1) for (z = dt_zs()) dovetail_profile(z, dt_clear);
}

module rrect2d(w, h, r = pin_corner_r) {
    hull() for (sx = [-1, 1], sy = [-1, 1])
        translate([sx * (w / 2 - r), sy * (h / 2 - r)]) circle(r = r, $fn = 24);
}

// Pin bore: full height, centred on the seam. Each column carries the half in
// its +X face and the half in its -X face, so one bore per joint.
module pin_bores() {
    for (sx = [-1, 1]) translate([sx * column_pitch / 2, pin_y, 0]) {
        translate([0, 0, -0.5]) linear_extrude(height = col_h + 1) rrect2d(pin_bore_d, pin_bore_d);
        // head recess, top face only
        translate([0, 0, col_h - pin_recess_h])
            linear_extrude(height = pin_recess_h + 0.5) rrect2d(pin_bore_d, pin_recess_y);
    }
}

// Rod length: from the recess floor down to pin_end_gap above the column bottom.
function pin_len() = col_h - pin_recess_h - pin_end_gap;

// The pin in its own frame: rod along +Z from z=0, head bar on top.
module pin_local() {
    L = pin_len();
    translate([0, 0, 0.6]) linear_extrude(height = L - 0.6 + 0.01) rrect2d(pin_d, pin_d);
    // lead-in taper on the tip
    hull() {
        linear_extrude(height = 0.01) rrect2d(pin_d - 1.2, pin_d - 1.2);
        translate([0, 0, 0.6]) linear_extrude(height = 0.01) rrect2d(pin_d, pin_d);
    }
    translate([0, 0, L]) linear_extrude(height = pin_head_h) rrect2d(pin_d, pin_head_y);
}

// PRINT orientation: lying on a flat face of the rod, axis along X.
module pin_print() {
    translate([0, 0, pin_d / 2]) rotate([0, 90, 0]) pin_local();
}

// Pin installed in the seam between this column and its +X neighbour.
module pin_installed() {
    translate([column_pitch / 2, pin_y, col_h - pin_recess_h - pin_len()]) pin_local();
}

// Keyhole pocket cut into the BACK face (y = depth). Head enters the big
// circle, column slides down so the shank rides up the narrow slot.
module keyhole(z) {
    translate([0, depth, z]) rotate([90, 0, 0]) {
        // entry hole + shank slot, through the lip
        translate([0, 0, -0.1]) linear_extrude(height = kh_lip + 0.1) keyhole_lip_2d();
        // wider head pocket behind the lip
        translate([0, 0, kh_lip]) linear_extrude(height = kh_head_depth) keyhole_head_2d();
    }
}
module keyhole_lip_2d() {
    circle(d = kh_head_d);
    hull() { circle(d = kh_slot_w); translate([0, kh_slot_len]) circle(d = kh_slot_w); }
}
module keyhole_head_2d() {
    hull() { circle(d = kh_head_d); translate([0, kh_slot_len]) circle(d = kh_head_d); }
}

module stadium(w, h) {
    hull() for (sx = [-1, 1]) translate([sx * (w - h) / 2, 0]) circle(d = h);
}

// One window per bay through both side walls, starting past the pin bore (the
// bore's edge is at pin_y + pin_bore_d/2; win_pin_rib is the wall left beside it).
// Z range sits above the floor dovetails.
win_pin_rib = 6;
module side_windows() {
    y0 = pin_y + pin_bore_d / 2 + win_pin_rib;
    y1 = depth - win_margin_y;
    for (i = [0 : bay_count - 1])
        translate([-column_pitch / 2 - 0.1, (y0 + y1) / 2,
                   wall_floor + i * (chan_h + wall_floor) + chan_h / 2 + 3])
            rotate([90, 0, 90])
                linear_extrude(height = column_pitch + 0.2) stadium(y1 - y0, win_h);
}

// Two stadium slots per bay through the back plate, leaving the centre rib solid
// for the keyholes.
module back_slots() {
    for (i = [0 : bay_count - 1], sx = [-1, 1])
        translate([sx * back_slot_x, depth - back_plate - 0.5,
                   wall_floor + i * (chan_h + wall_floor) + chan_h / 2])
            rotate([-90, 0, 0])
                linear_extrude(height = back_plate + 1) stadium(back_slot_w, back_slot_h);
}

// Whole diamonds on a 45-degree grid, 2D in (x, y).
module diamond_lattice_2d() {
    g = lat_hole + lat_rib;
    h = lat_hole * sqrt(2) / 2;           // half-diagonal
    yc = (lat_y0 + lat_y1) / 2;
    for (i = [-12 : 12], j = [-12 : 12]) {
        cx = (i - j) * g / sqrt(2);
        cy = yc + (i + j) * g / sqrt(2);
        if (abs(cx) + h <= lat_x_max && cy - h >= lat_y0 && cy + h <= lat_y1)
            translate([cx, cy]) rotate(45) square(lat_hole, center = true);
    }
}

module floor_lattice() {
    for (k = [0 : bay_count])
        translate([0, 0, k * (chan_h + wall_floor) - 0.01])
            linear_extrude(height = wall_floor + 0.02) diamond_lattice_2d();
}

// Main block. The edges of the BACK face (the one on the print bed) get a small
// chamfer so first-layer squish ("elephant foot") can't make neighbouring
// columns stand off from each other.
back_chamfer = 0.6;
module body() {
    c = back_chamfer;
    hull() {
        translate([-column_pitch / 2, 0, 0]) cube([column_pitch, depth - c, col_h]);
        translate([-column_pitch / 2 + c, 0, c]) cube([column_pitch - 2 * c, depth, col_h - 2 * c]);
    }
}

module column() {
    difference() {
        union() {
            body();
            tongues();
        }
        for (i = [0 : bay_count - 1])
            bay_cut(wall_floor + i * (chan_h + wall_floor));
        slots();
        side_windows();
        floor_lattice();
        back_slots();
        pin_bores();
        keyhole(kh_z_margin);
        keyhole(col_h - kh_z_margin - kh_slot_len);
        if (scoop_r > 0)
            translate([0, 0, -0.5]) cylinder(r = scoop_r, h = col_h + 1, $fn = 64);
    }
}

// ---------------------------------------------------------------------------
// Preview helpers
// ---------------------------------------------------------------------------

// Worst-case tin for fit checks: square lid/base corners, hinge knuckles on
// BOTH sides (the real tin has them on one side, either orientation fits).
module tin_solid() {
    translate([-tin_lid_width / 2, 0, tin_seam_z])
        cube([tin_lid_width, tin_lid_length, tin_total_height - tin_seam_z]);
    translate([-58 / 2, 2, 0]) cube([58, 96, tin_seam_z]);
    for (sx = [-1, 1], yc = [12, tin_lid_length - 12])
        translate([sx * tin_lid_width / 2 - (sx > 0 ? 0 : hinge_protrusion), yc - 4, tin_seam_z])
            cube([hinge_protrusion, 8, tin_total_height - tin_seam_z]);
}

// Every bay, tin pushed fully home (y = insertion_extra) and at the opening,
// resting on the floor and pressed up against the ceiling.
module all_tins(y, zshift) {
    for (i = [0 : bay_count - 1])
        translate([0, y, wall_floor + i * (chan_h + wall_floor) + zshift]) tin_solid();
}

module array_preview(n = 3) {
    for (i = [0 : n - 1])
        translate([i * column_pitch, 0, 0]) column();
}

// ---------------------------------------------------------------------------
// Render selection
// ---------------------------------------------------------------------------

mode = "column";
// "print" = column rotated onto its back (Y up) for slicing
// "column" | "array" | "with_tins" | "section_z" | "section_pin" | "pin_print" | "check_pin" | "section_x" | "check_tins" | "check_joint"

if (mode == "column") column();
else if (mode == "print") translate([0, 0, depth]) rotate([-90, 0, 0]) column();
else if (mode == "array") array_preview(3);
else if (mode == "with_tins") {
    column();
    color("silver")
        for (i = [0 : bay_count - 1])
            translate([0, 0, wall_floor + i * (chan_h + wall_floor) + height_clearance / 2])
                tin_solid();
}
else if (mode == "section_z")
    difference() { array_preview(2);
        translate([-200, -50, wall_floor + chan_h / 2]) cube([600, 400, 400]); }
else if (mode == "check_tins") {   // should be EMPTY: tins vs column
    for (y = [0, insertion_extra], z = [0, height_clearance])
        intersection() { column(); all_tins(y, z); }
}
else if (mode == "check_joint")    // should be EMPTY: neighbouring columns vs each other
    intersection() { column(); translate([column_pitch, 0, 0]) column(); }
else if (mode == "pin_print") pin_print();
else if (mode == "check_pin") {    // should be EMPTY: installed pin vs both columns
    intersection() { union() { column(); translate([column_pitch, 0, 0]) column(); }
                     pin_installed(); }
}
else if (mode == "section_pin")    // cut across the pin, pin installed
    difference() { union() { array_preview(2); pin_installed(); }
        translate([-200, pin_y, -50]) cube([600, 400, 600]); }
else if (mode == "section_x")
    difference() { column();
        translate([0, -50, -50]) cube([200, 400, 600]); }
