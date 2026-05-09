# Open Silicon Lab

A personal portfolio repository for analog and digital IC design projects developed using open-source EDA tools.

This repository contains schematics, Magic layouts, SPICE simulations, Tcl automation scripts, RTL designs, verification testbenches, synthesis scripts, physical design experiments, and documentation created as part of my learning and project work in custom IC design, ASIC design, and open-source silicon flows.

The goal of this repository is to document a practical end-to-end IC design journey — from transistor-level circuits to digital RTL blocks and physical layout generation.

---

## Repository Focus

This repository is focused on two major areas:

1. **Analog IC Design**
   - CMOS inverter design
   - CMOS logic gates
   - Current mirrors
   - Differential pairs
   - Operational transconductance amplifiers
   - Low-dropout regulator building blocks
   - Transistor-level simulation and layout

2. **Digital IC Design**
   - Standard cell design
   - Combinational logic blocks
   - Sequential logic blocks
   - Verilog/SystemVerilog RTL
   - RISC-V related modules
   - Synthesis, floorplanning, placement, routing, and GDS generation

---

## Tools Used

The designs in this repository are created using open-source IC design tools, including:

| Tool | Purpose |
|---|---|
| Magic VLSI | Layout design, DRC, extraction |
| Xschem | Schematic capture |
| ngspice | Circuit simulation |
| KLayout | GDS viewing and layout inspection |
| Netgen | LVS verification |
| Yosys | RTL synthesis |
| Verilator | RTL linting and simulation |
| OpenROAD | Digital physical design flow |
| OpenLane / LibreLane | RTL-to-GDS automation |
| Python | Data analysis, automation, plotting |
| Tcl | Layout and EDA flow scripting |
| SKY130 PDK | Open-source process design kit |

---

## Repository Structure

```text
open-silicon-lab/
│
├── analog-designs/       # Transistor-level analog and mixed-signal circuits
├── digital-designs/      # RTL, standard cells, and digital IC blocks
├── schematics/           # Xschem schematics and exported netlists
├── layouts/              # Magic layouts, GDS, LEF, and screenshots
├── simulations/          # SPICE simulations, testbenches, and results
├── rtl/                  # Verilog/SystemVerilog source files
├── scripts/              # Tcl, Python, Yosys, OpenROAD, and flow scripts
├── docs/                 # Design notes, reports, and setup documentation
└── images/               # Figures, diagrams, plots, and layout screenshots
