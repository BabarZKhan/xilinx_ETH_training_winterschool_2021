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


#include "emu_sim_xdma_0_0_sc.h"

#include "emu_sim_xdma_0_0.h"

#include "sim_xdma.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
emu_sim_xdma_0_0::emu_sim_xdma_0_0(const sc_core::sc_module_name& nm) : emu_sim_xdma_0_0_sc(nm), m_aximm_awid("m_aximm_awid"), m_aximm_awaddr("m_aximm_awaddr"), m_aximm_awlen("m_aximm_awlen"), m_aximm_awsize("m_aximm_awsize"), m_aximm_awburst("m_aximm_awburst"), m_aximm_awlock("m_aximm_awlock"), m_aximm_awcache("m_aximm_awcache"), m_aximm_awprot("m_aximm_awprot"), m_aximm_awqos("m_aximm_awqos"), m_aximm_awuser("m_aximm_awuser"), m_aximm_awvalid("m_aximm_awvalid"), m_aximm_awready("m_aximm_awready"), m_aximm_wdata("m_aximm_wdata"), m_aximm_wstrb("m_aximm_wstrb"), m_aximm_wlast("m_aximm_wlast"), m_aximm_wuser("m_aximm_wuser"), m_aximm_wvalid("m_aximm_wvalid"), m_aximm_wready("m_aximm_wready"), m_aximm_bid("m_aximm_bid"), m_aximm_bresp("m_aximm_bresp"), m_aximm_buser("m_aximm_buser"), m_aximm_bvalid("m_aximm_bvalid"), m_aximm_bready("m_aximm_bready"), m_aximm_arid("m_aximm_arid"), m_aximm_araddr("m_aximm_araddr"), m_aximm_arlen("m_aximm_arlen"), m_aximm_arsize("m_aximm_arsize"), m_aximm_arburst("m_aximm_arburst"), m_aximm_arlock("m_aximm_arlock"), m_aximm_arcache("m_aximm_arcache"), m_aximm_arprot("m_aximm_arprot"), m_aximm_arqos("m_aximm_arqos"), m_aximm_aruser("m_aximm_aruser"), m_aximm_arvalid("m_aximm_arvalid"), m_aximm_arready("m_aximm_arready"), m_aximm_rid("m_aximm_rid"), m_aximm_rdata("m_aximm_rdata"), m_aximm_rresp("m_aximm_rresp"), m_aximm_rlast("m_aximm_rlast"), m_aximm_ruser("m_aximm_ruser"), m_aximm_rvalid("m_aximm_rvalid"), m_aximm_rready("m_aximm_rready"), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_M_AXICTRL_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_xdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,1,1,32,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->AWID(m_aximm_awid);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_awaddr);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_awlen);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_awsize);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_awburst);
    mp_M_AXIMM_transactor->AWLOCK(m_aximm_awlock);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_awcache);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_awprot);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_awqos);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_awuser);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_awvalid);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_awready);
    mp_M_AXIMM_transactor->WDATA(m_aximm_wdata);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_wstrb);
    mp_M_AXIMM_transactor->WLAST(m_aximm_wlast);
    mp_M_AXIMM_transactor->WUSER(m_aximm_wuser);
    mp_M_AXIMM_transactor->WVALID(m_aximm_wvalid);
    mp_M_AXIMM_transactor->WREADY(m_aximm_wready);
    mp_M_AXIMM_transactor->BID(m_aximm_bid);
    mp_M_AXIMM_transactor->BRESP(m_aximm_bresp);
    mp_M_AXIMM_transactor->BUSER(m_aximm_buser);
    mp_M_AXIMM_transactor->BVALID(m_aximm_bvalid);
    mp_M_AXIMM_transactor->BREADY(m_aximm_bready);
    mp_M_AXIMM_transactor->ARID(m_aximm_arid);
    mp_M_AXIMM_transactor->ARADDR(m_aximm_araddr);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_arlen);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_arsize);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_arburst);
    mp_M_AXIMM_transactor->ARLOCK(m_aximm_arlock);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_arcache);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_arprot);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_arqos);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_aruser);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_arvalid);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_arready);
    mp_M_AXIMM_transactor->RID(m_aximm_rid);
    mp_M_AXIMM_transactor->RDATA(m_aximm_rdata);
    mp_M_AXIMM_transactor->RRESP(m_aximm_rresp);
    mp_M_AXIMM_transactor->RLAST(m_aximm_rlast);
    mp_M_AXIMM_transactor->RUSER(m_aximm_ruser);
    mp_M_AXIMM_transactor->RVALID(m_aximm_rvalid);
    mp_M_AXIMM_transactor->RREADY(m_aximm_rready);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }

  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
