# CMOS AND2 extraction/export script

load and2_cmos

extract all

ext2spice lvs
ext2spice cthresh 0
ext2spice rthresh 0
ext2spice

gds write and2_cmos.gds
catch {lef write and2_cmos.lef}

file mkdir layout
file mkdir layout/gds
file mkdir layout/lef
file mkdir simulation
file mkdir reports

exec cp and2_cmos.gds layout/gds/and2_cmos.gds
exec cp and2_cmos.lef layout/lef/and2_cmos.lef
exec cp and2_cmos.spice simulation/and2_cmos_extracted.spice

set fh [open "reports/extraction_summary.txt" w]
puts $fh "Cell: and2_cmos"
puts $fh "Extraction: completed"
puts $fh "Generated:"
puts $fh "  layout/gds/and2_cmos.gds"
puts $fh "  layout/lef/and2_cmos.lef"
puts $fh "  simulation/and2_cmos_extracted.spice"
close $fh

puts "Extraction/export complete."
