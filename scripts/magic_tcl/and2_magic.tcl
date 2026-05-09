# ============================================================
# Simple CMOS AND2 Gate Layout using Magic + Sky130
# Logic: AND = NAND2 + INV
# Cell: and2_cmos
# ============================================================

load and2_cmos

grid 0.05um 0.05um
snap internal

# Clear old layout
box values -5um -5um 35um 25um
erase $

# ------------------------------------------------------------
# Helper procedures
# ------------------------------------------------------------

proc rect {layer x1 y1 x2 y2} {
    box values ${x1}um ${y1}um ${x2}um ${y2}um
    paint $layer
}

proc make_label {name layer x1 y1 x2 y2 index class use} {
    box values ${x1}um ${y1}um ${x2}um ${y2}um
    label $name center $layer
    port make
    port index $index
    port class $class
    port use $use
}

proc ndiff_contact {x1 y1 x2 y2} {
    rect ndc $x1 $y1 $x2 $y2
    rect li  [expr {$x1 - 0.10}] [expr {$y1 - 0.10}] [expr {$x2 + 0.10}] [expr {$y2 + 0.10}]
    rect mcon $x1 $y1 $x2 $y2
    rect m1  [expr {$x1 - 0.15}] [expr {$y1 - 0.15}] [expr {$x2 + 0.15}] [expr {$y2 + 0.15}]
}

proc pdiff_contact {x1 y1 x2 y2} {
    rect pdc $x1 $y1 $x2 $y2
    rect li  [expr {$x1 - 0.10}] [expr {$y1 - 0.10}] [expr {$x2 + 0.10}] [expr {$y2 + 0.10}]
    rect mcon $x1 $y1 $x2 $y2
    rect m1  [expr {$x1 - 0.15}] [expr {$y1 - 0.15}] [expr {$x2 + 0.15}] [expr {$y2 + 0.15}]
}

# IMPORTANT FIX:
# Add a larger poly landing pad before drawing pc.
# This fixes:
# poly overlap of poly contact < 0.05um, licon.8
proc poly_contact {x1 y1 x2 y2} {
    rect poly [expr {$x1 - 0.20}] [expr {$y1 - 0.20}] [expr {$x2 + 0.20}] [expr {$y2 + 0.20}]
    rect pc   $x1 $y1 $x2 $y2
    rect li   [expr {$x1 - 0.10}] [expr {$y1 - 0.10}] [expr {$x2 + 0.10}] [expr {$y2 + 0.10}]
    rect mcon $x1 $y1 $x2 $y2
    rect m1   [expr {$x1 - 0.15}] [expr {$y1 - 0.15}] [expr {$x2 + 0.15}] [expr {$y2 + 0.15}]
}

# ------------------------------------------------------------
# Power rails
# ------------------------------------------------------------

rect m1 0.0 0.0 26.0 1.0
rect m1 0.0 17.0 26.0 18.0

# ------------------------------------------------------------
# N-well for PMOS row
# ------------------------------------------------------------

rect nwell 0.0 10.5 26.0 19.5

# ------------------------------------------------------------
# NAND2 stage
# ------------------------------------------------------------

# PMOS row for NAND pull-up
rect pdiff 3.0 12.5 10.5 14.3

# NMOS row for NAND pull-down
rect ndiff 3.0 4.0 10.5 5.0

# NAND input A gate
rect poly 5.0 2.0 5.2 15.5

# NAND input B gate
rect poly 8.0 2.0 8.2 15.5

# ------------------------------------------------------------
# Inverter stage
# ------------------------------------------------------------

rect pdiff 13.5 12.5 18.5 14.3
rect ndiff 13.5 4.0 18.5 5.0

# Inverter input gate
rect poly 16.0 3.0 16.2 15.0

# ------------------------------------------------------------
# NAND PMOS contacts
# ------------------------------------------------------------

