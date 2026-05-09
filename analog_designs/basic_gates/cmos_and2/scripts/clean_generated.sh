#!/usr/bin/env bash
set -e

# Remove temporary root-level generated files only.
# Curated outputs inside layout/, simulation/, reports/, images/ are preserved.

rm -f and2_cmos.ext
rm -f and2_cmos.gds
rm -f and2_cmos.lef
rm -f and2_cmos.mag
rm -f and2_cmos.spice

rm -f *.sim
rm -f *.nodes
rm -f *.log
rm -f *.backup
rm -f *~
rm -f .magicrc.swp

echo "Temporary root-level Magic/generated files cleaned."
