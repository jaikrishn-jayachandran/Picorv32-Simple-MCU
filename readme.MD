# PicoRV32 AXI4-Lite SoC — IHP SG13G2 ASIC Design

![Project Screenshot](design.png)


<p align="center">
  <b>RISC-V RV32I · AXI4-Lite · SPI Boot · 4 KiB IHP SRAM · 3× GPIO · Hard-Macro Physical Design</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/ISA-RV32I-5C2D91?style=flat-square" alt="RV32I">
  <img src="https://img.shields.io/badge/Bus-AXI4--Lite-1976D2?style=flat-square" alt="AXI4-Lite">
  <img src="https://img.shields.io/badge/PDK-IHP%20SG13G2-0B6E4F?style=flat-square" alt="IHP SG13G2">
  <img src="https://img.shields.io/badge/Process-130nm%20SiGe%20BiCMOS-333333?style=flat-square" alt="130nm">
  <img src="https://img.shields.io/badge/Simulation-Verilator-4B32C3?style=flat-square" alt="Verilator">
  <img src="https://img.shields.io/badge/Physical-OpenLane%2FLibreLane-FF7A00?style=flat-square" alt="OpenLane LibreLane">
  <img src="https://img.shields.io/badge/Flow-Yosys%20%2B%20OpenROAD-1F6FEB?style=flat-square" alt="Yosys OpenROAD">
</p>

> **Engineering note:** This README is a presentation and architecture document based on the supplied project design document. It intentionally distinguishes the **RTL simulation tier**, **hardened macro tier**, and **top-level physical integration**. Values not provided by the source document are not invented.

---

## 1. Executive Summary

This project implements a compact **RISC-V RV32I system-on-chip** built around the open-source **PicoRV32** processor and targeted to the **IHP SG13G2 open PDK**, a 130 nm SiGe BiCMOS technology.

The architecture is deliberately modular:

- **PicoRV32** provides the CPU execution engine.
- A **PicoRV32 AXI adapter** exposes an AXI4-Lite master interface.
- A dedicated **1-to-4 AXI4-Lite interconnect** performs address decoding and transaction fanout/fanin.
- A hardened **4 KiB IHP single-port SRAM** provides the main memory.
- Three identical **GPIO peripheral macros** expose memory-mapped I/O.
- A **boot SPI macro** loads firmware from external SPI flash before releasing the CPU from reset.
- The physical implementation separates the design into **five unique hardened macro types**, with the peripheral macro instantiated three times at the top level.

The project therefore demonstrates the complete path from:

**RISC-V RTL → simulation → bus/peripheral verification → macro synthesis → SRAM integration → macro floorplanning → PDN → top-level physical composition.**

---

## 2. Design-at-a-Glance

| Item | Design value |
|---|---|
| CPU | PicoRV32, RV32I |
| CPU style | Compact, in-order, single-issue |
| ISA extensions/configuration | Counters + barrel shifter; no compressed ISA; no MUL/DIV; no IRQ |
| CPU reset address | `0x0000_0000` |
| Main bus | AXI4-Lite, 32-bit |
| AXI topology | 1 master → 4 slaves |
| SRAM | IHP `RM_IHPSG13_1P_1024x32_c2_bm_bist` |
| SRAM capacity | 1024 × 32-bit = 4 KiB |
| GPIO | 3 × 32-bit banks |
| Boot | External SPI flash, standard READ `0x03` |
| Firmware image | 1024 words × 4 bytes |
| Clock target | 10 ns period / 100 MHz |
| PDK | IHP SG13G2 |
| Standard-cell library | `sg13g2_stdcell` |
| RTL language | SystemVerilog + Verilog |
| RTL simulation | Verilator |
| Unit verification | Cocotb + cocotbext-axi |
| Logic synthesis | Yosys |
| Physical implementation | OpenLane / LibreLane + OpenROAD |
| Physical organization | 5 unique macro types, 7 macro instances |
| Top-level external I/O | SPI + 3 × GPIO + clock/reset |

---

## 3. System Architecture

### 3.1 Top-Level Block Diagram

![System architecture](docs/assets/system_architecture.svg)

The system is divided into five primary hardened macro types:

1. `picorv32_macro`
2. `interconnect_macro`
3. `ram_macro`
4. `boot_spi_macro`
5. `peripherals_macro`

`peripherals_macro` is instantiated three times as `u_periph0`, `u_periph1`, and `u_periph2`.

This distinction is important when reading the physical hierarchy:

> **5 unique hardened macro designs → 7 physical macro instances at `soc_top`.**

### 3.2 Mermaid Architecture