emu_sim_xdma_0_0::emu_sim_xdma_0_0(const sc_core::sc_module_name& nm) : emu_sim_xdma_0_0_sc(nm), m_aximm_awid("m_aximm_awid"), m_aximm_awaddr("m_aximm_awaddr"), m_aximm_awlen("m_aximm_awlen"), m_aximm_awsize("m_aximm_awsize"), m_aximm_awburst("m_aximm_awburst"), m_aximm_awlock("m_aximm_awlock"), m_aximm_awcache("m_aximm_awcache"), m_aximm_awprot("m_aximm_awprot"), m_aximm_awqos("m_aximm_awqos"), m_aximm_awuser("m_aximm_awuser"), m_aximm_awvalid("m_aximm_awvalid"), m_aximm_awready("m_aximm_awready"), m_aximm_wdata("m_aximm_wdata"), m_aximm_wstrb("m_aximm_wstrb"), m_aximm_wlast("m_aximm_wlast"), m_aximm_wuser("m_aximm_wuser"), m_aximm_wvalid("m_aximm_wvalid"), m_aximm_wready("m_aximm_wready"), m_aximm_bid("m_aximm_bid"), m_aximm_bresp("m_aximm_bresp"), m_aximm_buser("m_aximm_buser"), m_aximm_bvalid("m_aximm_bvalid"), m_aximm_bready("m_aximm_bready"), m_aximm_arid("m_aximm_arid"), m_aximm_araddr("m_aximm_araddr"), m_aximm_arlen("m_aximm_arlen"), m_aximm_arsize("m_aximm_arsize"), m_aximm_arburst("m_aximm_arburst"), m_aximm_arlock("m_aximm_arlock"), m_aximm_arcache("m_aximm_arcache"), m_aximm_arprot("m_aximm_arprot"), m_aximm_arqos("m_aximm_arqos"), m_aximm_aruser("m_aximm_aruser"), m_aximm_arvalid("m_aximm_arvalid"), m_aximm_arready("m_aximm_arready"), m_aximm_rid("m_aximm_rid"), m_aximm_rdata("m_aximm_rdata"), m_aximm_rresp("m_aximm_rresp"), m_aximm_rlast("m_aximm_rlast"), m_aximm_ruser("m_aximm_ruser"), m_aximm_rvalid("m_aximm_rvalid"), m_aximm_rready("m_aximm_rready"), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_M_AXICTRL_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_xdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,1,1,32,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->AWID(m_aximm_awid);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_awaddr);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_awlen);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_awsize);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_awburst);
    mp_M_AXIMM_transactor->AWLOCK(m_aximm_awlock);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_awcache);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_awprot);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_awqos);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_awuser);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_awvalid);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_awready);
    mp_M_AXIMM_transactor->WDATA(m_aximm_wdata);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_wstrb);
    mp_M_AXIMM_transactor->WLAST(m_aximm_wlast);
    mp_M_AXIMM_transactor->WUSER(m_aximm_wuser);
    mp_M_AXIMM_transactor->WVALID(m_aximm_wvalid);
    mp_M_AXIMM_transactor->WREADY(m_aximm_wready);
    mp_M_AXIMM_transactor->BID(m_aximm_bid);
    mp_M_AXIMM_transactor->BRESP(m_aximm_bresp);
    mp_M_AXIMM_transactor->BUSER(m_aximm_buser);
    mp_M_AXIMM_transactor->BVALID(m_aximm_bvalid);
    mp_M_AXIMM_transactor->BREADY(m_aximm_bready);
    mp_M_AXIMM_transactor->ARID(m_aximm_arid);
    mp_M_AXIMM_transactor->ARADDR(m_aximm_araddr);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_arlen);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_arsize);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_arburst);
    mp_M_AXIMM_transactor->ARLOCK(m_aximm_arlock);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_arcache);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_arprot);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_arqos);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_aruser);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_arvalid);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_arready);
    mp_M_AXIMM_transactor->RID(m_aximm_rid);
    mp_M_AXIMM_transactor->RDATA(m_aximm_rdata);
    mp_M_AXIMM_transactor->RRESP(m_aximm_rresp);
    mp_M_AXIMM_transactor->RLAST(m_aximm_rlast);
    mp_M_AXIMM_transactor->RUSER(m_aximm_ruser);
    mp_M_AXIMM_transactor->RVALID(m_aximm_rvalid);
    mp_M_AXIMM_transactor->RREADY(m_aximm_rready);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }

  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
