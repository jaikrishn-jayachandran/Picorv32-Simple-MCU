# =============================================================================
# pdn_cfg.tcl  —  Corrected PDN script for soc_top (OpenROAD pdngen syntax)
# =============================================================================

# -----------------------------------------------------------------------------
# 1. Define the voltage domain
# -----------------------------------------------------------------------------
set_voltage_domain -power VDD -ground VSS

# -----------------------------------------------------------------------------
# 2. Connect macro power/ground pins to top-level nets
#    (This replaces the invalid -power_pins flag)
# -----------------------------------------------------------------------------
add_global_connection -net VDD -inst_pattern {u_cpu u_ic u_periph0 u_periph1 u_periph2 u_boot_spi} -pin_pattern VDD -power
add_global_connection -net VSS -inst_pattern {u_cpu u_ic u_periph0 u_periph1 u_periph2 u_boot_spi} -pin_pattern VSS -ground
add_global_connection -net VDD -inst_pattern {u_ram} -pin_pattern VPWR -power
add_global_connection -net VSS -inst_pattern {u_ram} -pin_pattern VGND -ground

# -----------------------------------------------------------------------------
# 3. Define the main power grid for standard cells
# -----------------------------------------------------------------------------
define_pdn_grid -name "Core" -pins {Metal1}

add_pdn_stripe -followpins -layer Metal1 -width 0.17 -extend_to_core_ring

# -----------------------------------------------------------------------------
# 4. Add a core ring around the boundary
# -----------------------------------------------------------------------------
add_pdn_ring -grid "Core" \
    -layers {TopMetal1 TopMetal2} \
    -widths {4.0 4.0} -spacings {4.0 4.0} \
    -core_offsets 4.5 \
    -connect_to_pads

# -----------------------------------------------------------------------------
# 5. Add vertical and horizontal power stripes
# -----------------------------------------------------------------------------
add_pdn_stripe -layer TopMetal1 -width 2.0 -pitch 50.0 -offset 25.0
add_pdn_stripe -layer TopMetal2 -width 2.0 -pitch 50.0 -offset 25.0

# -----------------------------------------------------------------------------
# 6. Connect the different metal layers
# -----------------------------------------------------------------------------
add_pdn_connect -layers {Metal1 TopMetal1}
add_pdn_connect -layers {TopMetal1 TopMetal2}

# -----------------------------------------------------------------------------
# 7. Define a specific grid for the RAM macro
#    (Using the correct -macro signature)
# -----------------------------------------------------------------------------
define_pdn_grid -macro -name "ram_grid" \
    -instances {u_ram} \
    -grid_over_pg_pins \
    -starts_with POWER

# Connect the macro's grid to the main power grid layers
add_pdn_connect -grid "ram_grid" -layers {TopMetal1 TopMetal2}

# -----------------------------------------------------------------------------
# 8. Build the power grid
# -----------------------------------------------------------------------------
pdngen