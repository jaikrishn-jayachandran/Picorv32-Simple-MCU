# ============================================================
# CLOCK
# ============================================================

create_clock -name clk_i \
    -period 10.0 \
    -waveform {0.0 5.0} \
    [get_ports clk_i]

set_clock_uncertainty -setup 0.2 [get_clocks clk_i]
set_clock_uncertainty -hold  0.1 [get_clocks clk_i]
set_clock_transition 0.2 [get_clocks clk_i]


# ============================================================
# SPI INPUT
# ============================================================

set_input_delay -clock clk_i -max 2.0 \
    [get_ports spi_miso]

set_input_delay -clock clk_i -min 0.0 \
    [get_ports spi_miso]

set_driving_cell \
    -lib_cell sg13g2_buf_4 \
    -pin X \
    [get_ports spi_miso]


# ============================================================
# BOOT RAM WRITE INTERFACE
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    boot_we
    boot_addr[*]
    boot_wdata[*]
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    boot_we
    boot_addr[*]
    boot_wdata[*]
}]

set_load 0.05 [get_ports {
    boot_we
    boot_addr[*]
    boot_wdata[*]
}]


# ============================================================
# CPU RESET OUTPUT
# ============================================================

set_output_delay -clock clk_i -max 2.0 \
    [get_ports cpu_rst_n]

set_output_delay -clock clk_i -min 0.0 \
    [get_ports cpu_rst_n]

set_load 0.05 [get_ports cpu_rst_n]


# ============================================================
# SPI OUTPUTS
# ============================================================

set_output_delay -clock clk_i -max 2.0 [get_ports {
    spi_cs_n
    spi_sclk
    spi_mosi
}]

set_output_delay -clock clk_i -min 0.0 [get_ports {
    spi_cs_n
    spi_sclk
    spi_mosi
}]

set_load 0.05 [get_ports {
    spi_cs_n
    spi_sclk
    spi_mosi
}]


# ============================================================
# BOOT STATUS
# ============================================================

set_output_delay -clock clk_i -max 2.0 \
    [get_ports boot_done]

set_output_delay -clock clk_i -min 0.0 \
    [get_ports boot_done]

set_load 0.05 [get_ports boot_done]


# ============================================================
# ASYNCHRONOUS RESET
# ============================================================

set_false_path -from [get_ports rst_ni]