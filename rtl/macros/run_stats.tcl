# macros/run_stats.tcl

set LIB_FILE "/home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib"

set macros {
    {picorv32_macro     macros/picorv32_macro.sv    picorv32.v}
    {interconnect_macro macros/interconnect_macro.sv axil_interconnect.sv}
    {peripherals_macro  macros/peripherals_macro.sv  gpio_bank.sv}
    {boot_spi_macro     macros/boot_spi_macro.sv     spi_master.sv boot_ctrl.sv}
    {ram_macro          macros/ram_macro.sv          axi_ram.sv}
}

foreach macro $macros {
    set top  [lindex $macro 0]
    set file [lindex $macro 1]
    set deps [lrange $macro 2 end]

    yosys design -reset

    # Read dependent Verilog files first
    foreach dep $deps {
        yosys read_verilog -sv $dep
    }

    # Read top-level SystemVerilog macro file
    yosys read_verilog -sv $file

    # Read Liberty cell library
    yosys read_liberty -lib $LIB_FILE

    # Run synthesis targeting target cells
    yosys synth -top $top
    yosys dfflibmap -liberty $LIB_FILE
    yosys abc -liberty $LIB_FILE

    # Output statistics
    yosys log "=================== SUMMARY FOR $top ==================="
    yosys stat -liberty $LIB_FILE
}