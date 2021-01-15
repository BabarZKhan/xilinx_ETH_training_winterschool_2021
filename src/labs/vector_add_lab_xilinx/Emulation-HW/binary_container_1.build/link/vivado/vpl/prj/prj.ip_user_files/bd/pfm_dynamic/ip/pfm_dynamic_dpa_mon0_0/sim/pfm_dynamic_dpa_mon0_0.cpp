// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "pfm_dynamic_dpa_mon0_0_sc.h"

#include "pfm_dynamic_dpa_mon0_0.h"

#include "sim_accel_mon.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tlast("m_axis_tlast"), m_axis_tid("m_axis_tid"), m_axis_tdest("m_axis_tdest"), m_axis_tvalid("m_axis_tvalid")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_S_AXI_MON_transactor = NULL;
  mp_TRACE_OUT_transactor = NULL;
  mp_m_axis_tready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWPROT(s_axi_awprot);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_skt->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_skt->bind(*(mp_S_AXI_transactor->wr_socket));
  }

  // configure 'S_AXI_MON' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_MON_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_MON' transactor parameters
    xsc::common_cpp::properties S_AXI_MON_transactor_param_props;
    S_AXI_MON_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_MON_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_MON_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_MON_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_MON_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_MON_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_MON_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_MON_transactor = new xtlm::xaximm_monitor_t<32,32,1,1,1,1,1,1>("S_AXI_MON_transactor", S_AXI_MON_transactor_param_props);

    // S_AXI_MON' transactor ports

    mp_S_AXI_MON_transactor->ARADDR(mon_ARADDR);
    mp_S_AXI_MON_transactor->ARREADY(mon_ARREADY);
    mp_S_AXI_MON_transactor->ARVALID(mon_ARVALID);
    mp_S_AXI_MON_transactor->AWADDR(mon_AWADDR);
    mp_S_AXI_MON_transactor->AWREADY(mon_AWREADY);
    mp_S_AXI_MON_transactor->AWVALID(mon_AWVALID);
    mp_S_AXI_MON_transactor->BREADY(mon_BREADY);
    mp_S_AXI_MON_transactor->BRESP(mon_BRESP);
    mp_S_AXI_MON_transactor->BVALID(mon_BVALID);
    mp_S_AXI_MON_transactor->RDATA(mon_RDATA);
    mp_S_AXI_MON_transactor->RREADY(mon_RREADY);
    mp_S_AXI_MON_transactor->RRESP(mon_RRESP);
    mp_S_AXI_MON_transactor->RVALID(mon_RVALID);
    mp_S_AXI_MON_transactor->WDATA(mon_WDATA);
    mp_S_AXI_MON_transactor->WREADY(mon_WREADY);
    mp_S_AXI_MON_transactor->WSTRB(mon_WSTRB);
    mp_S_AXI_MON_transactor->WVALID(mon_WVALID);
    mp_S_AXI_MON_transactor->CLK(mon_clk);
    mp_S_AXI_MON_transactor->RST(mon_resetn);

    // S_AXI_MON' transactor sockets

    mp_impl->mon_rd_skt->bind(*(mp_S_AXI_MON_transactor->rd_socket));
    mp_impl->mon_wr_skt->bind(*(mp_S_AXI_MON_transactor->wr_socket));
  }

  // configure 'TRACE_OUT' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_transactor_param_props;
    TRACE_OUT_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_transactor_param_props.addFloat("PHASE", "0.000");
    TRACE_OUT_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_transactor", TRACE_OUT_transactor_param_props);

    // TRACE_OUT' transactor ports

    mp_TRACE_OUT_transactor->TDATA(m_axis_tdata);
    mp_TRACE_OUT_transactor->TDEST(m_axis_tdest);
    mp_TRACE_OUT_transactor->TID(m_axis_tid);
    mp_TRACE_OUT_transactor->TLAST(m_axis_tlast);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TVALID(m_axis_tvalid);
    mp_TRACE_OUT_transactor->CLK(trace_clk);
    mp_TRACE_OUT_transactor->RST(trace_rst);

    // TRACE_OUT' transactor sockets

    mp_impl->trace_skt->bind(*(mp_TRACE_OUT_transactor->socket));
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tlast("m_axis_tlast"), m_axis_tid("m_axis_tid"), m_axis_tdest("m_axis_tdest"), m_axis_tvalid("m_axis_tvalid")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_S_AXI_MON_transactor = NULL;
  mp_TRACE_OUT_transactor = NULL;
  mp_m_axis_tready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWPROT(s_axi_awprot);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_skt->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_skt->bind(*(mp_S_AXI_transactor->wr_socket));
  }

  // configure 'S_AXI_MON' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_MON_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_MON' transactor parameters
    xsc::common_cpp::properties S_AXI_MON_transactor_param_props;
    S_AXI_MON_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_MON_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_MON_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_MON_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_MON_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_MON_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_MON_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_MON_transactor = new xtlm::xaximm_monitor_t<32,32,1,1,1,1,1,1>("S_AXI_MON_transactor", S_AXI_MON_transactor_param_props);

    // S_AXI_MON' transactor ports

    mp_S_AXI_MON_transactor->ARADDR(mon_ARADDR);
    mp_S_AXI_MON_transactor->ARREADY(mon_ARREADY);
    mp_S_AXI_MON_transactor->ARVALID(mon_ARVALID);
    mp_S_AXI_MON_transactor->AWADDR(mon_AWADDR);
    mp_S_AXI_MON_transactor->AWREADY(mon_AWREADY);
    mp_S_AXI_MON_transactor->AWVALID(mon_AWVALID);
    mp_S_AXI_MON_transactor->BREADY(mon_BREADY);
    mp_S_AXI_MON_transactor->BRESP(mon_BRESP);
    mp_S_AXI_MON_transactor->BVALID(mon_BVALID);
    mp_S_AXI_MON_transactor->RDATA(mon_RDATA);
    mp_S_AXI_MON_transactor->RREADY(mon_RREADY);
    mp_S_AXI_MON_transactor->RRESP(mon_RRESP);
    mp_S_AXI_MON_transactor->RVALID(mon_RVALID);
    mp_S_AXI_MON_transactor->WDATA(mon_WDATA);
    mp_S_AXI_MON_transactor->WREADY(mon_WREADY);
    mp_S_AXI_MON_transactor->WSTRB(mon_WSTRB);
    mp_S_AXI_MON_transactor->WVALID(mon_WVALID);
    mp_S_AXI_MON_transactor->CLK(mon_clk);
    mp_S_AXI_MON_transactor->RST(mon_resetn);

    // S_AXI_MON' transactor sockets

    mp_impl->mon_rd_skt->bind(*(mp_S_AXI_MON_transactor->rd_socket));
    mp_impl->mon_wr_skt->bind(*(mp_S_AXI_MON_transactor->wr_socket));
  }

  // configure 'TRACE_OUT' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_transactor_param_props;
    TRACE_OUT_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_transactor_param_props.addFloat("PHASE", "0.000");
    TRACE_OUT_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_transactor", TRACE_OUT_transactor_param_props);

    // TRACE_OUT' transactor ports

    mp_TRACE_OUT_transactor->TDATA(m_axis_tdata);
    mp_TRACE_OUT_transactor->TDEST(m_axis_tdest);
    mp_TRACE_OUT_transactor->TID(m_axis_tid);
    mp_TRACE_OUT_transactor->TLAST(m_axis_tlast);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TVALID(m_axis_tvalid);
    mp_TRACE_OUT_transactor->CLK(trace_clk);
    mp_TRACE_OUT_transactor->RST(trace_rst);

    // TRACE_OUT' transactor sockets

    mp_impl->trace_skt->bind(*(mp_TRACE_OUT_transactor->socket));
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tlast("m_axis_tlast"), m_axis_tid("m_axis_tid"), m_axis_tdest("m_axis_tdest"), m_axis_tvalid("m_axis_tvalid")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_S_AXI_MON_transactor = NULL;
  mp_TRACE_OUT_transactor = NULL;
  mp_m_axis_tready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWPROT(s_axi_awprot);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_skt->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_skt->bind(*(mp_S_AXI_transactor->wr_socket));
  }

  // configure 'S_AXI_MON' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_MON_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_MON' transactor parameters
    xsc::common_cpp::properties S_AXI_MON_transactor_param_props;
    S_AXI_MON_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_MON_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_MON_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_MON_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_MON_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_MON_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_MON_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_MON_transactor = new xtlm::xaximm_monitor_t<32,32,1,1,1,1,1,1>("S_AXI_MON_transactor", S_AXI_MON_transactor_param_props);

    // S_AXI_MON' transactor ports

    mp_S_AXI_MON_transactor->ARADDR(mon_ARADDR);
    mp_S_AXI_MON_transactor->ARREADY(mon_ARREADY);
    mp_S_AXI_MON_transactor->ARVALID(mon_ARVALID);
    mp_S_AXI_MON_transactor->AWADDR(mon_AWADDR);
    mp_S_AXI_MON_transactor->AWREADY(mon_AWREADY);
    mp_S_AXI_MON_transactor->AWVALID(mon_AWVALID);
    mp_S_AXI_MON_transactor->BREADY(mon_BREADY);
    mp_S_AXI_MON_transactor->BRESP(mon_BRESP);
    mp_S_AXI_MON_transactor->BVALID(mon_BVALID);
    mp_S_AXI_MON_transactor->RDATA(mon_RDATA);
    mp_S_AXI_MON_transactor->RREADY(mon_RREADY);
    mp_S_AXI_MON_transactor->RRESP(mon_RRESP);
    mp_S_AXI_MON_transactor->RVALID(mon_RVALID);
    mp_S_AXI_MON_transactor->WDATA(mon_WDATA);
    mp_S_AXI_MON_transactor->WREADY(mon_WREADY);
    mp_S_AXI_MON_transactor->WSTRB(mon_WSTRB);
    mp_S_AXI_MON_transactor->WVALID(mon_WVALID);
    mp_S_AXI_MON_transactor->CLK(mon_clk);
    mp_S_AXI_MON_transactor->RST(mon_resetn);

    // S_AXI_MON' transactor sockets

    mp_impl->mon_rd_skt->bind(*(mp_S_AXI_MON_transactor->rd_socket));
    mp_impl->mon_wr_skt->bind(*(mp_S_AXI_MON_transactor->wr_socket));
  }

  // configure 'TRACE_OUT' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_transactor_param_props;
    TRACE_OUT_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_transactor_param_props.addFloat("PHASE", "0.000");
    TRACE_OUT_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_transactor", TRACE_OUT_transactor_param_props);

    // TRACE_OUT' transactor ports

    mp_TRACE_OUT_transactor->TDATA(m_axis_tdata);
    mp_TRACE_OUT_transactor->TDEST(m_axis_tdest);
    mp_TRACE_OUT_transactor->TID(m_axis_tid);
    mp_TRACE_OUT_transactor->TLAST(m_axis_tlast);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TVALID(m_axis_tvalid);
    mp_TRACE_OUT_transactor->CLK(trace_clk);
    mp_TRACE_OUT_transactor->RST(trace_rst);

    // TRACE_OUT' transactor sockets

    mp_impl->trace_skt->bind(*(mp_TRACE_OUT_transactor->socket));
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm),  mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tlast("m_axis_tlast"), m_axis_tid("m_axis_tid"), m_axis_tdest("m_axis_tdest"), m_axis_tvalid("m_axis_tvalid")
{
  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_S_AXI_MON_transactor = NULL;
  mp_TRACE_OUT_transactor = NULL;
  mp_m_axis_tready_converter = NULL;
  // Instantiate Socket Stubs

  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARPROT(s_axi_arprot);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
  mp_S_AXI_transactor->AWPROT(s_axi_awprot);
  mp_S_AXI_transactor->AWREADY(s_axi_awready);
  mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
  mp_S_AXI_transactor->BREADY(s_axi_bready);
  mp_S_AXI_transactor->BRESP(s_axi_bresp);
  mp_S_AXI_transactor->BVALID(s_axi_bvalid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->WDATA(s_axi_wdata);
  mp_S_AXI_transactor->WREADY(s_axi_wready);
  mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
  mp_S_AXI_transactor->WVALID(s_axi_wvalid);
  mp_S_AXI_transactor->CLK(mon_clk);
  mp_S_AXI_transactor->RST(mon_resetn);

  // configure S_AXI_MON_transactor
    xsc::common_cpp::properties S_AXI_MON_transactor_param_props;
    S_AXI_MON_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_MON_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_MON_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_MON_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_MON_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_MON_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_MON_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_MON_transactor = new xtlm::xaximm_monitor_t<32,32,1,1,1,1,1,1>("S_AXI_MON_transactor", S_AXI_MON_transactor_param_props);
  mp_S_AXI_MON_transactor->ARADDR(mon_ARADDR);
  mp_S_AXI_MON_transactor->ARREADY(mon_ARREADY);
  mp_S_AXI_MON_transactor->ARVALID(mon_ARVALID);
  mp_S_AXI_MON_transactor->AWADDR(mon_AWADDR);
  mp_S_AXI_MON_transactor->AWREADY(mon_AWREADY);
  mp_S_AXI_MON_transactor->AWVALID(mon_AWVALID);
  mp_S_AXI_MON_transactor->BREADY(mon_BREADY);
  mp_S_AXI_MON_transactor->BRESP(mon_BRESP);
  mp_S_AXI_MON_transactor->BVALID(mon_BVALID);
  mp_S_AXI_MON_transactor->RDATA(mon_RDATA);
  mp_S_AXI_MON_transactor->RREADY(mon_RREADY);
  mp_S_AXI_MON_transactor->RRESP(mon_RRESP);
  mp_S_AXI_MON_transactor->RVALID(mon_RVALID);
  mp_S_AXI_MON_transactor->WDATA(mon_WDATA);
  mp_S_AXI_MON_transactor->WREADY(mon_WREADY);
  mp_S_AXI_MON_transactor->WSTRB(mon_WSTRB);
  mp_S_AXI_MON_transactor->WVALID(mon_WVALID);
  mp_S_AXI_MON_transactor->CLK(mon_clk);
  mp_S_AXI_MON_transactor->RST(mon_resetn);

  // configure TRACE_OUT_transactor
    xsc::common_cpp::properties TRACE_OUT_transactor_param_props;
    TRACE_OUT_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_transactor_param_props.addFloat("PHASE", "0.000");
    TRACE_OUT_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_transactor", TRACE_OUT_transactor_param_props);
  mp_TRACE_OUT_transactor->TDATA(m_axis_tdata);
  mp_TRACE_OUT_transactor->TDEST(m_axis_tdest);
  mp_TRACE_OUT_transactor->TID(m_axis_tid);
  mp_TRACE_OUT_transactor->TLAST(m_axis_tlast);
  mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
  mp_m_axis_tready_converter->vector_in(m_axis_tready);
  mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
  mp_TRACE_OUT_transactor->TREADY(m_m_axis_tready_converter_signal);
  mp_TRACE_OUT_transactor->TVALID(m_axis_tvalid);
  mp_TRACE_OUT_transactor->CLK(trace_clk);
  mp_TRACE_OUT_transactor->RST(trace_rst);


  // initialize transactors stubs
  S_AXI_transactor_target_wr_socket_stub = nullptr;
  S_AXI_transactor_target_rd_socket_stub = nullptr;
  TRACE_OUT_transactor_initiator_socket_stub = nullptr;

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->axilite_rd_skt->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_skt->bind(*(mp_S_AXI_transactor->wr_socket));
  }
  else
  {
    S_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_transactor->wr_socket));
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

  // configure 'S_AXI_MON' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_MON_TLM_MODE") != 1)
  {
    mp_impl->mon_rd_skt->bind(*(mp_S_AXI_MON_transactor->rd_socket));
    mp_impl->mon_wr_skt->bind(*(mp_S_AXI_MON_transactor->wr_socket));
  }

  // configure 'TRACE_OUT' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_TLM_MODE") != 1)
  {
    mp_impl->trace_skt->bind(*(mp_TRACE_OUT_transactor->socket));
  }
  else
  {
    TRACE_OUT_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    TRACE_OUT_transactor_initiator_socket_stub->bind(*(mp_TRACE_OUT_transactor->socket));
    mp_TRACE_OUT_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), m_axis_tready("m_axis_tready"), m_axis_tdata("m_axis_tdata"), m_axis_tlast("m_axis_tlast"), m_axis_tid("m_axis_tid"), m_axis_tdest("m_axis_tdest"), m_axis_tvalid("m_axis_tvalid")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_S_AXI_MON_transactor = NULL;
  mp_TRACE_OUT_transactor = NULL;
  mp_m_axis_tready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWPROT(s_axi_awprot);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_skt->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_skt->bind(*(mp_S_AXI_transactor->wr_socket));
  }

  // configure 'S_AXI_MON' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_MON_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI_MON' transactor parameters
    xsc::common_cpp::properties S_AXI_MON_transactor_param_props;
    S_AXI_MON_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_MON_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_MON_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_MON_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_MON_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_MON_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_MON_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_MON_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_MON_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_MON_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_MON_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_MON_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_MON_transactor = new xtlm::xaximm_monitor_t<32,32,1,1,1,1,1,1>("S_AXI_MON_transactor", S_AXI_MON_transactor_param_props);

    // S_AXI_MON' transactor ports

    mp_S_AXI_MON_transactor->ARADDR(mon_ARADDR);
    mp_S_AXI_MON_transactor->ARREADY(mon_ARREADY);
    mp_S_AXI_MON_transactor->ARVALID(mon_ARVALID);
    mp_S_AXI_MON_transactor->AWADDR(mon_AWADDR);
    mp_S_AXI_MON_transactor->AWREADY(mon_AWREADY);
    mp_S_AXI_MON_transactor->AWVALID(mon_AWVALID);
    mp_S_AXI_MON_transactor->BREADY(mon_BREADY);
    mp_S_AXI_MON_transactor->BRESP(mon_BRESP);
    mp_S_AXI_MON_transactor->BVALID(mon_BVALID);
    mp_S_AXI_MON_transactor->RDATA(mon_RDATA);
    mp_S_AXI_MON_transactor->RREADY(mon_RREADY);
    mp_S_AXI_MON_transactor->RRESP(mon_RRESP);
    mp_S_AXI_MON_transactor->RVALID(mon_RVALID);
    mp_S_AXI_MON_transactor->WDATA(mon_WDATA);
    mp_S_AXI_MON_transactor->WREADY(mon_WREADY);
    mp_S_AXI_MON_transactor->WSTRB(mon_WSTRB);
    mp_S_AXI_MON_transactor->WVALID(mon_WVALID);
    mp_S_AXI_MON_transactor->CLK(mon_clk);
    mp_S_AXI_MON_transactor->RST(mon_resetn);

    // S_AXI_MON' transactor sockets

    mp_impl->mon_rd_skt->bind(*(mp_S_AXI_MON_transactor->rd_socket));
    mp_impl->mon_wr_skt->bind(*(mp_S_AXI_MON_transactor->wr_socket));
  }

  // configure 'TRACE_OUT' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_transactor_param_props;
    TRACE_OUT_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_transactor_param_props.addFloat("PHASE", "0.000");
    TRACE_OUT_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_transactor", TRACE_OUT_transactor_param_props);

    // TRACE_OUT' transactor ports

    mp_TRACE_OUT_transactor->TDATA(m_axis_tdata);
    mp_TRACE_OUT_transactor->TDEST(m_axis_tdest);
    mp_TRACE_OUT_transactor->TID(m_axis_tid);
    mp_TRACE_OUT_transactor->TLAST(m_axis_tlast);
    mp_m_axis_tready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axis_tready_converter");
    mp_m_axis_tready_converter->vector_in(m_axis_tready);
    mp_m_axis_tready_converter->scalar_out(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TREADY(m_m_axis_tready_converter_signal);
    mp_TRACE_OUT_transactor->TVALID(m_axis_tvalid);
    mp_TRACE_OUT_transactor->CLK(trace_clk);
    mp_TRACE_OUT_transactor->RST(trace_rst);

    // TRACE_OUT' transactor sockets

    mp_impl->trace_skt->bind(*(mp_TRACE_OUT_transactor->socket));
  }

}

#endif // MTI_SYSTEMC




pfm_dynamic_dpa_mon0_0::~pfm_dynamic_dpa_mon0_0()
{
  delete mp_S_AXI_transactor;

  delete mp_S_AXI_MON_transactor;

  delete mp_TRACE_OUT_transactor;
  delete mp_m_axis_tready_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
SC_REGISTER_BV(64);
#endif