emu_sim_xdma_0_0::emu_sim_xdma_0_0(const sc_core::sc_module_name& nm) : emu_sim_xdma_0_0_sc(nm), m_aximm_awid("m_aximm_awid"), m_aximm_awaddr("m_aximm_awaddr"), m_aximm_awlen("m_aximm_awlen"), m_aximm_awsize("m_aximm_awsize"), m_aximm_awburst("m_aximm_awburst"), m_aximm_awlock("m_aximm_awlock"), m_aximm_awcache("m_aximm_awcache"), m_aximm_awprot("m_aximm_awprot"), m_aximm_awqos("m_aximm_awqos"), m_aximm_awuser("m_aximm_awuser"), m_aximm_awvalid("m_aximm_awvalid"), m_aximm_awready("m_aximm_awready"), m_aximm_wdata("m_aximm_wdata"), m_aximm_wstrb("m_aximm_wstrb"), m_aximm_wlast("m_aximm_wlast"), m_aximm_wuser("m_aximm_wuser"), m_aximm_wvalid("m_aximm_wvalid"), m_aximm_wready("m_aximm_wready"), m_aximm_bid("m_aximm_bid"), m_aximm_bresp("m_aximm_bresp"), m_aximm_buser("m_aximm_buser"), m_aximm_bvalid("m_aximm_bvalid"), m_aximm_bready("m_aximm_bready"), m_aximm_arid("m_aximm_arid"), m_aximm_araddr("m_aximm_araddr"), m_aximm_arlen("m_aximm_arlen"), m_aximm_arsize("m_aximm_arsize"), m_aximm_arburst("m_aximm_arburst"), m_aximm_arlock("m_aximm_arlock"), m_aximm_arcache("m_aximm_arcache"), m_aximm_arprot("m_aximm_arprot"), m_aximm_arqos("m_aximm_arqos"), m_aximm_aruser("m_aximm_aruser"), m_aximm_arvalid("m_aximm_arvalid"), m_aximm_arready("m_aximm_arready"), m_aximm_rid("m_aximm_rid"), m_aximm_rdata("m_aximm_rdata"), m_aximm_rresp("m_aximm_rresp"), m_aximm_rlast("m_aximm_rlast"), m_aximm_ruser("m_aximm_ruser"), m_aximm_rvalid("m_aximm_rvalid"), m_aximm_rready("m_aximm_rready"), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_M_AXICTRL_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_xdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,1,1,32,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->AWID(m_aximm_awid);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_awaddr);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_awlen);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_awsize);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_awburst);
    mp_M_AXIMM_transactor->AWLOCK(m_aximm_awlock);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_awcache);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_awprot);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_awqos);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_awuser);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_awvalid);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_awready);
    mp_M_AXIMM_transactor->WDATA(m_aximm_wdata);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_wstrb);
    mp_M_AXIMM_transactor->WLAST(m_aximm_wlast);
    mp_M_AXIMM_transactor->WUSER(m_aximm_wuser);
    mp_M_AXIMM_transactor->WVALID(m_aximm_wvalid);
    mp_M_AXIMM_transactor->WREADY(m_aximm_wready);
    mp_M_AXIMM_transactor->BID(m_aximm_bid);
    mp_M_AXIMM_transactor->BRESP(m_aximm_bresp);
    mp_M_AXIMM_transactor->BUSER(m_aximm_buser);
    mp_M_AXIMM_transactor->BVALID(m_aximm_bvalid);
    mp_M_AXIMM_transactor->BREADY(m_aximm_bready);
    mp_M_AXIMM_transactor->ARID(m_aximm_arid);
    mp_M_AXIMM_transactor->ARADDR(m_aximm_araddr);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_arlen);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_arsize);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_arburst);
    mp_M_AXIMM_transactor->ARLOCK(m_aximm_arlock);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_arcache);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_arprot);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_arqos);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_aruser);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_arvalid);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_arready);
    mp_M_AXIMM_transactor->RID(m_aximm_rid);
    mp_M_AXIMM_transactor->RDATA(m_aximm_rdata);
    mp_M_AXIMM_transactor->RRESP(m_aximm_rresp);
    mp_M_AXIMM_transactor->RLAST(m_aximm_rlast);
    mp_M_AXIMM_transactor->RUSER(m_aximm_ruser);
    mp_M_AXIMM_transactor->RVALID(m_aximm_rvalid);
    mp_M_AXIMM_transactor->RREADY(m_aximm_rready);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }

  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
