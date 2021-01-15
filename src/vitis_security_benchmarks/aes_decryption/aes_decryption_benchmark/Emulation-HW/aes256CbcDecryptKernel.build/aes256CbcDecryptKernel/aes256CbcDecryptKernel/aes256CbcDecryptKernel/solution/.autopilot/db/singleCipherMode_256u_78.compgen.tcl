# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name taskNum \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_taskNum \
    op interface \
    ports { taskNum_dout { I 64 vector } taskNum_empty_n { I 1 bit } taskNum_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name IVStrm3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm3 \
    op interface \
    ports { IVStrm3_dout { I 128 vector } IVStrm3_empty_n { I 1 bit } IVStrm3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name cipherkeyStrm6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm6 \
    op interface \
    ports { cipherkeyStrm6_dout { I 256 vector } cipherkeyStrm6_empty_n { I 1 bit } cipherkeyStrm6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name textInStrm9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm9 \
    op interface \
    ports { textInStrm9_dout { I 128 vector } textInStrm9_empty_n { I 1 bit } textInStrm9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name endTextInStrm12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm12 \
    op interface \
    ports { endTextInStrm12_dout { I 1 bit } endTextInStrm12_empty_n { I 1 bit } endTextInStrm12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name textOutStrm15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm15 \
    op interface \
    ports { textOutStrm15_din { O 128 vector } textOutStrm15_full_n { I 1 bit } textOutStrm15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name endTextOutStrm18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm18 \
    op interface \
    ports { endTextOutStrm18_din { O 1 bit } endTextOutStrm18_full_n { I 1 bit } endTextOutStrm18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


