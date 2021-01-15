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
    id 15 \
    name textBlkStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textBlkStrm \
    op interface \
    ports { textBlkStrm_dout { I 512 vector } textBlkStrm_empty_n { I 1 bit } textBlkStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name msgNumStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_msgNumStrm \
    op interface \
    ports { msgNumStrm_dout { I 64 vector } msgNumStrm_empty_n { I 1 bit } msgNumStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name taskNumStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_taskNumStrm \
    op interface \
    ports { taskNumStrm_dout { I 64 vector } taskNumStrm_empty_n { I 1 bit } taskNumStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name IVInStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVInStrm \
    op interface \
    ports { IVInStrm_dout { I 128 vector } IVInStrm_empty_n { I 1 bit } IVInStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name cipherkeyInStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyInStrm \
    op interface \
    ports { cipherkeyInStrm_dout { I 256 vector } cipherkeyInStrm_empty_n { I 1 bit } cipherkeyInStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name textStrm_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_V_V \
    op interface \
    ports { textStrm_V_V_din { O 128 vector } textStrm_V_V_full_n { I 1 bit } textStrm_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name textStrm_1_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_1_V_V \
    op interface \
    ports { textStrm_1_V_V_din { O 128 vector } textStrm_1_V_V_full_n { I 1 bit } textStrm_1_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name textStrm_2_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_2_V_V \
    op interface \
    ports { textStrm_2_V_V_din { O 128 vector } textStrm_2_V_V_full_n { I 1 bit } textStrm_2_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name textStrm_3_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_3_V_V \
    op interface \
    ports { textStrm_3_V_V_din { O 128 vector } textStrm_3_V_V_full_n { I 1 bit } textStrm_3_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name endTextStrm_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_V \
    op interface \
    ports { endTextStrm_V_din { O 1 bit } endTextStrm_V_full_n { I 1 bit } endTextStrm_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name endTextStrm_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_1_V \
    op interface \
    ports { endTextStrm_1_V_din { O 1 bit } endTextStrm_1_V_full_n { I 1 bit } endTextStrm_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name endTextStrm_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_2_V \
    op interface \
    ports { endTextStrm_2_V_din { O 1 bit } endTextStrm_2_V_full_n { I 1 bit } endTextStrm_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name endTextStrm_3_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_3_V \
    op interface \
    ports { endTextStrm_3_V_din { O 1 bit } endTextStrm_3_V_full_n { I 1 bit } endTextStrm_3_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name IVStrm_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_V_V \
    op interface \
    ports { IVStrm_V_V_din { O 128 vector } IVStrm_V_V_full_n { I 1 bit } IVStrm_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name IVStrm_1_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_1_V_V \
    op interface \
    ports { IVStrm_1_V_V_din { O 128 vector } IVStrm_1_V_V_full_n { I 1 bit } IVStrm_1_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name IVStrm_2_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_2_V_V \
    op interface \
    ports { IVStrm_2_V_V_din { O 128 vector } IVStrm_2_V_V_full_n { I 1 bit } IVStrm_2_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name IVStrm_3_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_3_V_V \
    op interface \
    ports { IVStrm_3_V_V_din { O 128 vector } IVStrm_3_V_V_full_n { I 1 bit } IVStrm_3_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name cipherkeyStrm_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_V_V \
    op interface \
    ports { cipherkeyStrm_V_V_din { O 256 vector } cipherkeyStrm_V_V_full_n { I 1 bit } cipherkeyStrm_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name cipherkeyStrm_1_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_1_V_V \
    op interface \
    ports { cipherkeyStrm_1_V_V_din { O 256 vector } cipherkeyStrm_1_V_V_full_n { I 1 bit } cipherkeyStrm_1_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name cipherkeyStrm_2_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_2_V_V \
    op interface \
    ports { cipherkeyStrm_2_V_V_din { O 256 vector } cipherkeyStrm_2_V_V_full_n { I 1 bit } cipherkeyStrm_2_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name cipherkeyStrm_3_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_3_V_V \
    op interface \
    ports { cipherkeyStrm_3_V_V_din { O 256 vector } cipherkeyStrm_3_V_V_full_n { I 1 bit } cipherkeyStrm_3_V_V_write { O 1 bit } } \
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


