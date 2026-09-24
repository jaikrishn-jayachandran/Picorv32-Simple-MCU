# =============================================================================
# pdn_cfg.tcl — Production PDN for soc_top (macro-only, IHP SG13G2)
#
# All macros have power pins on TopMetal1 (verified from LEF).
# A single top-level grid on TopMetal1 + TopMetal2 connects directly
# to every macro pin via metal overlap. No per-macro grids needed.
# =============================================================================

# 1. Voltage domain
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}

# 2. Global connections — bind every macro PG pin to VDD/VSS.
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$|^VPWR$} -power
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VSS$|^VGND$} -ground

# 3. Single top-level grid over the digital core
define_pdn_grid -name {core_grid} -voltage_domains {CORE}

# 4. Ring around the core boundary on TopMetal1/TopMetal2
add_pdn_ring -grid {core_grid} \
    -layers {TopMetal1 TopMetal2} \
    -widths {4.0 4.0} -spacings {4.0 4.0} \
    -core_offsets {4.5 4.5}

# 5. Straps on TopMetal1 and TopMetal2.
#    Wider straps (6.0) and a moderate pitch (60.0) reduce metal resistance and
#    ensure a larger landing area for via generation.
add_pdn_stripe -grid {core_grid} -layer {TopMetal1} -width {6.0} -pitch {60.0} -offset {30.0}
add_pdn_stripe -grid {core_grid} -layer {TopMetal2} -width {6.0} -pitch {60.0} -offset {30.0}

# 6. Complete the via stack between TopMetal1 and TopMetal2
add_pdn_connect -grid {core_grid} -layers {TopMetal1 TopMetal2}

# 7. Build the grid
pdngen