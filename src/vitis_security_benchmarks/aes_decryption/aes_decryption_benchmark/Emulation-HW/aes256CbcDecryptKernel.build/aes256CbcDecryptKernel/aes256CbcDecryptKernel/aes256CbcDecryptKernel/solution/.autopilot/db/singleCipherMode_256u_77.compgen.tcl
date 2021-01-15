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
    id 106 \
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
    id 107 \
    name IVStrm2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm2 \
    op interface \
    ports { IVStrm2_dout { I 128 vector } IVStrm2_empty_n { I 1 bit } IVStrm2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name cipherkeyStrm5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm5 \
    op interface \
    ports { cipherkeyStrm5_dout { I 256 vector } cipherkeyStrm5_empty_n { I 1 bit } cipherkeyStrm5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name textInStrm8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm8 \
    op interface \
    ports { textInStrm8_dout { I 128 vector } textInStrm8_empty_n { I 1 bit } textInStrm8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name endTextInStrm11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm11 \
    op interface \
    ports { endTextInStrm11_dout { I 1 bit } endTextInStrm11_empty_n { I 1 bit } endTextInStrm11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name textOutStrm14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm14 \
    op interface \
    ports { textOutStrm14_din { O 128 vector } textOutStrm14_full_n { I 1 bit } textOutStrm14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name endTextOutStrm17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm17 \
    op interface \
    ports { endTextOutStrm17_din { O 1 bit } endTextOutStrm17_full_n { I 1 bit } endTextOutStrm17_write { O 1 bit } } \
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


