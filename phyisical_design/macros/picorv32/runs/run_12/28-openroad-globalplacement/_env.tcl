set ::env(STEP_ID) OpenROAD.GlobalPlacement
set ::env(TECH_LEF) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef
set ::env(MACRO_LEFS) ""
set ::env(STD_CELL_LIBRARY) sg13g2_stdcell
set ::env(VDD_PIN) VPWR
set ::env(GND_PIN) VGND
set ::env(TECH_LEFS) "\"*\" /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef"
set ::env(PRIMARY_GDSII_STREAMOUT_TOOL) klayout
set ::env(DEFAULT_CORNER) nom_typ_1p20V_25C
set ::env(STA_CORNERS) "nom_fast_1p32V_m40C nom_slow_1p08V_125C nom_typ_1p20V_25C"
set ::env(RT_MIN_LAYER) Metal2
set ::env(RT_MAX_LAYER) TopMetal2
set ::env(SCL_GROUND_PINS) VSS
set ::env(SCL_POWER_PINS) VDD
set ::env(TRISTATE_CELLS) "\"sg13g2_ebufn_*\" \"sg13g2_einvn_*\""
set ::env(FILL_CELLS) "sg13g2_fill_1 sg13g2_fill_2"
set ::env(DECAP_CELLS) "\"sg13g2_decap_*\""
set ::env(LIB) "\"*_typ_1p20V_25C\" \"/home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_typ_1p2V_3p3V_25C.lib\" \"*_fast_1p32V_m40C\" \"/home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_fast_1p32V_m40C.lib /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_fast_1p32V_3p6V_m40C.lib\" \"*_slow_1p08V_125C\" \"/home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_slow_1p08V_125C.lib /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_slow_1p08V_3p0V_125C.lib\""
set ::env(CELL_LEFS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef
set ::env(CELL_GDS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds
set ::env(CELL_VERILOG_MODELS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/verilog/sg13g2_stdcell.v
set ::env(CELL_SPICE_MODELS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
set ::env(CELL_CDLS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/cdl/sg13g2_stdcell.cdl
set ::env(SYNTH_EXCLUDED_CELL_FILE) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.tech/librelane/sg13g2_stdcell/synth_exclude.cells
set ::env(PNR_EXCLUDED_CELL_FILE) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.tech/librelane/sg13g2_stdcell/pnr_exclude.cells
set ::env(OUTPUT_CAP_LOAD) 6.0
set ::env(MAX_FANOUT_CONSTRAINT) 8
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5.0
set ::env(IO_DELAY_CONSTRAINT) 20.0
set ::env(SYNTH_DRIVING_CELL) sg13g2_buf_4/X
set ::env(SYNTH_TIEHI_CELL) sg13g2_tiehi/L_HI
set ::env(SYNTH_TIELO_CELL) sg13g2_tielo/L_LO
set ::env(SYNTH_BUFFER_CELL) sg13g2_buf_1/A/X
set ::env(PLACE_SITE) CoreSite
set ::env(CELL_PAD_EXCLUDE) "\"sg13g2_fill_*\" \"sg13g2_decap_*\""
set ::env(DIODE_CELL) sg13g2_antennanp/A
set ::env(DESIGN_NAME) picorv32_macro
set ::env(CLOCK_PERIOD) 10.0
set ::env(CLOCK_PORT) clk_i
set ::env(VDD_NETS) VDD
set ::env(GND_NETS) VSS
set ::env(FALLBACK_SDC) /nix/store/8y4m6wgn5kqlbig1qwnwbxijqqp0jwib-python3-3.13.9-env/lib/python3.13/site-packages/librelane/scripts/base.sdc
set ::env(PAD_LEFS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/lef/sg13g2_io.lef
set ::env(PAD_GDS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/gds/sg13g2_io.gds
set ::env(PAD_VERILOG_MODELS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/verilog/sg13g2_io.v
set ::env(PAD_SPICE_MODELS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/spice/sg13g2_io.spice
set ::env(PAD_CDLS) /home/jaikrishn/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/cdl/sg13g2_io.cdl
set ::env(PAD_CORNER) sg13g2_Corner
set ::env(PAD_FILLERS) "sg13g2_Filler10000 sg13g2_Filler4000 sg13g2_Filler2000 sg13g2_Filler1000 sg13g2_Filler400 sg13g2_Filler200"
set ::env(PAD_SITE_NAME) sg13g2_ioSite
set ::env(PAD_CORNER_SITE_NAME) sg13g2_cornerSite
set ::env(PAD_BONDPAD_NAME) bondpad_70x70
set ::env(PAD_BONDPAD_WIDTH) 70.0
set ::env(PAD_BONDPAD_HEIGHT) 70.0
set ::env(PAD_BONDPAD_OFFSETS) "\"sg13g2_IOPad*\" \"5.0 -70.0\""
set ::env(PAD_EDGE_SPACING) 140.0
set ::env(SET_RC_VERBOSE) 0
set ::env(LAYERS_RC) "\"*\" \"Metal1 \\\"res 0.00854576 cap 1E-10\\\" Metal2 \\\"res 0.00253519 cap 0.000169121\\\" Metal3 \\\"res 0.00154329 cap 0.000182832\\\" Metal4 \\\"res 0.000631424 cap 0.000166454\\\" Metal5 \\\"res 0.000684051 cap 0.0000857431\\\"\""
set ::env(VIAS_R) "\"*\" \"Cont \\\"res 0.0022\\\" Via1 \\\"res 0.0020\\\" Via2 \\\"res 0.0020\\\" Via3 \\\"res 0.0020\\\" Via4 \\\"res 0.0020\\\" TopVia1 \\\"res 0.0004\\\" TopVia2 \\\"res 0.00022\\\"\""
set ::env(PDN_CONNECT_MACROS_TO_GRID) 1
set ::env(PDN_ENABLE_GLOBAL_CONNECTIONS) 1
set ::env(PNR_SDC_FILE) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/constraint.sdc
set ::env(DEDUPLICATE_CORNERS) 0
set ::env(GRT_ADJUSTMENT) 0.299999999999999988897769753748434595763683319091796875
set ::env(GRT_MACRO_EXTENSION) 0
set ::env(GRT_LAYER_ADJUSTMENTS) "0.0 0.0 0.0 0.0 0.0 0.0 0.0"
set ::env(PL_OPTIMIZE_MIRRORING) 1
set ::env(PL_MAX_DISPLACEMENT_X) 500
set ::env(PL_MAX_DISPLACEMENT_Y) 100
set ::env(DPL_CELL_PADDING) 0
set ::env(RSZ_DONT_TOUCH_RX) "\$^"
set ::env(PL_TARGET_DENSITY_PCT) 45.0
set ::env(PL_SKIP_INITIAL_PLACEMENT) 0
set ::env(PL_WIRE_LENGTH_COEF) 0.25
set ::env(FP_CORE_UTIL) 35.0
set ::env(GPL_CELL_PADDING) 0
set ::env(PL_TIMING_DRIVEN) 0
set ::env(PL_ROUTABILITY_DRIVEN) 1
set ::env(CURRENT_ODB) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/26-odb-customioplacement/picorv32_macro.odb
set ::env(SAVE_ODB) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/28-openroad-globalplacement/picorv32_macro.odb
set ::env(SAVE_DEF) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/28-openroad-globalplacement/picorv32_macro.def
set ::env(SAVE_SDC) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/28-openroad-globalplacement/picorv32_macro.sdc
set ::env(SAVE_NL) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/28-openroad-globalplacement/picorv32_macro.nl.v
set ::env(SAVE_PNL) /home/jaikrishn/Documents/hardware/picorv32_axi4lite_port/phyisical_design/macros/picorv32/runs/run_12/28-openroad-globalplacement/picorv32_macro.pnl.v
