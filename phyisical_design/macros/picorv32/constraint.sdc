create_clock -name clk_i \
    -period 10.0 \
    -waveform {0.0 5.0} \
    [get_ports clk_i]

set_clock_uncertainty -setup 0.2 [get_clocks clk_i]
set_clock_uncertainty -hold  0.1 [get_clocks clk_i]
set_clock_transition 0.2 [get_clocks clk_i]

set_input_delay -clock clk_i -max 2.0 [get_ports {
    mem_axi_awready
    mem_axi_wready
    mem_axi_bvalid
    mem_axi_arready
    mem_axi_rvalid
    mem_axi_rdata[*]
}]

set_input_delay -clock clk_i -min 0.0 [get_ports {
    mem_axi_awready
    mem_axi_wready
    mem_axi_bvalid
    mem_axi_arready
    mem_axi_rvalid
    mem_axi_rdata[*]
}]

set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports {
    mem_axi_awready
    mem_axi_wready
    mem_axi_bvalid
    mem_axi_arready
    mem_axi_rvalid
    mem_axi_rdata[*]
}]

set_output_delay -clock clk_i -max 2.0 [get_ports {
    mem_axi_awvalid
    mem_axi_awaddr[*]
    mem_axi_awprot[*]
    mem_axi_wvalid
    mem_axi_wdata[*]
    mem_axi_wstrb[*]
    mem_axi_bready
    mem_axi_arvalid
    mem_axi_araddr[*]
    mem_axi_arprot[*]
    mem_axi_rready
    trap
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    mem_axi_awvalid
    mem_axi_awaddr[*]
    mem_axi_awprot[*]
    mem_axi_wvalid
    mem_axi_wdata[*]
    mem_axi_wstrb[*]
    mem_axi_bready
    mem_axi_arvalid
    mem_axi_araddr[*]
    mem_axi_arprot[*]
    mem_axi_rready
    trap
}]

set_load 0.05 [get_ports {
    mem_axi_awvalid
    mem_axi_awaddr[*]
    mem_axi_awprot[*]
    mem_axi_wvalid
    mem_axi_wdata[*]
    mem_axi_wstrb[*]
    mem_axi_bready
    mem_axi_arvalid
    mem_axi_araddr[*]
    mem_axi_arprot[*]
    mem_axi_rready
    trap
}]

set_false_path -from [get_ports rst_ni]

# set_max_fanout 32 [current_design]