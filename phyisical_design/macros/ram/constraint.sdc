create_clock -name clk_i -period 10.0 [get_ports clk_i]

# Data inputs (everything except clk_i and rst_ni)
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_awaddr[*]}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_awvalid}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_wdata[*]}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_wstrb[*]}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_wvalid}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_bready}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_araddr[*]}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_arvalid}]
set_input_delay -clock clk_i 2.0 [get_ports {s_axil_rready}]
set_input_delay -clock clk_i 2.0 [get_ports {boot_we}]
set_input_delay -clock clk_i 2.0 [get_ports {boot_addr[*]}]
set_input_delay -clock clk_i 2.0 [get_ports {boot_wdata[*]}]

# Data outputs
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_awready}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_wready}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_bresp[*]}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_bvalid}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_arready}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_rdata[*]}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_rresp[*]}]
set_output_delay -clock clk_i 2.0 [get_ports {s_axil_rvalid}]

# Asynchronous reset
set_false_path -from [get_ports rst_ni]