# PMOS source to VPWR
pdiff_contact 3.6 13.0 4.1 13.5
rect m1 3.45 13.0 4.25 17.5

# PMOS drain to NAND output YB
pdiff_contact 6.2 13.0 6.7 13.5

# Second PMOS source to VPWR
pdiff_contact 9.4 13.0 9.9 13.5
rect m1 9.25 13.0 10.05 17.5

# ------------------------------------------------------------
# NAND NMOS contacts
# ------------------------------------------------------------

# NMOS drain to NAND output YB
ndiff_contact 3.6 4.25 4.1 4.75

# NMOS source to VGND
ndiff_contact 9.4 4.25 9.9 4.75
rect m1 9.25 0.5 10.05 4.75

# ------------------------------------------------------------
# NAND output YB routing to inverter input
# ------------------------------------------------------------

rect m1 6.0 4.25 7.0 13.5
rect m1 3.6 4.25 7.0 4.95
rect m1 6.4 8.4 16.5 9.2

# Inverter input poly contact
poly_contact 15.75 8.35 16.45 9.05

# ------------------------------------------------------------
# Inverter contacts
# ------------------------------------------------------------

# Inverter PMOS source to VPWR
pdiff_contact 14.2 13.0 14.7 13.5
rect m1 14.05 13.0 14.85 17.5

# Inverter PMOS drain to output Y
pdiff_contact 17.1 13.0 17.6 13.5

# Inverter NMOS source to VGND
ndiff_contact 14.2 4.25 14.7 4.75
rect m1 14.05 0.5 14.85 4.75

# Inverter NMOS drain to output Y
ndiff_contact 17.1 4.25 17.6 4.75

# Output Y routing
rect m1 16.95 4.25 17.85 13.5
rect m1 17.3 8.4 24.5 9.3

# ------------------------------------------------------------
# Input A routing
# ------------------------------------------------------------

poly_contact 4.75 2.25 5.45 2.95
rect m1 0.8 2.2 5.6 3.05

# ------------------------------------------------------------
# Input B routing
# Keep B short/local to avoid VGND short
# ------------------------------------------------------------

poly_contact 7.75 2.25 8.45 2.95
rect m1 7.25 2.2 8.75 3.05

# ------------------------------------------------------------
# Well and substrate taps
# ------------------------------------------------------------

# N-well tap to VPWR
rect nsd 21.5 12.5 23.2 13.6
rect nsc 22.0 12.9 22.6 13.4
rect li  21.8 12.7 22.8 13.6
rect mcon 22.05 12.95 22.55 13.35
rect m1 21.65 12.6 22.95 17.5

# P-substrate tap to VGND
rect psd 21.5 4.0 23.2 5.1
rect psc 22.0 4.3 22.6 4.8
rect li  21.8 4.1 22.8 5.0
rect mcon 22.05 4.35 22.55 4.75
rect m1 21.65 0.5 22.95 5.1

# ------------------------------------------------------------
# Labels and ports
# ------------------------------------------------------------

make_label A    m1 0.8 2.2 2.4 3.05 1 input  signal
make_label B    m1 7.25 2.2 8.75 3.05 2 input signal
make_label Y    m1 22.6 8.4 24.5 9.3 3 output signal
make_label VPWR m1 0.5 17.0 3.0 18.0 4 inout power
make_label VGND m1 0.5 0.0 3.0 1.0 5 inout ground

# Optional internal node label
box values 7.0um 8.4um 8.6um 9.2um
label YB center m1

# ------------------------------------------------------------
# DRC, extraction, SPICE, GDS, LEF
# ------------------------------------------------------------

drc check
drc count

save and2_cmos
writeall

extract all

ext2spice lvs
ext2spice cthresh 0
ext2spice rthresh 0
ext2spice

gds write and2_cmos.gds
catch {lef write and2_cmos.lef}

# Final view box
box values 0um 0um 26um 18um
select top cell

puts "AND2 CMOS layout generation complete."
