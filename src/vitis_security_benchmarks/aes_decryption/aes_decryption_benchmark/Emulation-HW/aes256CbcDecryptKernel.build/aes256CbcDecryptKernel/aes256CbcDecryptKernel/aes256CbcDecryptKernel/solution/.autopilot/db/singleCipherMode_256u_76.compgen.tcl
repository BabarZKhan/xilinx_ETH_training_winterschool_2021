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
    id 99 \
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
    id 100 \
    name IVStrm1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm1 \
    op interface \
    ports { IVStrm1_dout { I 128 vector } IVStrm1_empty_n { I 1 bit } IVStrm1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name cipherkeyStrm4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm4 \
    op interface \
    ports { cipherkeyStrm4_dout { I 256 vector } cipherkeyStrm4_empty_n { I 1 bit } cipherkeyStrm4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name textInStrm7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm7 \
    op interface \
    ports { textInStrm7_dout { I 128 vector } textInStrm7_empty_n { I 1 bit } textInStrm7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name endTextInStrm10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm10 \
    op interface \
    ports { endTextInStrm10_dout { I 1 bit } endTextInStrm10_empty_n { I 1 bit } endTextInStrm10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name textOutStrm13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm13 \
    op interface \
    ports { textOutStrm13_din { O 128 vector } textOutStrm13_full_n { I 1 bit } textOutStrm13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name endTextOutStrm16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm16 \
    op interface \
    ports { endTextOutStrm16_din { O 1 bit } endTextOutStrm16_full_n { I 1 bit } endTextOutStrm16_write { O 1 bit } } \
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