```mermaid
flowchart TB
    SPI["External SPI Flash<br/>CS# / SCLK / MOSI / MISO"]

    subgraph SOC["soc_top"]
        BOOT["boot_spi_macro<br/>boot_ctrl FSM + spi_master"]
        CPU["picorv32_macro<br/>PicoRV32 RV32I<br/>AXI4-Lite Master"]
        IC["interconnect_macro<br/>1 Master → 4 Slaves<br/>Address Decode + Fanout/Fanin"]
        RAM["ram_macro<br/>IHP 1024×32 SRAM<br/>4 KiB"]
        G0["peripherals_macro<br/>GPIO0"]
        G1["peripherals_macro<br/>GPIO1"]
        G2["peripherals_macro<br/>GPIO2"]
    end

    SPI --> BOOT
    BOOT -->|"boot_we / boot_addr / boot_wdata"| RAM
    BOOT -->|"cpu_rst_n"| CPU
    CPU -->|"AXI4-Lite"| IC
    IC -->|"Slave 0"| RAM
    IC -->|"Slave 1"| G0
    IC -->|"Slave 2"| G1
    IC -->|"Slave 3"| G2
```

### 3.3 Transaction Ownership

The architecture is intentionally simple because there is a **single AXI master**.

```mermaid
flowchart LR
    CPU["PicoRV32 AXI Master"]
    IC["AXI4-Lite Interconnect"]
    RAM["RAM"]
    GPIO0["GPIO0"]
    GPIO1["GPIO1"]
    GPIO2["GPIO2"]

    CPU --> IC
    IC -->|"addr[31:12] = 0x00000"| RAM
    IC -->|"addr[31:12] = 0x40000"| GPIO0
    IC -->|"addr[31:12] = 0x40001"| GPIO1
    IC -->|"addr[31:12] = 0x40002"| GPIO2
```

Because there is only one master, the interconnect does not require a multi-master arbitration scheme. Its principal responsibilities are:

- decode the target slave;
- gate AXI valid signals toward the selected slave;
- route read/write responses back to the master;
- preserve the AXI transaction relationship.

---

# 4. Memory Map

The interconnect decodes the **upper 20 address bits**, `addr[31:12]`.

| Slave | Address range | Instance | Function |
|---:|---|---|---|
| 0 | `0x0000_0000 – 0x0000_0FFF` | `ram_macro` | 4 KiB system RAM |
| 1 | `0x4000_0000 – 0x4000_0FFF` | `peripherals_macro` / GPIO0 | GPIO bank 0 |
| 2 | `0x4000_1000 – 0x4000_1FFF` | `peripherals_macro` / GPIO1 | GPIO bank 1 |
| 3 | `0x4000_2000 – 0x4000_2FFF` | `peripherals_macro` / GPIO2 | GPIO bank 2 |

### Address decoder

```mermaid
flowchart LR
    A["AXI AWADDR / ARADDR<br/>32-bit"] --> D{"addr[31:12]"}
    D -->|"20'h00000"| R["RAM"]
    D -->|"20'h40000"| G0["GPIO0"]
    D -->|"20'h40001"| G1["GPIO1"]
    D -->|"20'h40002"| G2["GPIO2"]
    D -->|"default"| R
```

The documented default path maps an unmatched address to RAM.

---

# 5. CPU Subsystem

## 5.1 PicoRV32

The processor is the central execution engine of the SoC.

Configured features:

| Parameter | Value |
|---|---:|
| `ENABLE_COUNTERS` | `1` |
| `BARREL_SHIFTER` | `1` |
| `COMPRESSED_ISA` | `0` |
| `PROGADDR_RESET` | `0x0000_0000` |
| `STACKADDR` | `0x0000_1000` |
| `ENABLE_MUL` | `0` |
| `ENABLE_DIV` | `0` |
| `ENABLE_IRQ` | `0` |

The documented internal structure contains:

- 32 × 32-bit integer registers;
- ALU;
- comparator;
- barrel shifter;
- logical operations;
- instruction/data memory interface;
- control state machine;
- AXI4-Lite adapter.

The source design documents an eight-state execution sequence including fetch, register access, execution, shifting, load/store and trap states.

## 5.2 Native Memory Interface → AXI4-Lite

PicoRV32's native interface exposes:

```text
mem_valid
mem_ready
mem_addr
mem_wdata
mem_wstrb
mem_rdata
```

The AXI adapter translates this into AXI4-Lite transactions.

For a write:

```text
mem_valid && |mem_wstrb
        │
        ▼
mem_axi_awvalid
```

For a read:

```text
mem_valid && !mem_wstrb
        │
        ▼
mem_axi_arvalid
```

The adapter tracks AXI channel activity with internal acknowledgement state and generates the CPU-side `mem_ready` from the completed AXI response.

---

# 6. AXI4-Lite Interconnect

The interconnect is a **1-to-4 AXI4-Lite demultiplexer**.

### Write path

