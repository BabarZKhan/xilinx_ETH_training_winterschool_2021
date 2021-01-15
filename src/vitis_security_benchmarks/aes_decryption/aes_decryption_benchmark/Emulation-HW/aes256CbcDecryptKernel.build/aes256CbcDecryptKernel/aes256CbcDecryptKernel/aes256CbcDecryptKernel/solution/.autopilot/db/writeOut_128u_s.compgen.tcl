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
    id 186 \
    name burstLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_burstLenStrm \
    op interface \
    ports { burstLenStrm_dout { I 32 vector } burstLenStrm_empty_n { I 1 bit } burstLenStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name blockStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blockStrm \
    op interface \
    ports { blockStrm_dout { I 512 vector } blockStrm_empty_n { I 1 bit } blockStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name gmem0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0_1 \
    op interface \
    ports { m_axi_gmem0_1_AWVALID { O 1 bit } m_axi_gmem0_1_AWREADY { I 1 bit } m_axi_gmem0_1_AWADDR { O 64 vector } m_axi_gmem0_1_AWID { O 1 vector } m_axi_gmem0_1_AWLEN { O 32 vector } m_axi_gmem0_1_AWSIZE { O 3 vector } m_axi_gmem0_1_AWBURST { O 2 vector } m_axi_gmem0_1_AWLOCK { O 2 vector } m_axi_gmem0_1_AWCACHE { O 4 vector } m_axi_gmem0_1_AWPROT { O 3 vector } m_axi_gmem0_1_AWQOS { O 4 vector } m_axi_gmem0_1_AWREGION { O 4 vector } m_axi_gmem0_1_AWUSER { O 1 vector } m_axi_gmem0_1_WVALID { O 1 bit } m_axi_gmem0_1_WREADY { I 1 bit } m_axi_gmem0_1_WDATA { O 512 vector } m_axi_gmem0_1_WSTRB { O 64 vector } m_axi_gmem0_1_WLAST { O 1 bit } m_axi_gmem0_1_WID { O 1 vector } m_axi_gmem0_1_WUSER { O 1 vector } m_axi_gmem0_1_ARVALID { O 1 bit } m_axi_gmem0_1_ARREADY { I 1 bit } m_axi_gmem0_1_ARADDR { O 64 vector } m_axi_gmem0_1_ARID { O 1 vector } m_axi_gmem0_1_ARLEN { O 32 vector } m_axi_gmem0_1_ARSIZE { O 3 vector } m_axi_gmem0_1_ARBURST { O 2 vector } m_axi_gmem0_1_ARLOCK { O 2 vector } m_axi_gmem0_1_ARCACHE { O 4 vector } m_axi_gmem0_1_ARPROT { O 3 vector } m_axi_gmem0_1_ARQOS { O 4 vector } m_axi_gmem0_1_ARREGION { O 4 vector } m_axi_gmem0_1_ARUSER { O 1 vector } m_axi_gmem0_1_RVALID { I 1 bit } m_axi_gmem0_1_RREADY { O 1 bit } m_axi_gmem0_1_RDATA { I 512 vector } m_axi_gmem0_1_RLAST { I 1 bit } m_axi_gmem0_1_RID { I 1 vector } m_axi_gmem0_1_RUSER { I 1 vector } m_axi_gmem0_1_RRESP { I 2 vector } m_axi_gmem0_1_BVALID { I 1 bit } m_axi_gmem0_1_BREADY { O 1 bit } m_axi_gmem0_1_BRESP { I 2 vector } m_axi_gmem0_1_BID { I 1 vector } m_axi_gmem0_1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name ptr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ptr \
    op interface \
    ports { ptr_dout { I 64 vector } ptr_empty_n { I 1 bit } ptr_read { O 1 bit } } \
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


