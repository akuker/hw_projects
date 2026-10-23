#!/usr/bin/env bash
# Usage: ./render.sh [scad_file] [mode]   (defaults: moxey_column.scad, column)
# Writes PNGs (iso/front/top/side/back) and an STL into ./renders/
set -euo pipefail
cd "$(dirname "$0")"

SCAD="${1:-moxey_column.scad}"
MODE="${2:-column}"
OSC="${OPENSCAD:-/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD}"
OUT="renders"
mkdir -p "$OUT"
BASE="$OUT/${MODE}"

COMMON=(--imgsize=1000,800 --render --projection=o --autocenter --viewall --colorscheme=Tomorrow -D "mode=\"$MODE\"")

# name:rotx,roty,rotz
VIEWS=(
  "iso:55,0,25"          # front-left-above
  "iso_back:55,0,205"    # from the wall side
  "front:90,0,0"
  "top:0,0,0"
  "side:90,0,90"
)

for v in "${VIEWS[@]}"; do
  name="${v%%:*}"; rot="${v#*:}"
  "$OSC" "$SCAD" -o "${BASE}_${name}.png" --camera="0,0,0,${rot},500" "${COMMON[@]}" 2>&1 \
    | grep -Ei "warn|error|assert" || true
done

"$OSC" "$SCAD" -o "${BASE}.stl" -D "mode=\"$MODE\"" 2>&1 | grep -Ei "warn|error|assert|simple|volumes" || true
echo "wrote ${BASE}_*.png and ${BASE}.stl"
