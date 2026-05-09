# ============================================================
# CMOS AND2 DRC Check Script
# Cell: and2_cmos
# Tool: Magic + SKY130
# ============================================================

# Make sure Magic can find the saved .mag file inside layout/
addpath layout

load and2_cmos

# Run DRC
drc euclidean on
drc check
drc count

# Write a simple human-readable report.
# Note: Magic prints the exact DRC count to console/log.
file mkdir reports

set fh [open "reports/drc_summary.txt" w]
puts $fh "Cell: and2_cmos"
puts $fh "Tool: Magic SKY130"
puts $fh "Check: DRC"
puts $fh ""
puts $fh "Status: DRC check executed"
puts $fh ""
puts $fh "Authoritative DRC result is printed by Magic using:"
puts $fh "  drc count"
puts $fh ""
puts $fh "Expected clean output:"
puts $fh "  Total DRC errors found: 0"
puts $fh ""
puts $fh "If errors are reported, inspect manually in Magic GUI using:"
puts $fh "  drc find"
puts $fh "  drc why"
close $fh

puts "DRC report written to reports/drc_summary.txt"
