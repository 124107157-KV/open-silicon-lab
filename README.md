# Open Silicon Lab

This repository contains my analog and digital design projects developed using open-source EDA tools. It includes transistor-level schematics, Magic layouts, SPICE simulations, TCL automation scripts, digital RTL designs, synthesis/place-and-route experiments, and generated layout views using open-source IC design flows.

The purpose of this repository is to document my hands-on work in custom IC design, analog layout, digital implementation, and open-source silicon design methodologies using tools such as Magic, Xschem, ngspice, KLayout, Yosys, OpenROAD, OpenLane/LibreLane, and the SkyWater SKY130 PDK.

---

## Repository Goals

- Build a structured portfolio of analog and digital IC design projects.
- Document complete design flows from schematic to simulation and layout.
- Store Magic layout files, TCL scripts, SPICE netlists, and generated views.
- Practice open-source ASIC design using Sky130 and other supported PDKs.
- Develop reusable scripts and templates for IC design automation.
- Maintain clean documentation for each design, including methodology, results, and verification.

---

## Toolchain

The projects in this repository may use the following open-source IC design tools:

| Tool | Purpose |
|---|---|
| Magic | Custom layout, extraction, DRC, GDS generation |
| Xschem | Schematic capture |
| ngspice | Circuit simulation |
| KLayout | GDS viewing and layout inspection |
| Netgen | LVS verification |
| Yosys | RTL synthesis |
| OpenROAD | Floorplanning, placement, CTS, routing, STA |
| OpenLane / LibreLane | RTL-to-GDS digital ASIC flow |
| Verilator | RTL linting and simulation |
| SkyWater SKY130 PDK | Open-source process design kit |
| IIC-OSIC-TOOLS | Docker-based open-source analog/mixed-signal design environment |

---

## Repository Structure

```text
open-source-ic-design-lab/
│
├── analog_designs/
│   ├── basic_gates/
│   │   ├── cmos_inverter/
│   │   ├── cmos_nand2/
│   │   └── cmos_and2/
│   │
│   ├── amplifiers/
│   │   ├── common_source_amplifier/
│   │   ├── differential_pair/
│   │   └── operational_amplifiers/
│   │
│   ├── current_mirrors/
│   │   ├── basic_current_mirror/
│   │   └── cascode_current_mirror/
│   │
│   ├── references/
│   │   └── bandgap_reference/
│   │
│   └── regulators/
│       └── cmos_ldo/
│
├── digital_designs/
│   ├── combinational/
│   │   ├── adders/
│   │   ├── muxes/
│   │   └── encoders_decoders/
│   │
│   ├── sequential/
│   │   ├── d_flip_flop/
│   │   ├── counters/
│   │   └── shift_registers/
│   │
│   ├── rtl_blocks/
│   │   ├── alu/
│   │   ├── fifo/
│   │   └── uart/
│   │
│   └── asic_flow/
│       ├── openlane/
│       └── librelane/
│
├── mixed_signal_designs/
│   ├── adc_blocks/
│   ├── dac_blocks/
│   ├── sample_and_hold/
│   └── pll_blocks/
│
├── scripts/
│   ├── magic_tcl/
│   ├── xschem_scripts/
│   ├── ngspice_scripts/
│   ├── openroad_scripts/
│   └── utility_scripts/
│
├── pdk_setup/
│   ├── sky130_notes.md
│   └── tool_installation_notes.md
│
├── docs/
│   ├── design_notes/
│   ├── simulation_results/
│   ├── layout_screenshots/
│   └── flow_reports/
│
├── templates/
│   ├── analog_project_template/
│   ├── digital_project_template/
│   └── readme_template.md
│
├── images/
│   ├── schematics/
│   ├── layouts/
│   ├── waveforms/
│   └── gds_views/
│
├── .gitignore
├── LICENSE
└── README.md

---

## Suggested `.gitignore`

Also add this to keep the repo clean:

```gitignore
# OS files
.DS_Store
Thumbs.db

# Editor files
.vscode/
.idea/
*.swp
*.swo

# Magic backup/temp files
*.ext~
*.mag~
*.spice~
*.backup
*.bak

# ngspice output
*.raw
*.log
*.out
*.data

# Xschem temporary files
*.sch~
*.sym~
xschem.log

# OpenLane / LibreLane run directories
runs/
*/runs/
logs/
reports/
tmp/

# Large generated files
*.odb
*.spef
*.sdf
*.rpt
*.db

# Python cache
__pycache__/
*.pyc

# Docker / environment
.env