```mermaid
sequenceDiagram
    participant CPU as PicoRV32
    participant IC as Interconnect
    participant S as Selected Slave

    CPU->>IC: AWVALID + AWADDR
    CPU->>IC: WVALID + WDATA + WSTRB
    IC->>S: awvalid / awaddr
    IC->>S: wvalid / wdata / wstrb
    S-->>IC: AWREADY + WREADY
    IC-->>CPU: AWREADY + WREADY
    S-->>IC: BVALID
    IC-->>CPU: BVALID
    CPU->>IC: BREADY
    IC->>S: BREADY
```

The selected slave is determined from the address decode.

For the documented design:

```text
AWVALID[selected] = M_AWVALID && AW_SEL[selected]
WVALID [selected] = M_WVALID  && AW_SEL[selected]
```

The response path returns the selected slave's response to the CPU.

---

# 7. GPIO Peripheral

Each `peripherals_macro` wraps a 32-bit GPIO bank.

## Register map

| Offset | Register | Access | Description |
|---:|---|---|---|
| `0x00` | `reg_data` | R/W | GPIO output data |
| `0x04` | `reg_dir` | R/W | GPIO direction |
| `0x08` | `gpio_in` | RO | Raw GPIO input |

### GPIO concept

```mermaid
flowchart LR
    CPU["PicoRV32"] --> AXI["AXI4-Lite"]
    AXI --> REG["GPIO Registers"]
    REG --> OUT["gpio_out[31:0]"]
    REG --> DIR["gpio_dir[31:0]"]
    IN["gpio_in[31:0]"] --> REG
```

Writes use the AXI byte strobes:

```text
WSTRB[3:0]
```

The GPIO implementation uses an `aw_en` mechanism to prevent accepting a new write address until the current write response has completed.

---

# 8. SRAM Macro

The physical memory implementation uses the IHP SRAM macro:

```text
RM_IHPSG13_1P_1024x32_c2_bm_bist
```

## SRAM characteristics

| Property | Value |
|---|---|
| Organization | 1024 × 32 |
| Capacity | 4096 bytes |
| Port | Single-port |
| Technology | IHP SG13G2 |
| Address | 10-bit word address |
| Data | 32-bit |
| Bit mask | 32-bit |
| BIST | Present / tied off for normal operation |
| `A_DLY` | Tied HIGH |

### Physical SRAM interface

```text
A_CLK
A_MEN
A_WEN
A_REN
A_ADDR[9:0]
A_DIN[31:0]
A_DOUT[31:0]
A_BM[31:0]
A_DLY
A_BIST_*
```

## 8.1 SRAM Arbitration

The wrapper has three possible sources of activity:

1. SPI boot write
2. AXI write
3. AXI read

The documented priority is:

```text
boot write
    ↓
AXI write
    ↓
AXI read
    ↓
idle
```

```mermaid
flowchart TD
    START["SRAM arbitration"] --> B{"boot_we?"}
    B -->|Yes| BW["Service boot write"]
    B -->|No| W{"AXI write pending?"}
    W -->|Yes| AW["Service AXI write"]
    W -->|No| R{"AXI read pending?"}
    R -->|Yes| AR["Issue SRAM read"]
    R -->|No| I["Idle"]
    BW --> END["Next cycle"]
    AW --> END
    AR --> CAP["Capture SRAM DOUT"]
    CAP --> END
    I --> END
```

## 8.2 SRAM Read State Machine

```mermaid
stateDiagram-v2
    [*] --> READ_IDLE
    READ_IDLE --> READ_ISSUE: AXI AR handshake
    READ_ISSUE --> READ_CAPTURE: next cycle
    READ_CAPTURE --> READ_IDLE: rdata returned
```

Invalid AXI addresses are rejected when:

```text
addr[31:12] != 0
```

or the address is not word aligned:

```text
addr[1:0] != 2'b00
```

The documented response for such accesses is:

```text
AXI_DECERR = 2'b11
```

---

# 9. SPI Boot Architecture

The boot subsystem combines:

- `boot_ctrl`
- `spi_master`

into `boot_spi_macro`.

## Boot configuration

| Parameter | Value |
|---|---:|
| Firmware words | 1024 |
| Firmware size | 4 KiB |
| SPI command | `0x03` |
| SPI clock divider | `CLK_DIV = 8` |
| SCLK | `clk / 16` |
| CPU reset | Held low during loading |

![Boot sequence](docs/assets/boot_sequence.svg)

### Boot FSM

