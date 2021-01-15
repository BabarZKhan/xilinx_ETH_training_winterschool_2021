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
    name num \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num \
    op interface \
    ports { num { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size \
    op interface \
    ports { size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_len \
    op interface \
    ports { len { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name adler \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adler \
    op interface \
    ports { adler { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name inData \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inData \
    op interface \
    ports { inData { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name adler32Result \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_adler32Result \
    op interface \
    ports { adler32Result { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name num_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_num_out \
    op interface \
    ports { num_out_din { O 32 vector } num_out_full_n { I 1 bit } num_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name num_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_num_out1 \
    op interface \
    ports { num_out1_din { O 32 vector } num_out1_full_n { I 1 bit } num_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name size_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_out \
    op interface \
    ports { size_out_din { O 32 vector } size_out_full_n { I 1 bit } size_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name len_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_len_out \
    op interface \
    ports { len_out_din { O 64 vector } len_out_full_n { I 1 bit } len_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name adler_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_adler_out \
    op interface \
    ports { adler_out_din { O 64 vector } adler_out_full_n { I 1 bit } adler_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name inData_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_inData_out \
    op interface \
    ports { inData_out_din { O 64 vector } inData_out_full_n { I 1 bit } inData_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name adler32Result_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_adler32Result_out \
    op interface \
    ports { adler32Result_out_din { O 64 vector } adler32Result_out_full_n { I 1 bit } adler32Result_out_write { O 1 bit } } \
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


