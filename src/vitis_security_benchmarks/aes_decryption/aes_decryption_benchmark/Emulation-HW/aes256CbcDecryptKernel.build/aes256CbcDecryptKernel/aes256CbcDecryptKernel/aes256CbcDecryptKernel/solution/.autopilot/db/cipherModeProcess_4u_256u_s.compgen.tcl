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
    id 149 \
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
    id 150 \
    name IVStrm_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_V_V \
    op interface \
    ports { IVStrm_V_V_dout { I 128 vector } IVStrm_V_V_empty_n { I 1 bit } IVStrm_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name IVStrm_1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_1_V_V \
    op interface \
    ports { IVStrm_1_V_V_dout { I 128 vector } IVStrm_1_V_V_empty_n { I 1 bit } IVStrm_1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name IVStrm_2_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_2_V_V \
    op interface \
    ports { IVStrm_2_V_V_dout { I 128 vector } IVStrm_2_V_V_empty_n { I 1 bit } IVStrm_2_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name IVStrm_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_IVStrm_3_V_V \
    op interface \
    ports { IVStrm_3_V_V_dout { I 128 vector } IVStrm_3_V_V_empty_n { I 1 bit } IVStrm_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name cipherkeyStrm_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_V_V \
    op interface \
    ports { cipherkeyStrm_V_V_dout { I 256 vector } cipherkeyStrm_V_V_empty_n { I 1 bit } cipherkeyStrm_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name cipherkeyStrm_1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_1_V_V \
    op interface \
    ports { cipherkeyStrm_1_V_V_dout { I 256 vector } cipherkeyStrm_1_V_V_empty_n { I 1 bit } cipherkeyStrm_1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name cipherkeyStrm_2_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_2_V_V \
    op interface \
    ports { cipherkeyStrm_2_V_V_dout { I 256 vector } cipherkeyStrm_2_V_V_empty_n { I 1 bit } cipherkeyStrm_2_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name cipherkeyStrm_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cipherkeyStrm_3_V_V \
    op interface \
    ports { cipherkeyStrm_3_V_V_dout { I 256 vector } cipherkeyStrm_3_V_V_empty_n { I 1 bit } cipherkeyStrm_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name textInStrm_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm_V_V \
    op interface \
    ports { textInStrm_V_V_dout { I 128 vector } textInStrm_V_V_empty_n { I 1 bit } textInStrm_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name textInStrm_1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm_1_V_V \
    op interface \
    ports { textInStrm_1_V_V_dout { I 128 vector } textInStrm_1_V_V_empty_n { I 1 bit } textInStrm_1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name textInStrm_2_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm_2_V_V \
    op interface \
    ports { textInStrm_2_V_V_dout { I 128 vector } textInStrm_2_V_V_empty_n { I 1 bit } textInStrm_2_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name textInStrm_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_textInStrm_3_V_V \
    op interface \
    ports { textInStrm_3_V_V_dout { I 128 vector } textInStrm_3_V_V_empty_n { I 1 bit } textInStrm_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name endTextInStrm_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm_V \
    op interface \
    ports { endTextInStrm_V_dout { I 1 bit } endTextInStrm_V_empty_n { I 1 bit } endTextInStrm_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name endTextInStrm_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm_1_V \
    op interface \
    ports { endTextInStrm_1_V_dout { I 1 bit } endTextInStrm_1_V_empty_n { I 1 bit } endTextInStrm_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name endTextInStrm_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm_2_V \
    op interface \
    ports { endTextInStrm_2_V_dout { I 1 bit } endTextInStrm_2_V_empty_n { I 1 bit } endTextInStrm_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name endTextInStrm_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextInStrm_3_V \
    op interface \
    ports { endTextInStrm_3_V_dout { I 1 bit } endTextInStrm_3_V_empty_n { I 1 bit } endTextInStrm_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name textOutStrm_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm_V_V \
    op interface \
    ports { textOutStrm_V_V_din { O 128 vector } textOutStrm_V_V_full_n { I 1 bit } textOutStrm_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name textOutStrm_1_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm_1_V_V \
    op interface \
    ports { textOutStrm_1_V_V_din { O 128 vector } textOutStrm_1_V_V_full_n { I 1 bit } textOutStrm_1_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name textOutStrm_2_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm_2_V_V \
    op interface \
    ports { textOutStrm_2_V_V_din { O 128 vector } textOutStrm_2_V_V_full_n { I 1 bit } textOutStrm_2_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name textOutStrm_3_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_textOutStrm_3_V_V \
    op interface \
    ports { textOutStrm_3_V_V_din { O 128 vector } textOutStrm_3_V_V_full_n { I 1 bit } textOutStrm_3_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name endTextOutStrm_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm_V \
    op interface \
    ports { endTextOutStrm_V_din { O 1 bit } endTextOutStrm_V_full_n { I 1 bit } endTextOutStrm_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name endTextOutStrm_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm_1_V \
    op interface \
    ports { endTextOutStrm_1_V_din { O 1 bit } endTextOutStrm_1_V_full_n { I 1 bit } endTextOutStrm_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name endTextOutStrm_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm_2_V \
    op interface \
    ports { endTextOutStrm_2_V_din { O 1 bit } endTextOutStrm_2_V_full_n { I 1 bit } endTextOutStrm_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name endTextOutStrm_3_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_endTextOutStrm_3_V \
    op interface \
    ports { endTextOutStrm_3_V_din { O 1 bit } endTextOutStrm_3_V_full_n { I 1 bit } endTextOutStrm_3_V_write { O 1 bit } } \
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


