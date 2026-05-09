#!/usr/bin/env bash
set -e

TECH_FILE="$HOME/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.tech"
LOG_FILE="reports/drc_magic_output.log"

mkdir -p reports

magic -dnull -noconsole -T "$TECH_FILE" <<'MAGIC_EOF' | tee "$LOG_FILE"
source scripts/02_check_drc.tcl
quit -noprompt
MAGIC_EOF

echo ""
echo "----------------------------------------"
echo "Parsed DRC result:"
echo "----------------------------------------"

if grep -q "Total DRC errors found: 0" "$LOG_FILE"; then
    echo "DRC CLEAN: 0 errors"

    cat > reports/drc_summary.txt <<REPORT_EOF
Cell: and2_cmos
Tool: Magic SKY130
Check: DRC

Status: DRC CLEAN
Total DRC errors found: 0

Log file:
reports/drc_magic_output.log
REPORT_EOF

else
    echo "DRC may have errors. Check reports/drc_magic_output.log"

    cat > reports/drc_summary.txt <<REPORT_EOF
Cell: and2_cmos
Tool: Magic SKY130
Check: DRC

Status: DRC NEEDS REVIEW

Magic did not report:
Total DRC errors found: 0

Check:
reports/drc_magic_output.log

Manual debug commands:
drc find
drc why
REPORT_EOF

    exit 1
fi
