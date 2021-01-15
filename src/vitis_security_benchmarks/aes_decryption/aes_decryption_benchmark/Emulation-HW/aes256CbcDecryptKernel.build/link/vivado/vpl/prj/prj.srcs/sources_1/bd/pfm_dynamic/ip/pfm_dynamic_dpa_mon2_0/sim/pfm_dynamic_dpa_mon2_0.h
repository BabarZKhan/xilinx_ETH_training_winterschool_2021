#ifndef IP_PFM_DYNAMIC_DPA_MON2_0_H_
#define IP_PFM_DYNAMIC_DPA_MON2_0_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "pfm_dynamic_dpa_mon2_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport pfm_dynamic_dpa_mon2_0 : public pfm_dynamic_dpa_mon2_0_sc
{
public:

  pfm_dynamic_dpa_mon2_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_mon2_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > mon_clk;
  sc_core::sc_in< bool > mon_resetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_rst;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< bool > mon_AWVALID;
  sc_core::sc_in< bool > mon_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_AWADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_AWID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_AWLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_AWSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_AWBURST;
  sc_core::sc_in< bool > mon_WVALID;
  sc_core::sc_in< bool > mon_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_WSTRB;
  sc_core::sc_in< bool > mon_WLAST;
  sc_core::sc_in< bool > mon_ARVALID;
  sc_core::sc_in< bool > mon_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_ARADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_ARID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_ARLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_ARSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_ARBURST;
  sc_core::sc_in< bool > mon_RVALID;
  sc_core::sc_in< bool > mon_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_RDATA;
  sc_core::sc_in< bool > mon_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_RRESP;
  sc_core::sc_in< bool > mon_BVALID;
  sc_core::sc_in< bool > mon_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_BID;
  sc_core::sc_in< bool > m_axis_rd_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_rd_tdata;
  sc_core::sc_out< bool > m_axis_rd_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tdest;
  sc_core::sc_in< bool > m_axis_wr_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_wr_tdata;
  sc_core::sc_out< bool > m_axis_wr_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tdest;
  sc_core::sc_out< bool > m_axis_wr_tvalid;
  sc_core::sc_out< bool > m_axis_rd_tvalid;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot_mon;
  sc_core::sc_in< bool > s_axi_awvalid_mon;
  sc_core::sc_in< bool > s_axi_awready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb_mon;
  sc_core::sc_in< bool > s_axi_wvalid_mon;
  sc_core::sc_in< bool > s_axi_wready_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_bresp_mon;
  sc_core::sc_in< bool > s_axi_bvalid_mon;
  sc_core::sc_in< bool > s_axi_bready_mon;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot_mon;
  sc_core::sc_in< bool > s_axi_arvalid_mon;
  sc_core::sc_in< bool > s_axi_arready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_rdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_rresp_mon;
  sc_core::sc_in< bool > s_axi_rvalid_mon;
  sc_core::sc_in< bool > s_axi_rready_mon;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXI_transactor;
  xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>* mp_MON_M_AXI_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_0_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_1_transactor;
  xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>* mp_MON_S_AXI_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport pfm_dynamic_dpa_mon2_0 : public pfm_dynamic_dpa_mon2_0_sc
{
public:

  pfm_dynamic_dpa_mon2_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_mon2_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > mon_clk;
  sc_core::sc_in< bool > mon_resetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_rst;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< bool > mon_AWVALID;
  sc_core::sc_in< bool > mon_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_AWADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_AWID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_AWLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_AWSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_AWBURST;
  sc_core::sc_in< bool > mon_WVALID;
  sc_core::sc_in< bool > mon_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_WSTRB;
  sc_core::sc_in< bool > mon_WLAST;
  sc_core::sc_in< bool > mon_ARVALID;
  sc_core::sc_in< bool > mon_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_ARADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_ARID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_ARLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_ARSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_ARBURST;
  sc_core::sc_in< bool > mon_RVALID;
  sc_core::sc_in< bool > mon_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_RDATA;
  sc_core::sc_in< bool > mon_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_RRESP;
  sc_core::sc_in< bool > mon_BVALID;
  sc_core::sc_in< bool > mon_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_BID;
  sc_core::sc_in< bool > m_axis_rd_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_rd_tdata;
  sc_core::sc_out< bool > m_axis_rd_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tdest;
  sc_core::sc_in< bool > m_axis_wr_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_wr_tdata;
  sc_core::sc_out< bool > m_axis_wr_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tdest;
  sc_core::sc_out< bool > m_axis_wr_tvalid;
  sc_core::sc_out< bool > m_axis_rd_tvalid;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot_mon;
  sc_core::sc_in< bool > s_axi_awvalid_mon;
  sc_core::sc_in< bool > s_axi_awready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb_mon;
  sc_core::sc_in< bool > s_axi_wvalid_mon;
  sc_core::sc_in< bool > s_axi_wready_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_bresp_mon;
  sc_core::sc_in< bool > s_axi_bvalid_mon;
  sc_core::sc_in< bool > s_axi_bready_mon;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot_mon;
  sc_core::sc_in< bool > s_axi_arvalid_mon;
  sc_core::sc_in< bool > s_axi_arready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_rdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_rresp_mon;
  sc_core::sc_in< bool > s_axi_rvalid_mon;
  sc_core::sc_in< bool > s_axi_rready_mon;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXI_transactor;
  xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>* mp_MON_M_AXI_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_0_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_1_transactor;
  xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>* mp_MON_S_AXI_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport pfm_dynamic_dpa_mon2_0 : public pfm_dynamic_dpa_mon2_0_sc
{
public:

  pfm_dynamic_dpa_mon2_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_mon2_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > mon_clk;
  sc_core::sc_in< bool > mon_resetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_rst;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< bool > mon_AWVALID;
  sc_core::sc_in< bool > mon_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_AWADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_AWID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_AWLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_AWSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_AWBURST;
  sc_core::sc_in< bool > mon_WVALID;
  sc_core::sc_in< bool > mon_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_WSTRB;
  sc_core::sc_in< bool > mon_WLAST;
  sc_core::sc_in< bool > mon_ARVALID;
  sc_core::sc_in< bool > mon_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_ARADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_ARID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_ARLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_ARSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_ARBURST;
  sc_core::sc_in< bool > mon_RVALID;
  sc_core::sc_in< bool > mon_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_RDATA;
  sc_core::sc_in< bool > mon_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_RRESP;
  sc_core::sc_in< bool > mon_BVALID;
  sc_core::sc_in< bool > mon_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_BID;
  sc_core::sc_in< bool > m_axis_rd_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_rd_tdata;
  sc_core::sc_out< bool > m_axis_rd_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tdest;
  sc_core::sc_in< bool > m_axis_wr_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_wr_tdata;
  sc_core::sc_out< bool > m_axis_wr_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tdest;
  sc_core::sc_out< bool > m_axis_wr_tvalid;
  sc_core::sc_out< bool > m_axis_rd_tvalid;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot_mon;
  sc_core::sc_in< bool > s_axi_awvalid_mon;
  sc_core::sc_in< bool > s_axi_awready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb_mon;
  sc_core::sc_in< bool > s_axi_wvalid_mon;
  sc_core::sc_in< bool > s_axi_wready_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_bresp_mon;
  sc_core::sc_in< bool > s_axi_bvalid_mon;
  sc_core::sc_in< bool > s_axi_bready_mon;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot_mon;
  sc_core::sc_in< bool > s_axi_arvalid_mon;
  sc_core::sc_in< bool > s_axi_arready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_rdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_rresp_mon;
  sc_core::sc_in< bool > s_axi_rvalid_mon;
  sc_core::sc_in< bool > s_axi_rready_mon;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXI_transactor;
  xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>* mp_MON_M_AXI_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_0_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_1_transactor;
  xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>* mp_MON_S_AXI_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_target_stub.h"

#include "utils/xtlm_axis_initiator_stub.h"

class DllExport pfm_dynamic_dpa_mon2_0 : public pfm_dynamic_dpa_mon2_0_sc
{
public:

  pfm_dynamic_dpa_mon2_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_mon2_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > mon_clk;
  sc_core::sc_in< bool > mon_resetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_rst;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< bool > mon_AWVALID;
  sc_core::sc_in< bool > mon_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_AWADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_AWID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_AWLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_AWSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_AWBURST;
  sc_core::sc_in< bool > mon_WVALID;
  sc_core::sc_in< bool > mon_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_WSTRB;
  sc_core::sc_in< bool > mon_WLAST;
  sc_core::sc_in< bool > mon_ARVALID;
  sc_core::sc_in< bool > mon_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_ARADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_ARID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_ARLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_ARSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_ARBURST;
  sc_core::sc_in< bool > mon_RVALID;
  sc_core::sc_in< bool > mon_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_RDATA;
  sc_core::sc_in< bool > mon_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_RRESP;
  sc_core::sc_in< bool > mon_BVALID;
  sc_core::sc_in< bool > mon_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_BID;
  sc_core::sc_in< bool > m_axis_rd_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_rd_tdata;
  sc_core::sc_out< bool > m_axis_rd_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tdest;
  sc_core::sc_in< bool > m_axis_wr_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_wr_tdata;
  sc_core::sc_out< bool > m_axis_wr_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tdest;
  sc_core::sc_out< bool > m_axis_wr_tvalid;
  sc_core::sc_out< bool > m_axis_rd_tvalid;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot_mon;
  sc_core::sc_in< bool > s_axi_awvalid_mon;
  sc_core::sc_in< bool > s_axi_awready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb_mon;
  sc_core::sc_in< bool > s_axi_wvalid_mon;
  sc_core::sc_in< bool > s_axi_wready_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_bresp_mon;
  sc_core::sc_in< bool > s_axi_bvalid_mon;
  sc_core::sc_in< bool > s_axi_bready_mon;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot_mon;
  sc_core::sc_in< bool > s_axi_arvalid_mon;
  sc_core::sc_in< bool > s_axi_arready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_rdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_rresp_mon;
  sc_core::sc_in< bool > s_axi_rvalid_mon;
  sc_core::sc_in< bool > s_axi_rready_mon;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXI_transactor;
  xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>* mp_MON_M_AXI_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_0_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_1_transactor;
  xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>* mp_MON_S_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_wr_socket_stub;
  xtlm::xtlm_axis_initiator_stub * TRACE_OUT_0_transactor_initiator_socket_stub;
  xtlm::xtlm_axis_initiator_stub * TRACE_OUT_1_transactor_initiator_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport pfm_dynamic_dpa_mon2_0 : public pfm_dynamic_dpa_mon2_0_sc
{
public:

  pfm_dynamic_dpa_mon2_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_mon2_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > mon_clk;
  sc_core::sc_in< bool > mon_resetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_rst;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< bool > mon_AWVALID;
  sc_core::sc_in< bool > mon_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_AWADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_AWID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_AWLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_AWSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_AWBURST;
  sc_core::sc_in< bool > mon_WVALID;
  sc_core::sc_in< bool > mon_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_WSTRB;
  sc_core::sc_in< bool > mon_WLAST;
  sc_core::sc_in< bool > mon_ARVALID;
  sc_core::sc_in< bool > mon_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<64> > mon_ARADDR;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_ARID;
  sc_core::sc_in< sc_dt::sc_bv<8> > mon_ARLEN;
  sc_core::sc_in< sc_dt::sc_bv<3> > mon_ARSIZE;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_ARBURST;
  sc_core::sc_in< bool > mon_RVALID;
  sc_core::sc_in< bool > mon_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > mon_RDATA;
  sc_core::sc_in< bool > mon_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_RRESP;
  sc_core::sc_in< bool > mon_BVALID;
  sc_core::sc_in< bool > mon_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > mon_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > mon_BID;
  sc_core::sc_in< bool > m_axis_rd_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_rd_tdata;
  sc_core::sc_out< bool > m_axis_rd_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_rd_tdest;
  sc_core::sc_in< bool > m_axis_wr_tready;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axis_wr_tdata;
  sc_core::sc_out< bool > m_axis_wr_tlast;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tid;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axis_wr_tdest;
  sc_core::sc_out< bool > m_axis_wr_tvalid;
  sc_core::sc_out< bool > m_axis_rd_tvalid;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot_mon;
  sc_core::sc_in< bool > s_axi_awvalid_mon;
  sc_core::sc_in< bool > s_axi_awready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb_mon;
  sc_core::sc_in< bool > s_axi_wvalid_mon;
  sc_core::sc_in< bool > s_axi_wready_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_bresp_mon;
  sc_core::sc_in< bool > s_axi_bvalid_mon;
  sc_core::sc_in< bool > s_axi_bready_mon;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr_mon;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot_mon;
  sc_core::sc_in< bool > s_axi_arvalid_mon;
  sc_core::sc_in< bool > s_axi_arready_mon;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_rdata_mon;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_rresp_mon;
  sc_core::sc_in< bool > s_axi_rvalid_mon;
  sc_core::sc_in< bool > s_axi_rready_mon;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXI_transactor;
  xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>* mp_MON_M_AXI_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_0_transactor;
  xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>* mp_TRACE_OUT_1_transactor;
  xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>* mp_MON_S_AXI_transactor;

};
#endif // MTI_SYSTEMC
#endif // IP_PFM_DYNAMIC_DPA_MON2_0_H_