emu_sim_xdma_0_0::emu_sim_xdma_0_0(const sc_core::sc_module_name& nm) : emu_sim_xdma_0_0_sc(nm),  m_aximm_awid("m_aximm_awid"), m_aximm_awaddr("m_aximm_awaddr"), m_aximm_awlen("m_aximm_awlen"), m_aximm_awsize("m_aximm_awsize"), m_aximm_awburst("m_aximm_awburst"), m_aximm_awlock("m_aximm_awlock"), m_aximm_awcache("m_aximm_awcache"), m_aximm_awprot("m_aximm_awprot"), m_aximm_awqos("m_aximm_awqos"), m_aximm_awuser("m_aximm_awuser"), m_aximm_awvalid("m_aximm_awvalid"), m_aximm_awready("m_aximm_awready"), m_aximm_wdata("m_aximm_wdata"), m_aximm_wstrb("m_aximm_wstrb"), m_aximm_wlast("m_aximm_wlast"), m_aximm_wuser("m_aximm_wuser"), m_aximm_wvalid("m_aximm_wvalid"), m_aximm_wready("m_aximm_wready"), m_aximm_bid("m_aximm_bid"), m_aximm_bresp("m_aximm_bresp"), m_aximm_buser("m_aximm_buser"), m_aximm_bvalid("m_aximm_bvalid"), m_aximm_bready("m_aximm_bready"), m_aximm_arid("m_aximm_arid"), m_aximm_araddr("m_aximm_araddr"), m_aximm_arlen("m_aximm_arlen"), m_aximm_arsize("m_aximm_arsize"), m_aximm_arburst("m_aximm_arburst"), m_aximm_arlock("m_aximm_arlock"), m_aximm_arcache("m_aximm_arcache"), m_aximm_arprot("m_aximm_arprot"), m_aximm_arqos("m_aximm_arqos"), m_aximm_aruser("m_aximm_aruser"), m_aximm_arvalid("m_aximm_arvalid"), m_aximm_arready("m_aximm_arready"), m_aximm_rid("m_aximm_rid"), m_aximm_rdata("m_aximm_rdata"), m_aximm_rresp("m_aximm_rresp"), m_aximm_rlast("m_aximm_rlast"), m_aximm_ruser("m_aximm_ruser"), m_aximm_rvalid("m_aximm_rvalid"), m_aximm_rready("m_aximm_rready"), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn")
{
  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_M_AXICTRL_transactor = NULL;
  // Instantiate Socket Stubs

  // configure M_AXIMM_transactor
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,1,1,32,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);
  mp_M_AXIMM_transactor->AWID(m_aximm_awid);
  mp_M_AXIMM_transactor->AWADDR(m_aximm_awaddr);
  mp_M_AXIMM_transactor->AWLEN(m_aximm_awlen);
  mp_M_AXIMM_transactor->AWSIZE(m_aximm_awsize);
  mp_M_AXIMM_transactor->AWBURST(m_aximm_awburst);
  mp_M_AXIMM_transactor->AWLOCK(m_aximm_awlock);
  mp_M_AXIMM_transactor->AWCACHE(m_aximm_awcache);
  mp_M_AXIMM_transactor->AWPROT(m_aximm_awprot);
  mp_M_AXIMM_transactor->AWQOS(m_aximm_awqos);
  mp_M_AXIMM_transactor->AWUSER(m_aximm_awuser);
  mp_M_AXIMM_transactor->AWVALID(m_aximm_awvalid);
  mp_M_AXIMM_transactor->AWREADY(m_aximm_awready);
  mp_M_AXIMM_transactor->WDATA(m_aximm_wdata);
  mp_M_AXIMM_transactor->WSTRB(m_aximm_wstrb);
  mp_M_AXIMM_transactor->WLAST(m_aximm_wlast);
  mp_M_AXIMM_transactor->WUSER(m_aximm_wuser);
  mp_M_AXIMM_transactor->WVALID(m_aximm_wvalid);
  mp_M_AXIMM_transactor->WREADY(m_aximm_wready);
  mp_M_AXIMM_transactor->BID(m_aximm_bid);
  mp_M_AXIMM_transactor->BRESP(m_aximm_bresp);
  mp_M_AXIMM_transactor->BUSER(m_aximm_buser);
  mp_M_AXIMM_transactor->BVALID(m_aximm_bvalid);
  mp_M_AXIMM_transactor->BREADY(m_aximm_bready);
  mp_M_AXIMM_transactor->ARID(m_aximm_arid);
  mp_M_AXIMM_transactor->ARADDR(m_aximm_araddr);
  mp_M_AXIMM_transactor->ARLEN(m_aximm_arlen);
  mp_M_AXIMM_transactor->ARSIZE(m_aximm_arsize);
  mp_M_AXIMM_transactor->ARBURST(m_aximm_arburst);
  mp_M_AXIMM_transactor->ARLOCK(m_aximm_arlock);
  mp_M_AXIMM_transactor->ARCACHE(m_aximm_arcache);
  mp_M_AXIMM_transactor->ARPROT(m_aximm_arprot);
  mp_M_AXIMM_transactor->ARQOS(m_aximm_arqos);
  mp_M_AXIMM_transactor->ARUSER(m_aximm_aruser);
  mp_M_AXIMM_transactor->ARVALID(m_aximm_arvalid);
  mp_M_AXIMM_transactor->ARREADY(m_aximm_arready);
  mp_M_AXIMM_transactor->RID(m_aximm_rid);
  mp_M_AXIMM_transactor->RDATA(m_aximm_rdata);
  mp_M_AXIMM_transactor->RRESP(m_aximm_rresp);
  mp_M_AXIMM_transactor->RLAST(m_aximm_rlast);
  mp_M_AXIMM_transactor->RUSER(m_aximm_ruser);
  mp_M_AXIMM_transactor->RVALID(m_aximm_rvalid);
  mp_M_AXIMM_transactor->RREADY(m_aximm_rready);
  mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
  mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

  // configure M_AXICTRL_transactor
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);
  mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
  mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
  mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
  mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
  mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
  mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
  mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
  mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
  mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
  mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
  mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
  mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
  mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
  mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
  mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
  mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
  mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
  mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
  mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
  mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
  mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);


  // initialize transactors stubs
  M_AXIMM_transactor_initiator_wr_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_rd_socket_stub = nullptr;
  M_AXICTRL_transactor_initiator_wr_socket_stub = nullptr;
  M_AXICTRL_transactor_initiator_rd_socket_stub = nullptr;

}

