create_clock -name clk_i \
    -period 10.0 \
    -waveform {0.0 5.0} \
    [get_ports clk_i]

set_clock_uncertainty -setup 0.2 [get_clocks clk_i]
set_clock_uncertainty -hold  0.1 [get_clocks clk_i]
set_clock_transition 0.2 [get_clocks clk_i]


# ============================================================
# AXI4-Lite INPUTS
# ============================================================

set_input_delay -clock clk_i -max 2.0 [get_ports {
    s_axil_awaddr[*]
    s_axil_awvalid
    s_axil_wdata[*]
    s_axil_wstrb[*]
    s_axil_wvalid
    s_axil_bready
    s_axil_araddr[*]
    s_axil_arvalid
    s_axil_rready
}]

set_input_delay -clock clk_i -min 0.0 [get_ports {
    s_axil_awaddr[*]
    s_axil_awvalid
    s_axil_wdata[*]
    s_axil_wstrb[*]
    s_axil_wvalid
    s_axil_bready
    s_axil_araddr[*]
    s_axil_arvalid
    s_axil_rready
}]

set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports {
    s_axil_awaddr[*]
    s_axil_awvalid
    s_axil_wdata[*]
    s_axil_wstrb[*]
    s_axil_wvalid
    s_axil_bready
    s_axil_araddr[*]
    s_axil_arvalid
    s_axil_rready
}]


# ============================================================
# GPIO INPUT
# ============================================================

set_input_delay -clock clk_i -max 2.0 [get_ports {
    gpio_in[*]
}]

set_input_delay -clock clk_i -min 0.0 [get_ports {
    gpio_in[*]
}]

set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports {
    gpio_in[*]
}]


# ============================================================
# AXI4-Lite OUTPUTS
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    s_axil_awready
    s_axil_wready
    s_axil_bresp[*]
    s_axil_bvalid
    s_axil_arready
    s_axil_rdata[*]
    s_axil_rresp[*]
    s_axil_rvalid
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    s_axil_awready
    s_axil_wready
    s_axil_bresp[*]
    s_axil_bvalid
    s_axil_arready
    s_axil_rdata[*]
    s_axil_rresp[*]
    s_axil_rvalid
}]

set_load 0.05 [get_ports {
    s_axil_awready
    s_axil_wready
    s_axil_bresp[*]
    s_axil_bvalid
    s_axil_arready
    s_axil_rdata[*]
    s_axil_rresp[*]
    s_axil_rvalid
}]


# ============================================================
# GPIO OUTPUTS
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    gpio_out[*]
    gpio_dir[*]
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    gpio_out[*]
    gpio_dir[*]
}]

set_load 0.05 [get_ports {
    gpio_out[*]
    gpio_dir[*]
}]


# ============================================================
# RESET
# ============================================================

set_false_path -from [get_ports rst_ni]

set_input_delay -clock clk_i -min 0.0 [get_ports rst_ni]
set_input_delay -clock clk_i -max 0.0 [get_ports rst_ni]