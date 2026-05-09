# Open Silicon Lab

**Open Silicon Lab** is a portfolio repository for analog, mixed-signal, and digital IC design projects developed using open-source EDA tools.

This repository contains transistor-level schematics, Magic layouts, SPICE simulations, Tcl automation scripts, digital RTL designs, synthesis/place-and-route experiments, generated layout views, and documentation created using open-source IC design flows.

The purpose of this repository is to document my hands-on work in custom IC design, analog layout, digital implementation, ASIC flow automation, and open-source silicon design methodologies using tools such as Magic, Xschem, ngspice, KLayout, Netgen, Yosys, OpenROAD, OpenLane/LibreLane, Verilator, IIC-OSIC-TOOLS, and the SkyWater SKY130 PDK.

---

## Repository Goals

- Build a structured portfolio of analog, mixed-signal, and digital IC design projects.
- Document complete design flows from schematic design to simulation, layout, verification, and generated views.
- Store Magic layout files, Tcl scripts, SPICE netlists, GDS files, extracted views, and simulation outputs.
- Practice open-source ASIC design using SKY130 and other supported open-source PDKs.
- Develop reusable scripts and templates for IC design automation.
- Maintain clean documentation for each design, including methodology, results, verification status, and observations.
- Track learning progress in open-source analog, digital, and mixed-signal IC design.

---

## Toolchain

The projects in this repository may use the following open-source IC design tools:

| Tool | Purpose |
|---|---|
| Magic | Custom layout, extraction, DRC, and GDS generation |
| Xschem | Schematic capture and circuit design |
| ngspice | SPICE-based circuit simulation |
| KLayout | GDS viewing and layout inspection |
| Netgen | Layout-versus-schematic verification |
| Yosys | RTL synthesis |
| OpenROAD | Floorplanning, placement, CTS, routing, and STA |
| OpenLane / LibreLane | RTL-to-GDS digital ASIC flow |
| Verilator | RTL linting and simulation |
| Tcl | EDA tool scripting and automation |
| Python | Automation, plotting, data analysis, and helper scripts |
| SkyWater SKY130 PDK | Open-source process design kit |
| IIC-OSIC-TOOLS | Docker-based open-source analog/mixed-signal design environment |

---

## Repository Structure

```text
open-silicon-lab/
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
```

---

## Design Categories

### Analog IC Design

This section contains transistor-level analog and custom CMOS layout projects.

Example projects include:

- CMOS inverter
- CMOS NAND gate
- CMOS AND gate
- Common-source amplifier
- Differential pair
- Current mirrors
- Cascode current mirrors
- Operational amplifiers
- Bandgap reference blocks
- CMOS LDO regulator blocks

Each analog project may include:

- Xschem schematic files
- SPICE netlists
- ngspice simulation files
- Magic layout files
- Extracted netlists
- DRC reports
- LVS reports
- Layout screenshots
- Simulation plots
- Design notes

---

### Digital IC Design

This section contains RTL design, standard-cell-level experiments, and digital ASIC implementation flows.

Example projects include:

- Basic combinational logic
- Adders
- Multiplexers
- Encoders and decoders
- D flip-flops
- Counters
- Shift registers
- ALU blocks
- FIFO designs
- UART modules
- RTL-to-GDS flow experiments
- OpenLane/LibreLane-based digital design projects

Each digital project may include:

- Verilog/SystemVerilog RTL
- Testbenches
- Verilator simulation files
- Yosys synthesis scripts
- OpenROAD scripts
- OpenLane/LibreLane configuration files
- Timing reports
- Area reports
- Power reports
- GDS output
- Documentation

---

### Mixed-Signal IC Design

This section is intended for projects that combine analog and digital design concepts.

Example projects include:

- ADC building blocks
- DAC building blocks
- Sample-and-hold circuits
- PLL blocks
- Comparators
- Clock generation circuits
- Mixed-signal interface circuits

Each mixed-signal project may include schematic design, simulation results, layout files, verification reports, and design notes.

---

## Typical Analog Design Flow

```text
Specification
     ↓
Schematic Design
     ↓
Pre-Layout SPICE Simulation
     ↓
Custom Layout in Magic
     ↓
Design Rule Check
     ↓
Parasitic Extraction
     ↓
Layout-versus-Schematic Check
     ↓
Post-Layout Simulation
     ↓
Results and Documentation
```

---

## Typical Digital ASIC Design Flow

```text
RTL Design
     ↓
RTL Linting and Simulation
     ↓
Logic Synthesis
     ↓
Floorplanning
     ↓
Placement
     ↓
Clock Tree Synthesis
     ↓
Routing
     ↓
Static Timing Analysis
     ↓
Power and Area Reports
     ↓
GDS Generation
     ↓
Documentation
```

---

## Project Folder Template

Each design project should follow a consistent structure where possible.