```mermaid
stateDiagram-v2
    [*] --> S_IDLE
    S_IDLE --> S_CS_LOW
    S_CS_LOW --> S_SEND_CMD
    S_SEND_CMD --> S_SEND_ADDR_H
    S_SEND_ADDR_H --> S_SEND_ADDR_M
    S_SEND_ADDR_M --> S_SEND_ADDR_L
    S_SEND_ADDR_L --> S_READ_BYTE
    S_READ_BYTE --> S_READ_BYTE: 4 bytes / word
    S_READ_BYTE --> S_WRITE_RAM: word assembled
    S_WRITE_RAM --> S_NEXT_WORD
    S_NEXT_WORD --> S_READ_BYTE: more words
    S_NEXT_WORD --> S_DONE: 1024 words loaded
    S_DONE --> [*]
```

The CPU remains in reset until `S_DONE`.

The intended execution flow is:

```text
SPI Flash
   │
   ▼
SPI master
   │
   ▼
boot_ctrl
   │
   ├── boot_addr
   ├── boot_wdata
   └── boot_we
          │
          ▼
      IHP SRAM
          │
          ▼
      PicoRV32
```

---

# 10. SPI Master

The SPI master is implemented as a compact synchronous controller.

Operation:

1. latch `tx_byte`;
2. assert `busy`;
3. divide the system clock;
4. toggle SCLK;
5. sample MISO on the rising edge;
6. shift MOSI on the falling edge;
7. count eight bits;
8. pulse `done`.

The documented implementation transmits **MSB first**:

```text
mosi = tx_shift[7]
```

---

# 11. Firmware Architecture

The firmware consists of:

```text
boot.s
link.ld
firmware.c
```

## Startup

The reset entry point is:

```text
_start
```

with code linked at:

```text
0x00000000
```

This matches the CPU reset program address.

## Firmware build

```bash
riscv64-unknown-elf-gcc \
  -march=rv32i \
  -mabi=ilp32 \
  -nostdlib \
  -T link.ld \
  boot.s firmware.c \
  -o firmware.elf

riscv64-unknown-elf-objcopy \
  -O verilog \
  --verilog-data-width=4 \
  firmware.elf \
  firmware.hex
```

The resulting `firmware.hex` is used by the simulation/synthesis flow as documented.

## GPIO demo

The example firmware performs a GPIO loopback demonstration:

| GPIO bank | Output pin | Loopback input |
|---|---:|---:|
| GPIO0 | 15 | 1 |
| GPIO1 | 20 | 10 |
| GPIO2 | 31 | 0 |

The software:

1. configures GPIO direction;
2. drives output pins;
3. reads GPIO inputs;
4. verifies loopback;
5. repeats with a software delay.

---

# 12. Verification Architecture

The project contains two verification levels.

## 12.1 Verilator SoC-Level Test

The C++ testbench performs:

```text
Reset
  ↓
Release reset
  ↓
CPU executes firmware
  ↓
GPIO outputs change
  ↓
Testbench emulates physical wires
  ↓
GPIO inputs are read back
  ↓
Pass/fail counters
```

The documented testbench runs an infinite simulation loop and reports a heartbeat every 2 million cycles.

### Testbench loopback

```mermaid
flowchart LR
    G0O["GPIO0[15]"] --> G0I["GPIO0[1]"]
    G1O["GPIO1[20]"] --> G1I["GPIO1[10]"]
    G2O["GPIO2[31]"] --> G2I["GPIO2[0]"]
```

## 12.2 Cocotb GPIO Unit Test

The GPIO unit test uses:

- Cocotb
- `cocotbext-axi`

The documented sequence includes:

```text
TEST 1 → write direction register
TEST 2 → write output register
TEST 3 → drive GPIO input and read it through AXI
```

This provides a useful separation between:

- **unit-level AXI peripheral verification**, and
- **full SoC firmware-driven verification**.

---

# 13. RTL vs Hardened Physical Architecture

The repository deliberately keeps two representations of the design.

```mermaid
flowchart TB
    RTL["rtl/<br/>Flat simulation RTL"]
    RTL --> SIM["Verilator"]
    RTL --> UNIT["Cocotb / AXI unit tests"]

    RTL --> WRAP["rtl/macros/<br/>Physical wrappers"]
    WRAP --> SYN["Yosys synthesis"]
    SYN --> MACRO["Hardened macro views"]
    MACRO --> TOP["soc_top physical composition"]
    TOP --> PD["OpenLane / LibreLane"]
    PD --> OR["OpenROAD physical implementation"]
```

### Simulation tier

The simulation hierarchy contains:

```text
soc_top
├── boot_ctrl
├── spi_master
├── picorv32_axi
├── axil_interconnect
├── axil_ram_sim
├── gpio_bank
├── gpio_bank
└── gpio_bank
```

### Hardened tier

The physical hierarchy contains:

```text
soc_top
├── u_cpu       → picorv32_macro
├── u_ic        → interconnect_macro
├── u_ram       → ram_macro
├── u_boot_spi  → boot_spi_macro
├── u_periph0   → peripherals_macro
├── u_periph1   → peripherals_macro
└── u_periph2   → peripherals_macro
```

