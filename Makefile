RISCV_PREFIX ?= riscv64-unknown-elf-
CC           = $(RISCV_PREFIX)gcc
OBJCOPY      = $(RISCV_PREFIX)objcopy
VERILATOR    = verilator

RTL_SRCS = \
    rtl/soc_top.sv \
    rtl/axil_interconnect.sv \
    rtl/gpio_bank.sv \
    rtl/axi_ram.sv \
    rtl/picorv32.v

TB_SRCS = tb/sim_main.cpp

VERILATOR_FLAGS = -Wall --cc $(RTL_SRCS) --exe $(TB_SRCS) \
    -Wno-fatal \
    -Wno-EOFNEWLINE -Wno-DECLFILENAME -Wno-PINMISSING \
    -Wno-PINCONNECTEMPTY -Wno-TIMESCALEMOD -Wno-GENUNNAMED \
    -Wno-IMPORTSTAR -Wno-VARHIDDEN -Wno-WIDTHCONCAT \
    -Wno-WIDTHEXPAND -Wno-WIDTHTRUNC -Wno-UNUSEDSIGNAL \
    -Wno-UNUSEDPARAM -Wno-BLKSEQ -Wno-CASEINCOMPLETE \
    -Wno-SELRANGE -Wno-UNDRIVEN -Wno-SYNCASYNCNET \
    -Irtl \
    --top-module soc_top

all: run

firmware.hex: boot.s firmware.c link.ld
	$(CC) -march=rv32i -mabi=ilp32 -nostdlib -T link.ld boot.s firmware.c -o firmware.elf -lgcc
	$(OBJCOPY) -O verilog --verilog-data-width=4 firmware.elf firmware.hex

verilate: $(RTL_SRCS) $(TB_SRCS)
	$(VERILATOR) $(VERILATOR_FLAGS)
	make -C obj_dir -f Vsoc_top.mk Vsoc_top

run: firmware.hex verilate
	./obj_dir/Vsoc_top

clean:
	rm -rf obj_dir firmware.elf firmware.hex

.PHONY: all verilate run clean