```text
project_name/
│
├── README.md
├── schematic/
├── layout/
├── simulation/
├── scripts/
├── results/
├── reports/
└── images/
```

Recommended contents:

| Folder | Contents |
|---|---|
| `schematic/` | Xschem files, symbols, and exported netlists |
| `layout/` | Magic `.mag` files, extracted files, LEF/GDS outputs |
| `simulation/` | SPICE testbenches, simulation decks, waveform data |
| `scripts/` | Tcl, Python, shell, Yosys, or OpenROAD scripts |
| `results/` | Simulation plots, measured values, and generated outputs |
| `reports/` | DRC, LVS, timing, area, and power reports |
| `images/` | Schematics, layouts, plots, and screenshots |

---

## Documentation Standard

Each project `README.md` should include:

- Project title
- Objective
- Design specifications
- Tools used
- Circuit or architecture explanation
- Schematic screenshot
- Layout screenshot
- Simulation setup
- Simulation results
- DRC status
- LVS status
- Key observations
- Known issues
- Future improvements

---

## Current Project Status

| Area | Status |
|---|---|
| Repository structure | In progress |
| Tool setup documentation | In progress |
| Basic analog gates | In progress |
| Magic layout experiments | In progress |
| SPICE simulation setup | In progress |
| Digital RTL blocks | Planned |
| OpenLane/LibreLane flow projects | Planned |
| Mixed-signal blocks | Planned |
| Full DRC/LVS verified layouts | In progress |

---

## Example Projects to Add

### Analog Projects

- CMOS inverter
- CMOS NAND2 gate
- CMOS AND2 gate
- CMOS NOR2 gate
- Common-source amplifier
- Differential pair
- Basic current mirror
- Cascode current mirror
- Two-stage operational amplifier
- Bandgap reference building block
- CMOS LDO regulator block

### Digital Projects

- Half adder
- Full adder
- Ripple carry adder
- Multiplexer
- Decoder
- Encoder
- D flip-flop
- Counter
- Shift register
- ALU
- FIFO
- UART transmitter and receiver
- Simple RISC-V related blocks
- RTL-to-GDS flow examples

### Mixed-Signal Projects

- Comparator
- Sample-and-hold circuit
- DAC building block
- ADC building block
- PLL building block
- Clock divider
- Analog front-end interface block

---

## Notes on Generated Files

This repository is intended to store meaningful source files, scripts, design documentation, and selected results.

Large temporary build outputs, cache files, tool-generated intermediate files, and unnecessary logs should not be committed unless they are useful for documenting the design process.

Recommended files to commit:

- Source schematics
- Layout source files
- RTL source files
- Testbenches
- Important scripts
- Final reports
- Selected screenshots
- Final GDS/LEF files when useful
- DRC/LVS/timing summary reports
- Design notes

Files usually not recommended for commit:

- Temporary logs
- Tool cache directories
- Large intermediate run folders
- Raw waveform dumps unless required
- Repeated generated files
- Local environment files

---

## Suggested `.gitignore`

A separate `.gitignore` file should be added to the repository with entries similar to the following:

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
*~
magic.log

# Magic extraction/generated files
*.ext
*.sim
*.nodes

# ngspice output
*.raw
*.log
*.out
*.data

# Xschem temporary files
*.sch~
*.sym~
xschem.log

# KLayout files
*.lyrdb
*.lyp~

# OpenLane / LibreLane / OpenROAD run directories
runs/
*/runs/
logs/
reports/
tmp/
objects/
results/

# Large generated digital flow files
*.odb
*.spef
*.sdf
*.rpt
*.db

# Verilator output
obj_dir/
*.vcd
*.fst

# Python cache/environment
__pycache__/
*.pyc
.venv/
venv/

# Docker / local environment
.env

# Compressed archives
*.zip
*.tar.gz
*.7z
```

---

## Repository Naming

Recommended repository name:

```text
open-silicon-lab
```

Alternative names:

```text
open-source-ic-design-lab
custom-ic-design-lab
sky130-design-lab
analog-digital-ic-lab
open-vlsi-lab
silicon-design-portfolio
```

---

## License

This repository is intended for educational, learning, and portfolio purposes.

Depending on the type of design files included, one of the following licenses may be used:

- MIT License for scripts and utility code
- Apache License 2.0 for reusable RTL code
- CERN Open Hardware Licence for hardware design files
- Creative Commons license for documentation and reports

---

## Author

**KV**  
IC Design Engineer  
Analog IC Design | Digital IC Design | Open-Source Silicon | ASIC Design | RTL-to-GDS | SKY130 | RISC-V

---

## Disclaimer

This repository does not include proprietary PDK files, confidential design data, or restricted technology files.

All work is intended for educational, research, portfolio, and open-source IC design learning purposes. Any generated files are based on open-source tools and publicly available process design kits where permitted.
