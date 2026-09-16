must define export PDK_ROOT=/home/jaikrishn/IHP-Open-PDK

always change the hardcoded PDK_ROOT in rtll/macros/run_stats.tcl

             
             External SPI Flash
                    │
                    │ 4 wires
                    ▼
   ┌───────────────────────────────────┐
   │            soc_top                │
   │                                   │
   │  ┌─────────────┐   ┌────────────┐ │
   │  │  boot_ctrl  │──►│  SPI mstr  │─┼──► flash pins
   │  │   (FSM)     │   └────────────┘ │
   │  └──────┬──────┘                  │
   │         │ ram_wr_port             │
   │         ▼                         │
   │  ┌─────────────┐                  │
   │  │    RAM      │                  │
   │  │  (with 2    │                  │
   │  │  write      │                  │
   │  │  ports)     │                  │
   │  └──────┬──────┘                  │
   │         │ AXI port                │
   │         ▼                         │
   │  ┌─────────────┐                  │
   │  │  PicoRV32   │                  │
   │  └─────────────┘                  │
   │         ▲                         │
   │         │ cpu_rst_n               │
   │         └── from boot_ctrl        │
   └───────────────────────────────────┘


librelane --pdk ihp-sg13g2 --scl sg13g2_stdcell --manual-pdk --pdk-root $PDK_ROOT config.json 