# tb/gpio_bank/Makefile

# 1. Default to iverilog
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# 2. Path to project root directory relative to this Makefile
PROJ_ROOT = $(shell pwd)/../..

# 3. Point to SystemVerilog source file in rtl/
VERILOG_SOURCES += $(PROJ_ROOT)/rtl/gpio_bank.sv

# Top-level module name inside SystemVerilog
TOPLEVEL = gpio_bank

# 4. Python test file name in this directory (without .py extension)
MODULE = test_gpio

# SystemVerilog 2012 flag for Icarus Verilog
COMPILE_ARGS += -g2012

include $(shell cocotb-config --makefiles)/Makefile.sim