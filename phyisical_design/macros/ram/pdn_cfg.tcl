# SPDX-License-Identifier: Apache-2.0
#
# IHP SG13G2 / LibreLane PDN configuration
#
# Design:
#   ram_macro
#
# Main logical power nets:
#   VPWR
#   VGND
#
# SRAM:
#   RM_IHPSG13_1P_1024x32_c2_bm_bist
#
# SRAM physical power pins:
#   VDD!
#   VDDARRAY!
#   VSS!
#
# Physical mapping:
#
#   VPWR -> VDD!
#   VPWR -> VDDARRAY!
#   VGND -> VSS!
#
# SRAM power pins are on Metal4.
#
# SRAM local PDN:
#
#   TopMetal1
#       |
#     Metal5
#       |
#     Metal4
#       |
#   SRAM power pins
#
# Main PDN:
#
#   TopMetal1 = vertical
#   TopMetal2 = horizontal


# ============================================================
# LibreLane/OpenROAD helpers
# ============================================================

source $::env(SCRIPTS_DIR)/openroad/common/io.tcl
source $::env(SCRIPTS_DIR)/openroad/common/set_global_connections.tcl

set_global_connections


# ============================================================
# Voltage domain
# ============================================================

set secondary []

foreach vdd $::env(VDD_NETS) gnd $::env(GND_NETS) {

    if { $vdd != $::env(VDD_NET) } {

        lappend secondary $vdd

        set db_net [[ord::get_db_block] findNet $vdd]

        if {$db_net == "NULL"} {
            set net [odb::dbNet_create [ord::get_db_block] $vdd]
            $net setSpecial
            $net setSigType "POWER"
        }
    }

    if { $gnd != $::env(GND_NET) } {

        lappend secondary $gnd

        set db_net [[ord::get_db_block] findNet $gnd]

        if {$db_net == "NULL"} {
            set net [odb::dbNet_create [ord::get_db_block] $gnd]
            $net setSpecial
            $net setSigType "GROUND"
        }
    }
}


set_voltage_domain \
    -name CORE \
    -power $::env(VDD_NET) \
    -ground $::env(GND_NET) \
    -secondary_power $secondary


# ============================================================
# Standard-cell PDN
#
# TopMetal1 = vertical
# TopMetal2 = horizontal
# ============================================================

if { $::env(PDN_MULTILAYER) == 1 } {

    set arg_list [list]

    if { $::env(PDN_ENABLE_PINS) } {
        lappend arg_list \
            -pins "$::env(PDN_VERTICAL_LAYER) $::env(PDN_HORIZONTAL_LAYER)"
    }

    define_pdn_grid \
        -name stdcell_grid \
        -starts_with POWER \
        -voltage_domain CORE \
        {*}$arg_list


    set arg_list [list]

    append_if_equals \
        arg_list \
        PDN_EXTEND_TO \
        "core_ring" \
        -extend_to_core_ring

    append_if_equals \
        arg_list \
        PDN_EXTEND_TO \
        "boundary" \
        -extend_to_boundary


    # --------------------------------------------------------
    # TopMetal1 vertical
    # --------------------------------------------------------

    add_pdn_stripe \
        -grid stdcell_grid \
        -layer $::env(PDN_VERTICAL_LAYER) \
        -width $::env(PDN_VWIDTH) \
        -pitch $::env(PDN_VPITCH) \
        -offset $::env(PDN_VOFFSET) \
        -spacing $::env(PDN_VSPACING) \
        -starts_with POWER \
        {*}$arg_list


    # --------------------------------------------------------
    # TopMetal2 horizontal
    # --------------------------------------------------------

    add_pdn_stripe \
        -grid stdcell_grid \
        -layer $::env(PDN_HORIZONTAL_LAYER) \
        -width $::env(PDN_HWIDTH) \
        -pitch $::env(PDN_HPITCH) \
        -offset $::env(PDN_HOFFSET) \
        -spacing $::env(PDN_HSPACING) \
        -starts_with POWER \
        {*}$arg_list


    add_pdn_connect \
        -grid stdcell_grid \
        -layers "$::env(PDN_VERTICAL_LAYER) $::env(PDN_HORIZONTAL_LAYER)"

} else {

    set arg_list [list]

    if { $::env(PDN_ENABLE_PINS) } {
        lappend arg_list \
            -pins "$::env(PDN_VERTICAL_LAYER)"
    }

    define_pdn_grid \
        -name stdcell_grid \
        -starts_with POWER \
        -voltage_domain CORE \
        {*}$arg_list


    set arg_list [list]

    append_if_equals \
        arg_list \
        PDN_EXTEND_TO \
        "core_ring" \
        -extend_to_core_ring

    append_if_equals \
        arg_list \
        PDN_EXTEND_TO \
        "boundary" \
        -extend_to_boundary


    add_pdn_stripe \
        -grid stdcell_grid \
        -layer $::env(PDN_VERTICAL_LAYER) \
        -width $::env(PDN_VWIDTH) \
        -pitch $::env(PDN_VPITCH) \
        -offset $::env(PDN_VOFFSET) \
        -spacing $::env(PDN_VSPACING) \
        -starts_with POWER \
        {*}$arg_list
}


# ============================================================
# Standard-cell rails
# ============================================================

if { $::env(PDN_ENABLE_RAILS) == 1 } {

    add_pdn_stripe \
        -grid stdcell_grid \
        -layer $::env(PDN_RAIL_LAYER) \
        -width $::env(PDN_RAIL_WIDTH) \
        -followpins

    add_pdn_connect \
        -grid stdcell_grid \
        -layers "$::env(PDN_RAIL_LAYER) $::env(PDN_VERTICAL_LAYER)"
}