This is a key physical-design concept:

> **The logical SoC remains architecturally consistent while the physical implementation introduces macro boundaries for synthesis, placement, routing, and hard-IP integration.**

---

# 14. Physical Design

## 14.1 Technology

The project targets:

```text
PDK  : IHP SG13G2
Library: sg13g2_stdcell
Process: 130 nm SiGe BiCMOS
```

The macro synthesis documentation states that `picorv32_macro` is synthesized against:

```text
sg13g2_stdcell_typ_1p20V_25C.lib
```

with 84 documented cell types in the synthesis library.

## 14.2 Timing Target

The documented top-level timing constraint is:

| Constraint | Value |
|---|---:|
| Clock period | 10 ns |
| Clock frequency | 100 MHz |
| Duty cycle | 50% |
| Clock uncertainty | 0.20 ns |
| Transition | 0.10 ns |
| Input delay | 0.5–2.0 ns |
| Output delay | 0.5–2.0 ns |
| Reset | Async assert / sync deassert |
| Reset path | False path |

### Timing interpretation

A 10 ns clock means:

```text
Tclk = 10 ns

fclk = 1 / Tclk
     = 100 MHz
```

The timing objective is therefore to close the documented synchronous paths within a 100 MHz clock period while accounting for the specified uncertainty and I/O timing assumptions.

---

# 15. Floorplan

![Documented floorplan](docs/assets/floorplan.svg)

The supplied design document describes a top-level geometry with approximately:

```text
2300 µm × 2400 µm
```

and an L-shaped digital region due to the documented obstruction/notch.

### Documented macro placement X coordinates

| Instance | X coordinate |
|---|---:|
| `u_ram` | 35 µm |
| `u_cpu` | 35 µm |
| `u_boot_spi` | 35 µm |
| `u_periph0` | 850 µm |
| `u_periph1` | 1100 µm |
| `u_periph2` | 1350 µm |
| `u_ic` | 1900 µm |

The documented macro utilization is:

```text
50.6% of the digital L-shaped area
2.37 mm²
```

---

# 16. Pin Planning

The documented pin assignment is:

| Side | Signals |
|---|---|
| North | `clk_i`, `rst_ni`, `spi_cs_n`, `spi_sclk`, `spi_mosi`, `spi_miso` |
| West | `gpio0_in[*]`, `gpio0_out[*]`, `gpio0_dir[*]` |
| South | `gpio1_in[*]`, `gpio1_out[*]`, `gpio1_dir[*]` |
| East | `gpio2_in[*]`, `gpio2_out[*]`, `gpio2_dir[*]` |

This placement strategy keeps the three GPIO banks physically associated with separate die edges while grouping clock/reset/SPI controls at the north side.

---

# 17. Power Distribution Network

The documented PDN configuration uses:

```text
Voltage domain : CORE
Power          : VDD / VSS
SRAM           : VPWR / VGND
Metal          : TopMetal1 + TopMetal2
```

### Ring

```text
Width   = 4.0 µm
Spacing = 4.0 µm
Offset  = 4.5 µm
```

### Stripes

```text
Width = 6.0 µm
Pitch = 60.0 µm
```

A via stack connects the two top metal layers.

The SRAM uses the IHP-specific physical supply naming:

```text
VPWR
VGND
```

while the standard-cell domain uses:

```text
VDD
VSS
```

The physical flow therefore requires correct global-connect treatment across the standard-cell and SRAM power-pin naming conventions.

---

# 18. Macro-Level Synthesis Flow

The documented synthesis flow iterates through the five unique macro wrappers:

```text
picorv32_macro
interconnect_macro
peripherals_macro
boot_spi_macro
ram_macro
```

Conceptually:

```mermaid
flowchart LR
    SRC["Macro RTL"] --> Y["Yosys"]
    Y --> OPT["Logic optimization"]
    OPT --> MAP["Standard-cell mapping"]
    MAP --> STAT["Cell / area statistics"]
    STAT --> OR["OpenROAD / physical implementation"]
```

The physical RAM macro itself is vendor/PDK hard IP rather than synthesized standard-cell logic.

---

# 19. Physical Integration Philosophy

The macro partitioning provides several engineering advantages:

### CPU isolation

`picorv32_macro` contains the processor and its AXI adapter.

### Bus isolation

`interconnect_macro` owns the AXI topology and address decoding.

### Memory isolation

`ram_macro` encapsulates:

- AXI protocol handling;
- SRAM port arbitration;
- address validation;
- physical SRAM integration.

### Boot isolation

`boot_spi_macro` contains the firmware-loading mechanism.

### Peripheral replication

