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
    id 1 \
    name block_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_block_r \
    op interface \
    ports { block_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name q \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_q \
    op interface \
    ports { q { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name voutp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_voutp \
    op interface \
    ports { voutp { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name ignore_dc \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ignore_dc \
    op interface \
    ports { ignore_dc { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name blocks \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blocks \
    op interface \
    ports { blocks { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name block_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_block_out \
    op interface \
    ports { block_out_din { O 64 vector } block_out_full_n { I 1 bit } block_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name q_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_q_out \
    op interface \
    ports { q_out_din { O 64 vector } q_out_full_n { I 1 bit } q_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name voutp_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_voutp_out \
    op interface \
    ports { voutp_out_din { O 64 vector } voutp_out_full_n { I 1 bit } voutp_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name ignore_dc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ignore_dc_out \
    op interface \
    ports { ignore_dc_out_din { O 32 vector } ignore_dc_out_full_n { I 1 bit } ignore_dc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name blocks_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_blocks_out \
    op interface \
    ports { blocks_out_din { O 31 vector } blocks_out_full_n { I 1 bit } blocks_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name blocks_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_blocks_out1 \
    op interface \
    ports { blocks_out1_din { O 32 vector } blocks_out1_full_n { I 1 bit } blocks_out1_write { O 1 bit } } \
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
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