# ============================================================
# Core ring
#
# Disabled for this standalone RAM macro.
#
# If PDN_CORE_RING is later enabled, LibreLane will execute
# the standard core-ring section.
# ============================================================

if { $::env(PDN_CORE_RING) == 1 } {

    if { $::env(PDN_MULTILAYER) == 1 } {

        set arg_list [list]

        append_if_flag \
            arg_list \
            PDN_CORE_RING_ALLOW_OUT_OF_DIE \
            -allow_out_of_die

        append_if_flag \
            arg_list \
            PDN_CORE_RING_CONNECT_TO_PADS \
            -connect_to_pads

        append_if_equals \
            arg_list \
            PDN_EXTEND_TO \
            "boundary" \
            -extend_to_boundary


        set pdn_core_vertical_layer \
            $::env(PDN_VERTICAL_LAYER)

        set pdn_core_horizontal_layer \
            $::env(PDN_HORIZONTAL_LAYER)


        if { [info exists ::env(PDN_CORE_VERTICAL_LAYER)] } {
            set pdn_core_vertical_layer \
                $::env(PDN_CORE_VERTICAL_LAYER)
        }

        if { [info exists ::env(PDN_CORE_HORIZONTAL_LAYER)] } {
            set pdn_core_horizontal_layer \
                $::env(PDN_CORE_HORIZONTAL_LAYER)
        }


        add_pdn_ring \
            -grid stdcell_grid \
            -layers "$pdn_core_vertical_layer $pdn_core_horizontal_layer" \
            -widths "$::env(PDN_CORE_RING_VWIDTH) $::env(PDN_CORE_RING_HWIDTH)" \
            -spacings "$::env(PDN_CORE_RING_VSPACING) $::env(PDN_CORE_RING_HSPACING)" \
            -core_offset "$::env(PDN_CORE_RING_VOFFSET) $::env(PDN_CORE_RING_HOFFSET)" \
            {*}$arg_list


        if { [info exists ::env(PDN_CORE_VERTICAL_LAYER)] } {

            add_pdn_connect \
                -grid stdcell_grid \
                -layers "$::env(PDN_CORE_VERTICAL_LAYER) $::env(PDN_HORIZONTAL_LAYER)"
        }


        if { [info exists ::env(PDN_CORE_HORIZONTAL_LAYER)] } {

            add_pdn_connect \
                -grid stdcell_grid \
                -layers "$::env(PDN_CORE_HORIZONTAL_LAYER) $::env(PDN_VERTICAL_LAYER)"
        }


        if {
            [info exists ::env(PDN_CORE_VERTICAL_LAYER)] &&
            [info exists ::env(PDN_CORE_HORIZONTAL_LAYER)]
        } {

            add_pdn_connect \
                -grid stdcell_grid \
                -layers "$::env(PDN_CORE_VERTICAL_LAYER) $::env(PDN_CORE_HORIZONTAL_LAYER)"
        }

    } else {

        throw APPLICATION \
            "PDN_CORE_RING cannot be used when PDN_MULTILAYER is set to false."
    }
}


# ============================================================
# Generic macro PDN grid
# ============================================================

define_pdn_grid \
    -macro \
    -default \
    -name macro \
    -starts_with POWER \
    -halo "$::env(PDN_HORIZONTAL_HALO) $::env(PDN_VERTICAL_HALO)"


add_pdn_connect \
    -grid macro \
    -layers "$::env(PDN_VERTICAL_LAYER) $::env(PDN_HORIZONTAL_LAYER)"


# ============================================================
# SRAM-specific PDN
#
# Instance:
#   u_sram
#
# Orientation:
#   N
#
# Physical SRAM supply pins:
#
#   VDD!
#   VDDARRAY!
#   VSS!
#
# Logical design nets:
#
#   VPWR
#   VGND
#
# Physical mapping is established by:
#
#   PDN_MACRO_CONNECTIONS
#
#     u_sram VPWR VGND VDD! VSS!
#     u_sram VPWR VGND VDDARRAY! VSS!
#
#
# SRAM LEF power pins are on Metal4.
#
# Dedicated local grid:
#
#   Metal4
#      |
#     Via4
#      |
#   Metal5
#      |
#   TopVia1
#      |
#   TopMetal1
#
# ============================================================

define_pdn_grid \
    -macro \
    -instances "u_sram" \
    -name sram_NS \
    -starts_with POWER


# ============================================================
# SRAM Metal5 stripes
#
# IMPORTANT:
#
# Do NOT use:
#
#   VSS
#   VDD
#
# Those are physical SRAM pin names in the LEF.
#
# The design-level nets are:
#
#   VGND
#   VPWR
#
# Therefore use the environment power nets here.
# ============================================================

add_pdn_stripe \
    -grid sram_NS \
    -layer Metal5 \
    -width 2.81 \
    -pitch 11.24 \
    -offset 2.81 \
    -spacing 2.81 \
    -nets "$::env(GND_NET) $::env(VDD_NET)" \
    -starts_with POWER


# ============================================================
# SRAM Metal4 <-> Metal5
#
# Reaches:
#
#   VDD!
#   VDDARRAY!
#   VSS!
#
# on the SRAM LEF.
# ============================================================

add_pdn_connect \
    -grid sram_NS \
    -layers "Metal4 Metal5"


# ============================================================
# SRAM Metal5 <-> TopMetal1
#
# Connects the SRAM local PDN to the main PDN.
# ============================================================

add_pdn_connect \
    -grid sram_NS \
    -layers "Metal5 TopMetal1"