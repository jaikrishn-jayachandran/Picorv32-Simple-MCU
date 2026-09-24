# =============================================================
# soc_top timing constraints
# PDK: ihp-sg13g2   Clock: clk_i @ 100 MHz (10 ns)
# =============================================================

set_units -time ns -capacitance pF -voltage V

# ---------- Primary clock ----------
create_clock -name clk -period 10.0 -waveform {0.0 5.0} [get_ports clk_i]

# ---------- Clock uncertainty / transition ----------
set_clock_uncertainty 0.20 [get_clocks clk]
set_clock_transition  0.10 [get_clocks clk]

# ---------- Reset: async-assert, sync-deassert ----------
# Assertion can occur at any time. Deassertion is timed to a clock edge,
# so recovery/removal is checked via the input delays below.
set_input_delay -clock clk -max 2.0 [get_ports rst_ni]
set_input_delay -clock clk -min 0.5 [get_ports rst_ni]
set_false_path -from [get_ports rst_ni] -to [all_registers]

# ---------- Input delays (GPIO + SPI MISO) ----------
set_input_delay -clock clk -max 2.0 [get_ports {gpio0_in[*] gpio1_in[*] gpio2_in[*] spi_miso}]
set_input_delay -clock clk -min 0.5 [get_ports {gpio0_in[*] gpio1_in[*] gpio2_in[*] spi_miso}]

# ---------- Output delays (GPIO + all SPI outputs) ----------
# spi_sclk is a buffered flop output driven at clk frequency, so it is
# treated as a regular data output referenced to clk.
set_output_delay -clock clk -max 2.0 [get_ports {gpio0_out[*] gpio0_dir[*] \
                                                gpio1_out[*] gpio1_dir[*] \
                                                gpio2_out[*] gpio2_dir[*] \
                                                spi_cs_n spi_sclk spi_mosi}]
set_output_delay -clock clk -min 0.5 [get_ports {gpio0_out[*] gpio0_dir[*] \
                                                gpio1_out[*] gpio1_dir[*] \
                                                gpio2_out[*] gpio2_dir[*] \
                                                spi_cs_n spi_sclk spi_mosi}]