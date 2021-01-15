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
    id 174 \
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
    id 175 \
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
    id 176 \
    name outStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outStrm \
    op interface \
    ports { outStrm_din { O 512 vector } outStrm_full_n { I 1 bit } outStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name burstLenStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_burstLenStrm \
    op interface \
    ports { burstLenStrm_din { O 32 vector } burstLenStrm_full_n { I 1 bit } burstLenStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name textStrm_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_V_V \
    op interface \
    ports { textStrm_V_V_dout { I 128 vector } textStrm_V_V_empty_n { I 1 bit } textStrm_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name textStrm_1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_1_V_V \
    op interface \
    ports { textStrm_1_V_V_dout { I 128 vector } textStrm_1_V_V_empty_n { I 1 bit } textStrm_1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name textStrm_2_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_2_V_V \
    op interface \
    ports { textStrm_2_V_V_dout { I 128 vector } textStrm_2_V_V_empty_n { I 1 bit } textStrm_2_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name textStrm_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textStrm_3_V_V \
    op interface \
    ports { textStrm_3_V_V_dout { I 128 vector } textStrm_3_V_V_empty_n { I 1 bit } textStrm_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name endTextStrm_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_V \
    op interface \
    ports { endTextStrm_V_dout { I 1 bit } endTextStrm_V_empty_n { I 1 bit } endTextStrm_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name endTextStrm_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_1_V \
    op interface \
    ports { endTextStrm_1_V_dout { I 1 bit } endTextStrm_1_V_empty_n { I 1 bit } endTextStrm_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name endTextStrm_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_2_V \
    op interface \
    ports { endTextStrm_2_V_dout { I 1 bit } endTextStrm_2_V_empty_n { I 1 bit } endTextStrm_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name endTextStrm_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextStrm_3_V \
    op interface \
    ports { endTextStrm_3_V_dout { I 1 bit } endTextStrm_3_V_empty_n { I 1 bit } endTextStrm_3_V_read { O 1 bit } } \
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