`peripherals_macro` is reusable across GPIO0, GPIO1 and GPIO2.

This is a clean physical hierarchy because each macro has a defined architectural responsibility and a constrained interface.

---

# 20. Complete Dataflow

## 20.1 Power-on / boot

```mermaid
sequenceDiagram
    participant Flash as SPI Flash
    participant Boot as boot_spi_macro
    participant RAM as ram_macro
    participant CPU as PicoRV32

    Note over CPU: cpu_rst_n = 0
    Boot->>Flash: CS# + READ 0x03
    Boot->>Flash: 24-bit address
    Flash-->>Boot: Firmware byte stream
    Boot->>Boot: Assemble 4 bytes / word
    Boot->>RAM: boot_we + boot_addr + boot_wdata
    Note over Boot,RAM: Repeat for 1024 words
    Boot->>CPU: cpu_rst_n = 1
    CPU->>RAM: Instruction fetch
```

## 20.2 Normal execution

```mermaid
flowchart LR
    CPU["PicoRV32"] --> IC["AXI Interconnect"]
    IC --> RAM["RAM"]
    IC --> GPIO["GPIO peripherals"]
    GPIO --> PINS["External GPIO pins"]
    PINS --> GPIO
```

---

# 21. Example AXI Write

A documented RAM/GPIO write follows this logical sequence:

```text
CPU
 │
 ├── AWVALID
 ├── AWADDR
 │
 ├── WVALID
 ├── WDATA
 └── WSTRB
      │
      ▼
Interconnect
      │
      ├── address decode
      └── selected slave
              │
              ├── AWREADY
              ├── WREADY
              └── BVALID
                     │
                     ▼
                   CPU
```

For GPIO:

```text
CPU
 ↓
0x4000_xxxx
 ↓
GPIO bank selected
 ↓
register decode
 ↓
reg_data / reg_dir
 ↓
GPIO output
```

---

# 22. GPIO Register-Level Example

For GPIO0:

```c
#define GPIO0_BASE 0x40000000u

#define GPIO0_OUT (*(volatile uint32_t *)(GPIO0_BASE + 0x00))
#define GPIO0_DIR (*(volatile uint32_t *)(GPIO0_BASE + 0x04))
#define GPIO0_IN  (*(volatile uint32_t *)(GPIO0_BASE + 0x08))
```

For GPIO1:

```text
GPIO1_BASE = 0x40001000
```

For GPIO2:

```text
GPIO2_BASE = 0x40002000
```

This creates a simple software-visible peripheral model without requiring a more complex peripheral bus.

---

# 23. Repository Structure

The documented repository organization can be understood as:

```text
picorv32_axi4lite_soc/
│
├── rtl/
│   ├── picorv32.v
│   ├── axil_interconnect.sv
│   ├── axi_ram.sv
│   ├── gpio_bank.sv
│   ├── boot_ctrl.sv
│   ├── spi_master.sv
│   ├── soc_top.sv
│   │
│   ├── vendor/
│   │   ├── axi/
│   │   └── common_cells/
│   │
│   └── macros/
│       ├── picorv32_macro.sv
│       ├── interconnect_macro.sv
│       ├── peripherals_macro.sv
│       ├── boot_spi_macro.sv
│       └── ram_macro.sv
│
├── firmware/
│   ├── boot.s
│   ├── firmware.c
│   ├── link.ld
│   └── firmware.hex
│
├── tb/
│   ├── sim_main.cpp
│   └── gpio_bank/
│       └── test_gpio.py
│
├── physical_design/
│   └── ...
│
└── README.md
```

---

# 24. Engineering Toolchain

```mermaid
flowchart TB
    RTL["SystemVerilog / Verilog RTL"]
    FW["RISC-V firmware"]
    RTL --> VER["Verilator simulation"]
    FW --> VER
    VER --> VOK["Functional verification"]

    RTL --> Y["Yosys"]
    Y --> SYN["Synthesis"]
    SYN --> MAC["Macro implementation"]

    MAC --> PDN["PDN / Floorplan"]
    PDN --> PL["Placement"]
    PL --> CTS["Clock / timing"]
    CTS --> RT["Routing"]
    RT --> STA["Timing analysis"]
    RT --> DRC["Physical checks"]
    RT --> LVS["Connectivity / LVS flow"]
```

---

# 25. Verification Matrix

| Layer | Target | Tool / mechanism |
|---|---|---|
| CPU / SoC RTL | System behavior | Verilator |
| Firmware | CPU + memory + GPIO interaction | C firmware |
| GPIO unit | AXI register behavior | Cocotb + cocotbext-axi |
| Macro synthesis | Synthesizability / mapping | Yosys |
| Physical macro | Placement / routing | OpenLane / LibreLane / OpenROAD |
| SRAM integration | Physical hard macro connectivity | IHP SRAM macro |
| Top-level physical design | Floorplan / PDN / routing | OpenROAD-based flow |

