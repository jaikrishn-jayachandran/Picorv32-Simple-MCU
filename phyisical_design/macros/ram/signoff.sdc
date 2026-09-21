# ============================================================
# ram_macro - Signoff Constraints
# ============================================================

create_clock \
    -name clk_i \
    -period 10.0 \
    [get_ports clk_i]

set_clock_uncertainty 0.15 [get_clocks clk_i]

set_clock_transition 0.10 [get_clocks clk_i]

# ------------------------------------------------------------
# Reset
# ------------------------------------------------------------

set_false_path \
    -from [get_ports rst_ni]

# ------------------------------------------------------------
# Input delays
# ------------------------------------------------------------

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_awaddr[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_awaddr[*]]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_awvalid]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_awvalid]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_wdata[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_wdata[*]]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_wstrb[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_wstrb[*]]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_wvalid]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_wvalid]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_bready]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_bready]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_araddr[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_araddr[*]]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_arvalid]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_arvalid]

set_input_delay -clock clk_i -max 2.0 [get_ports s_axil_rready]
set_input_delay -clock clk_i -min 0.5 [get_ports s_axil_rready]

# ------------------------------------------------------------
# Boot interface
# ------------------------------------------------------------

set_input_delay -clock clk_i -max 2.0 [get_ports boot_we]
set_input_delay -clock clk_i -min 0.5 [get_ports boot_we]

set_input_delay -clock clk_i -max 2.0 [get_ports boot_addr[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports boot_addr[*]]

set_input_delay -clock clk_i -max 2.0 [get_ports boot_wdata[*]]
set_input_delay -clock clk_i -min 0.5 [get_ports boot_wdata[*]]

# ------------------------------------------------------------
# Output delays
# ------------------------------------------------------------

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_awready]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_awready]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_wready]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_wready]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_bresp[*]]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_bresp[*]]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_bvalid]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_bvalid]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_arready]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_arready]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_rdata[*]]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_rdata[*]]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_rresp[*]]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_rresp[*]]

set_output_delay -clock clk_i -max 2.0 [get_ports s_axil_rvalid]
set_output_delay -clock clk_i -min 0.5 [get_ports s_axil_rvalid]

# ------------------------------------------------------------
# Signoff limits
# ------------------------------------------------------------

set_max_fanout 16 [current_design]

set_load 0.10 [all_outputs]