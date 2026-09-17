create_clock -name clk_i \
    -period 10.0 \
    -waveform {0.0 5.0} \
    [get_ports clk_i]

set_clock_uncertainty -setup 0.2 [get_clocks clk_i]
set_clock_uncertainty -hold  0.1 [get_clocks clk_i]
set_clock_transition 0.2 [get_clocks clk_i]


# ============================================================
# AXI MASTER-SIDE INPUTS
# ============================================================

set_input_delay -clock clk_i -max 2.0 [get_ports {
    m_awvalid
    m_awaddr[*]
    m_awprot[*]

    m_wvalid
    m_wdata[*]
    m_wstrb[*]

    m_bready

    m_arvalid
    m_araddr[*]
    m_arprot[*]

    m_rready
}]

set_input_delay -clock clk_i -min 0.0 [get_ports {
    m_awvalid
    m_awaddr[*]
    m_awprot[*]

    m_wvalid
    m_wdata[*]
    m_wstrb[*]

    m_bready

    m_arvalid
    m_araddr[*]
    m_arprot[*]

    m_rready
}]

set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports {
    m_awvalid
    m_awaddr[*]
    m_awprot[*]

    m_wvalid
    m_wdata[*]
    m_wstrb[*]

    m_bready

    m_arvalid
    m_araddr[*]
    m_arprot[*]

    m_rready
}]


# ============================================================
# AXI MASTER-SIDE OUTPUTS
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    m_awready
    m_wready

    m_bvalid
    m_bresp[*]

    m_arready

    m_rvalid
    m_rdata[*]
    m_rresp[*]
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    m_awready
    m_wready

    m_bvalid
    m_bresp[*]

    m_arready

    m_rvalid
    m_rdata[*]
    m_rresp[*]
}]

set_load 0.05 [get_ports {
    m_awready
    m_wready

    m_bvalid
    m_bresp[*]

    m_arready

    m_rvalid
    m_rdata[*]
    m_rresp[*]
}]


# ============================================================
# AXI SLAVE-SIDE INPUTS
# NUM_SLAVES = 4
# ============================================================

set_input_delay -clock clk_i -max 2.0 [get_ports {
    s_awready[*]
    s_wready[*]

    s_bvalid[*]
    s_bresp[*]

    s_arready[*]

    s_rvalid[*]
    s_rdata[*]
    s_rresp[*]
}]

set_input_delay -clock clk_i -min 0.0 [get_ports {
    s_awready[*]
    s_wready[*]

    s_bvalid[*]
    s_bresp[*]

    s_arready[*]

    s_rvalid[*]
    s_rdata[*]
    s_rresp[*]
}]

set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports {
    s_awready[*]
    s_wready[*]

    s_bvalid[*]
    s_bresp[*]

    s_arready[*]

    s_rvalid[*]
    s_rdata[*]
    s_rresp[*]
}]


# ============================================================
# AXI SLAVE-SIDE OUTPUTS
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    s_awvalid[*]
    s_awaddr[*]
    s_awprot[*]

    s_wvalid[*]
    s_wdata[*]
    s_wstrb[*]

    s_bready[*]

    s_arvalid[*]
    s_araddr[*]
    s_arprot[*]

    s_rready[*]
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    s_awvalid[*]
    s_awaddr[*]
    s_awprot[*]

    s_wvalid[*]
    s_wdata[*]
    s_wstrb[*]

    s_bready[*]

    s_arvalid[*]
    s_araddr[*]
    s_arprot[*]

    s_rready[*]
}]

set_load 0.05 [get_ports {
    s_awvalid[*]
    s_awaddr[*]
    s_awprot[*]

    s_wvalid[*]
    s_wdata[*]
    s_wstrb[*]

    s_bready[*]

    s_arvalid[*]
    s_araddr[*]
    s_arprot[*]

    s_rready[*]
}]


# ============================================================
# RESET
# ============================================================

set_false_path -from [get_ports rst_ni]

set_input_delay -clock clk_i -min 0.0 [get_ports rst_ni]
set_input_delay -clock clk_i -max 0.0 [get_ports rst_ni]