void emu_sim_xdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
    M_AXIMM_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXIMM_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXIMM_transactor->wr_socket));
    M_AXIMM_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXIMM_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_M_AXIMM_transactor->disable_transactor();
  }

  // configure 'M_AXICTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }
  else
  {
    M_AXICTRL_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXICTRL_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXICTRL_transactor->wr_socket));
    M_AXICTRL_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXICTRL_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_M_AXICTRL_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
emu_sim_xdma_0_0::emu_sim_xdma_0_0(const sc_core::sc_module_name& nm) : emu_sim_xdma_0_0_sc(nm), m_aximm_awid("m_aximm_awid"), m_aximm_awaddr("m_aximm_awaddr"), m_aximm_awlen("m_aximm_awlen"), m_aximm_awsize("m_aximm_awsize"), m_aximm_awburst("m_aximm_awburst"), m_aximm_awlock("m_aximm_awlock"), m_aximm_awcache("m_aximm_awcache"), m_aximm_awprot("m_aximm_awprot"), m_aximm_awqos("m_aximm_awqos"), m_aximm_awuser("m_aximm_awuser"), m_aximm_awvalid("m_aximm_awvalid"), m_aximm_awready("m_aximm_awready"), m_aximm_wdata("m_aximm_wdata"), m_aximm_wstrb("m_aximm_wstrb"), m_aximm_wlast("m_aximm_wlast"), m_aximm_wuser("m_aximm_wuser"), m_aximm_wvalid("m_aximm_wvalid"), m_aximm_wready("m_aximm_wready"), m_aximm_bid("m_aximm_bid"), m_aximm_bresp("m_aximm_bresp"), m_aximm_buser("m_aximm_buser"), m_aximm_bvalid("m_aximm_bvalid"), m_aximm_bready("m_aximm_bready"), m_aximm_arid("m_aximm_arid"), m_aximm_araddr("m_aximm_araddr"), m_aximm_arlen("m_aximm_arlen"), m_aximm_arsize("m_aximm_arsize"), m_aximm_arburst("m_aximm_arburst"), m_aximm_arlock("m_aximm_arlock"), m_aximm_arcache("m_aximm_arcache"), m_aximm_arprot("m_aximm_arprot"), m_aximm_arqos("m_aximm_arqos"), m_aximm_aruser("m_aximm_aruser"), m_aximm_arvalid("m_aximm_arvalid"), m_aximm_arready("m_aximm_arready"), m_aximm_rid("m_aximm_rid"), m_aximm_rdata("m_aximm_rdata"), m_aximm_rresp("m_aximm_rresp"), m_aximm_rlast("m_aximm_rlast"), m_aximm_ruser("m_aximm_ruser"), m_aximm_rvalid("m_aximm_rvalid"), m_aximm_rready("m_aximm_rready"), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_M_AXICTRL_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_xdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,1,1,32,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->AWID(m_aximm_awid);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_awaddr);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_awlen);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_awsize);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_awburst);
    mp_M_AXIMM_transactor->AWLOCK(m_aximm_awlock);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_awcache);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_awprot);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_awqos);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_awuser);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_awvalid);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_awready);
    mp_M_AXIMM_transactor->WDATA(m_aximm_wdata);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_wstrb);
    mp_M_AXIMM_transactor->WLAST(m_aximm_wlast);
    mp_M_AXIMM_transactor->WUSER(m_aximm_wuser);
    mp_M_AXIMM_transactor->WVALID(m_aximm_wvalid);
    mp_M_AXIMM_transactor->WREADY(m_aximm_wready);
    mp_M_AXIMM_transactor->BID(m_aximm_bid);
    mp_M_AXIMM_transactor->BRESP(m_aximm_bresp);
    mp_M_AXIMM_transactor->BUSER(m_aximm_buser);
    mp_M_AXIMM_transactor->BVALID(m_aximm_bvalid);
    mp_M_AXIMM_transactor->BREADY(m_aximm_bready);
    mp_M_AXIMM_transactor->ARID(m_aximm_arid);
    mp_M_AXIMM_transactor->ARADDR(m_aximm_araddr);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_arlen);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_arsize);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_arburst);
    mp_M_AXIMM_transactor->ARLOCK(m_aximm_arlock);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_arcache);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_arprot);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_arqos);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_aruser);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_arvalid);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_arready);
    mp_M_AXIMM_transactor->RID(m_aximm_rid);
    mp_M_AXIMM_transactor->RDATA(m_aximm_rdata);
    mp_M_AXIMM_transactor->RRESP(m_aximm_rresp);
    mp_M_AXIMM_transactor->RLAST(m_aximm_rlast);
    mp_M_AXIMM_transactor->RUSER(m_aximm_ruser);
    mp_M_AXIMM_transactor->RVALID(m_aximm_rvalid);
    mp_M_AXIMM_transactor->RREADY(m_aximm_rready);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }

  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_xdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }

}

#endif // MTI_SYSTEMC




emu_sim_xdma_0_0::~emu_sim_xdma_0_0()
{
  delete mp_M_AXIMM_transactor;

  delete mp_M_AXICTRL_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(emu_sim_xdma_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(emu_sim_xdma_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(emu_sim_xdma_0_0);
SC_REGISTER_BV(64);
#endif

