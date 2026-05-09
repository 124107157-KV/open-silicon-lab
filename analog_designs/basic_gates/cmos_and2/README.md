# CMOS AND2 Gate using Magic and SKY130

## Objective

Design a transistor-level CMOS AND2 gate using Magic Tcl commands and the SkyWater SKY130 PDK.

The AND2 gate is implemented as a NAND2 gate followed by a CMOS inverter.

```text
YB = NAND(A, B)
Y  = NOT(YB)
Y  = A AND B