---

# 26. Design Characteristics Worth Highlighting

## Modular hard-macro partitioning

The design demonstrates physical partitioning without changing the architectural role of the SoC.

## Open-source digital flow

The documented implementation uses:

```text
Yosys
OpenLane / LibreLane
OpenROAD
Verilator
Cocotb
```

with an open PDK target.

## Real embedded SRAM integration

Instead of treating RAM only as synthesized flip-flops, the physical design integrates an IHP SRAM hard macro.

## Bootable architecture

The CPU is not merely connected to a testbench memory. The synthesis-mode design contains an SPI firmware-loading path that populates SRAM before CPU release.

## AXI4-Lite subsystem

The CPU communicates with memory and peripherals through a standard lightweight AMBA-style memory-mapped bus.

## Reusable GPIO macro

One GPIO implementation is physically instantiated three times.

---

# 27. Important Design Notes

### Simulation vs. synthesis

The boot controller and RAM behavior differ between simulation and synthesis through `` `ifndef SYNTHESIS `` sections.

Simulation uses the firmware image directly for rapid bring-up.

Synthesis mode implements the documented SPI boot FSM.

### SRAM power pins

The behavioral SRAM model does not expose all physical supply pins. The physical SRAM LEF/power connectivity is handled during the physical flow.

### SRAM arbitration

The single-port SRAM wrapper explicitly prioritizes:

```text
boot > AXI write > AXI read
```

### CPU features intentionally disabled

The documented PicoRV32 configuration does not use:

```text
M extension
D extension
Compressed ISA
IRQ
PCPI
```

This keeps the documented implementation compact.

---

# 28. Engineering Considerations / Review Checklist

The following items should be reviewed before calling a physical run **signoff-ready**:

- [ ] RTL lint clean
- [ ] RTL simulation regression passing
- [ ] Cocotb AXI peripheral tests passing
- [ ] Firmware image reproducible
- [ ] Synthesis warnings reviewed
- [ ] Macro interfaces frozen
- [ ] Macro LEF/DEF consistency verified
- [ ] Pin placement verified
- [ ] Power/ground connectivity verified
- [ ] PDN connectivity verified
- [ ] Clock-tree implementation reviewed
- [ ] Setup timing checked at required corners
- [ ] Hold timing checked at required corners
- [ ] Max transition checked
- [ ] Max capacitance checked
- [ ] Fanout constraints checked
- [ ] DRC clean
- [ ] LVS clean
- [ ] Antenna checks clean
- [ ] SRAM integration checks complete
- [ ] Top-level routing complete
- [ ] Final GDS generated
- [ ] Final netlist/layout consistency verified

> The checklist above is an engineering review checklist, not a claim that every item has already passed in the supplied project.

---

# 29. PVT / Timing Review

For physical timing closure, setup and hold should be evaluated under the relevant process-voltage-temperature corners supported by the selected PDK/library characterization.

A useful engineering interpretation is:

```text
Slow / low-V / hot
        │
        └── typically stresses maximum path delay
                         ↓
                      SETUP

Fast / high-V / cold
        │
        └── typically stresses minimum path delay
                         ↓
                       HOLD
```

The exact signoff corner set must come from the technology/library characterization used by the physical flow.

---

# 30. Macro Interface Contract

Every hardened macro should be treated as an interface contract:

```text
                    +----------------------+
                    |     MACRO            |
                    |                      |
    clocks -------->| clock/reset          |
    AXI ------------>| AXI interface       |
    GPIO ----------->| GPIO interface      |
    SPI ------------>| SPI interface       |
                    |                      |
                    +----------------------+
```

The top-level physical integration should not need to understand the internal implementation of a macro.

For example:

```text
soc_top
   │
   ├── picorv32_macro
   │      └── CPU implementation is encapsulated
   │
   ├── ram_macro
   │      └── SRAM implementation is encapsulated
   │
   └── peripherals_macro
          └── GPIO implementation is encapsulated
```

This separation is one of the most important architectural properties of the project.

---

# 31. Design Philosophy

The project can be summarized as:

```text
         OPEN RTL
            │
            ▼
      VERIFY BEHAVIOR
            │
            ▼
       DEFINE MACROS
            │
            ▼
       SYNTHESIZE LOGIC
            │
            ▼
      INTEGRATE HARD IP
            │
            ▼
        FLOORPLAN
            │
            ▼
          PDN
            │
            ▼
        PLACEMENT
            │
            ▼
      CLOCK / ROUTING
            │
            ▼
     TIMING + PHYSICAL
        VERIFICATION
