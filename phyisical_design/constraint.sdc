# ============================================================
# Clock
# ============================================================
create_clock -name clk -period 20.0 -waveform {0.0 10.0} [get_ports clk_i]

# ============================================================
# Input delays
# ------------------------------------------------------------
# OpenSTA does not support 'remove_from_collection'. Instead,
# apply input delays to all inputs, then explicitly clear the
# clock port so it is not treated as data.
# ============================================================
set_input_delay -clock clk -max 2.0 [all_inputs]
set_input_delay -clock clk -min 0.5 [all_inputs]
set_input_delay -clock clk -max 0.0 [get_ports clk_i]
set_input_delay -clock clk -min 0.0 [get_ports clk_i]

# ============================================================
# Output delays
# ============================================================
set_output_delay -clock clk -max 2.0 [all_outputs]
set_output_delay -clock clk -min 0.5 [all_outputs]

# ============================================================
# False paths
# ============================================================
# Reset is asynchronous, not timed against the clock
set_false_path -from [get_ports rst_ni]
set_false_path -to   [get_ports rst_ni]

# ============================================================
# Clock uncertainty and latency
# ============================================================
set_clock_uncertainty 0.25 [get_clocks clk]
set_clock_latency     0.5  [get_clocks clk]

# ============================================================
# Drive and load
# ------------------------------------------------------------
# Drive strength now uses an IHP SG13G2 buffer cell.
# The IHP standard cell library names buffers 'sg13g2_buf_N'
# with output pin 'X'.
# ============================================================
set_driving_cell -lib_cell sg13g2_buf_4 -pin X [all_inputs]
set_driving_cell -lib_cell sg13g2_buf_4 -pin X [get_ports clk_i]
set_load 0.05 [all_outputs]

# ============================================================
# Design rules
# ============================================================
set_max_transition 1.5 [current_design]
set_max_capacitance 0.2 [current_design]
set_max_fanout 16 [current_design]