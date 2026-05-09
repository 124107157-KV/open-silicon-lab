#!/usr/bin/env bash
set -e

CELL_NAME="and2_cmos"
TECH_FILE="$HOME/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$PROJECT_DIR"

magic -dnull -noconsole -T "$TECH_FILE" <<EOF
source scripts/01_generate_layout.tcl
quit -noprompt
EOF

mkdir -p layout/gds layout/lef simulation reports

cp ${CELL_NAME}.mag layout/ || true
cp ${CELL_NAME}.gds layout/gds/ || true
cp ${CELL_NAME}.lef layout/lef/ || true
cp ${CELL_NAME}.spice simulation/${CELL_NAME}_extracted.spice || true
cp ${CELL_NAME}.ext simulation/ || true

echo "CMOS AND2 Magic batch flow completed."
