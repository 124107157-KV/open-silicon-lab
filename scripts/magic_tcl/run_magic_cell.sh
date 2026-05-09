#!/usr/bin/env bash
set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 path/to/script.tcl"
    exit 1
fi

TCL_SCRIPT="$1"
TECH_FILE="$HOME/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech"

magic -dnull -noconsole -T "$TECH_FILE" <<EOF
source $TCL_SCRIPT
quit -noprompt
EOF