```

The architecture therefore demonstrates both **digital design** and **ASIC physical implementation concepts** rather than stopping at an RTL-only CPU project.

---

# 32. Quick Start — Conceptual Flow

```bash
# 1. Build firmware
riscv64-unknown-elf-gcc \
  -march=rv32i \
  -mabi=ilp32 \
  -nostdlib \
  -T link.ld \
  boot.s firmware.c \
  -o firmware.elf

# 2. Generate Verilog memory image
riscv64-unknown-elf-objcopy \
  -O verilog \
  --verilog-data-width=4 \
  firmware.elf firmware.hex

# 3. Run RTL simulation
make run

# 4. Run physical implementation
# Use the repository's OpenLane / LibreLane configuration
# and macro/top-level flow.
```

Exact repository commands should follow the project's current scripts/configuration; the supplied design document specifies the tools and conceptual flow but does not provide every invocation command.

---

# 33. Project Value as an ASIC Design Study

This project combines several layers that are often studied separately:

| Domain | Demonstrated element |
|---|---|
| Computer architecture | RV32I CPU |
| RTL design | SystemVerilog modules |
| Bus architecture | AXI4-Lite |
| Peripheral design | Memory-mapped GPIO |
| Boot architecture | SPI flash loader |
| Memory subsystem | SRAM wrapper + arbitration |
| Verification | Verilator + Cocotb |
| Synthesis | Yosys |
| Hard IP | IHP SRAM |
| Floorplanning | Macro placement |
| Physical design | OpenLane / LibreLane / OpenROAD |
| Power | PDN / global connectivity |
| Timing | SDC constraints |
| SoC integration | Multi-macro top level |

---

# 34. Suggested Project Showcase

For a technical portfolio, the most useful visual sequence is:

```text
01  Architecture
        ↓
02  Memory Map
        ↓
03  Boot Flow
        ↓
04  RTL Simulation
        ↓
05  Macro Partition
        ↓
06  Floorplan
        ↓
07  PDN
        ↓
08  Placement
        ↓
09  Routing
        ↓
10  Timing / DRC / LVS
```

This tells the story from **architecture to physical silicon implementation** instead of presenting the project as only a CPU or FPGA design.

---

# 35. References Inside This Repository

Primary implementation areas described by the supplied design document:

```text
rtl/picorv32.v
rtl/axil_interconnect.sv
rtl/axi_ram.sv
rtl/gpio_bank.sv
rtl/boot_ctrl.sv
rtl/spi_master.sv
rtl/soc_top.sv

rtl/macros/picorv32_macro.sv
rtl/macros/interconnect_macro.sv
rtl/macros/peripherals_macro.sv
rtl/macros/boot_spi_macro.sv
rtl/macros/ram_macro.sv
```

Firmware:

```text
boot.s
link.ld
firmware.c
firmware.hex
```

Verification:

```text
tb/sim_main.cpp
tb/gpio_bank/test_gpio.py
```

Physical implementation:

```text
physical_design/
```

---

# 36. Final Architecture Snapshot

```mermaid
mindmap
  root((PicoRV32 AXI4-Lite SoC))
    CPU
      PicoRV32
      RV32I
      Barrel shifter
      Counters
      AXI4-Lite master
    Bus
      AXI4-Lite
      1 master
      4 slaves
      20-bit upper-address decode
    Memory
      IHP SG13G2 SRAM
      1024 × 32
      4 KiB
      Single-port
      Boot arbitration
    Peripherals
      GPIO0
      GPIO1
      GPIO2
      32-bit data
      Direction register
      Input register
    Boot
      SPI master
      READ 0x03
      1024 words
      CPU held in reset
    Verification
      Verilator
      Cocotb
      cocotbext-axi
      GPIO loopback
    Physical
      Yosys
      OpenLane
      LibreLane
      OpenROAD
      Macro floorplan
      PDN
      Timing
      DRC/LVS
```

---

## Project status language

For engineering communication, distinguish these terms carefully:

- **RTL complete** — architecture and RTL are implemented.
- **Simulation verified** — documented simulations/tests execute the intended behavior.
- **Synthesizable** — RTL can be mapped into the target technology flow.
- **Physically implemented** — placement/routing has been performed.
- **Timing closed** — required timing checks pass under the specified constraints/corners.
- **DRC/LVS clean** — physical verification checks pass.
- **Tapeout/signoff ready** — all required project-specific signoff criteria have been demonstrated.

The supplied design document contains evidence for multiple stages of this flow, but this README deliberately does **not** convert every documented implementation detail into an unsupported signoff claim.

---

## License / Attribution

The PicoRV32 core is attributed in the supplied project documentation to **Claire Xenia Wolf** and is identified there as being under the **ISC license**.

Refer to the repository's actual license files and third-party notices for the authoritative licensing terms of every included component.
