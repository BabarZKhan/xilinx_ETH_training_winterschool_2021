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


// IP VLNV: xilinx.com:ip:shell_utils_cudma_controller:1.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module emu_CuDmaController_0_0 (
  ap_start,
  ap_ready,
  ap_done,
  ap_idle,
  m_axi_CQDma_AWADDR,
  m_axi_CQDma_AWLEN,
  m_axi_CQDma_AWSIZE,
  m_axi_CQDma_AWBURST,
  m_axi_CQDma_AWLOCK,
  m_axi_CQDma_AWREGION,
  m_axi_CQDma_AWCACHE,
  m_axi_CQDma_AWPROT,
  m_axi_CQDma_AWQOS,
  m_axi_CQDma_AWVALID,
  m_axi_CQDma_AWREADY,
  m_axi_CQDma_WDATA,
  m_axi_CQDma_WSTRB,
  m_axi_CQDma_WLAST,
  m_axi_CQDma_WVALID,
  m_axi_CQDma_WREADY,
  m_axi_CQDma_BRESP,
  m_axi_CQDma_BVALID,
  m_axi_CQDma_BREADY,
  m_axi_CQDma_ARADDR,
  m_axi_CQDma_ARLEN,
  m_axi_CQDma_ARSIZE,
  m_axi_CQDma_ARBURST,
  m_axi_CQDma_ARLOCK,
  m_axi_CQDma_ARREGION,
  m_axi_CQDma_ARCACHE,
  m_axi_CQDma_ARPROT,
  m_axi_CQDma_ARQOS,
  m_axi_CQDma_ARVALID,
  m_axi_CQDma_ARREADY,
  m_axi_CQDma_RDATA,
  m_axi_CQDma_RRESP,
  m_axi_CQDma_RLAST,
  m_axi_CQDma_RVALID,
  m_axi_CQDma_RREADY,
  m_axi_CUDma_AWADDR,
  m_axi_CUDma_AWLEN,
  m_axi_CUDma_AWSIZE,
  m_axi_CUDma_AWBURST,
  m_axi_CUDma_AWLOCK,
  m_axi_CUDma_AWREGION,
  m_axi_CUDma_AWCACHE,
  m_axi_CUDma_AWPROT,
  m_axi_CUDma_AWQOS,
  m_axi_CUDma_AWVALID,
  m_axi_CUDma_AWREADY,
  m_axi_CUDma_WDATA,
  m_axi_CUDma_WSTRB,
  m_axi_CUDma_WLAST,
  m_axi_CUDma_WVALID,
  m_axi_CUDma_WREADY,
  m_axi_CUDma_BRESP,
  m_axi_CUDma_BVALID,
  m_axi_CUDma_BREADY,
  m_axi_CUDma_ARADDR,
  m_axi_CUDma_ARLEN,
  m_axi_CUDma_ARSIZE,
  m_axi_CUDma_ARBURST,
  m_axi_CUDma_ARLOCK,
  m_axi_CUDma_ARREGION,
  m_axi_CUDma_ARCACHE,
  m_axi_CUDma_ARPROT,
  m_axi_CUDma_ARQOS,
  m_axi_CUDma_ARVALID,
  m_axi_CUDma_ARREADY,
  m_axi_CUDma_RDATA,
  m_axi_CUDma_RRESP,
  m_axi_CUDma_RLAST,
  m_axi_CUDma_RVALID,
  m_axi_CUDma_RREADY,
  ap_clk,
  ap_rst_n,
  CuDmaQueue,
  SlotSize,
  NoOfSlots,
  CqBaseAddress
);

(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWADDR" *)
output wire [31 : 0] m_axi_CQDma_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWLEN" *)
output wire [7 : 0] m_axi_CQDma_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWSIZE" *)
output wire [2 : 0] m_axi_CQDma_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWBURST" *)
output wire [1 : 0] m_axi_CQDma_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWLOCK" *)
output wire [1 : 0] m_axi_CQDma_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWREGION" *)
output wire [3 : 0] m_axi_CQDma_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWCACHE" *)
output wire [3 : 0] m_axi_CQDma_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWPROT" *)
output wire [2 : 0] m_axi_CQDma_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWQOS" *)
output wire [3 : 0] m_axi_CQDma_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWVALID" *)
output wire m_axi_CQDma_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma AWREADY" *)
input wire m_axi_CQDma_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma WDATA" *)
output wire [31 : 0] m_axi_CQDma_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma WSTRB" *)
output wire [3 : 0] m_axi_CQDma_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma WLAST" *)
output wire m_axi_CQDma_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma WVALID" *)
output wire m_axi_CQDma_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma WREADY" *)
input wire m_axi_CQDma_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma BRESP" *)
input wire [1 : 0] m_axi_CQDma_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma BVALID" *)
input wire m_axi_CQDma_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma BREADY" *)
output wire m_axi_CQDma_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARADDR" *)
output wire [31 : 0] m_axi_CQDma_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARLEN" *)
output wire [7 : 0] m_axi_CQDma_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARSIZE" *)
output wire [2 : 0] m_axi_CQDma_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARBURST" *)
output wire [1 : 0] m_axi_CQDma_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARLOCK" *)
output wire [1 : 0] m_axi_CQDma_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARREGION" *)
output wire [3 : 0] m_axi_CQDma_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARCACHE" *)
output wire [3 : 0] m_axi_CQDma_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARPROT" *)
output wire [2 : 0] m_axi_CQDma_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARQOS" *)
output wire [3 : 0] m_axi_CQDma_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARVALID" *)
output wire m_axi_CQDma_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma ARREADY" *)
input wire m_axi_CQDma_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma RDATA" *)
input wire [31 : 0] m_axi_CQDma_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma RRESP" *)
input wire [1 : 0] m_axi_CQDma_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma RLAST" *)
input wire m_axi_CQDma_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma RVALID" *)
input wire m_axi_CQDma_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_CQDma, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, FREQ_HZ 300000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN emu_dma_pcie_clk_0_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CQDma RREADY" *)
output wire m_axi_CQDma_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWADDR" *)
output wire [31 : 0] m_axi_CUDma_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWLEN" *)
output wire [7 : 0] m_axi_CUDma_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWSIZE" *)
output wire [2 : 0] m_axi_CUDma_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWBURST" *)
output wire [1 : 0] m_axi_CUDma_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWLOCK" *)
output wire [1 : 0] m_axi_CUDma_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWREGION" *)
output wire [3 : 0] m_axi_CUDma_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWCACHE" *)
output wire [3 : 0] m_axi_CUDma_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWPROT" *)
output wire [2 : 0] m_axi_CUDma_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWQOS" *)
output wire [3 : 0] m_axi_CUDma_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWVALID" *)
output wire m_axi_CUDma_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma AWREADY" *)
input wire m_axi_CUDma_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma WDATA" *)
output wire [31 : 0] m_axi_CUDma_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma WSTRB" *)
output wire [3 : 0] m_axi_CUDma_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma WLAST" *)
output wire m_axi_CUDma_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma WVALID" *)
output wire m_axi_CUDma_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma WREADY" *)
input wire m_axi_CUDma_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma BRESP" *)
input wire [1 : 0] m_axi_CUDma_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma BVALID" *)
input wire m_axi_CUDma_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma BREADY" *)
output wire m_axi_CUDma_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARADDR" *)
output wire [31 : 0] m_axi_CUDma_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARLEN" *)
output wire [7 : 0] m_axi_CUDma_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARSIZE" *)
output wire [2 : 0] m_axi_CUDma_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARBURST" *)
output wire [1 : 0] m_axi_CUDma_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARLOCK" *)
output wire [1 : 0] m_axi_CUDma_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARREGION" *)
output wire [3 : 0] m_axi_CUDma_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARCACHE" *)
output wire [3 : 0] m_axi_CUDma_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARPROT" *)
output wire [2 : 0] m_axi_CUDma_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARQOS" *)
output wire [3 : 0] m_axi_CUDma_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARVALID" *)
output wire m_axi_CUDma_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma ARREADY" *)
input wire m_axi_CUDma_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma RDATA" *)
input wire [31 : 0] m_axi_CUDma_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma RRESP" *)
input wire [1 : 0] m_axi_CUDma_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma RLAST" *)
input wire m_axi_CUDma_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma RVALID" *)
input wire m_axi_CUDma_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_CUDma, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, FREQ_HZ 300000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN emu_dma_pcie_clk_0_clk, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_CUDma RREADY" *)
output wire m_axi_CUDma_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF m_axi_CQDma:m_axi_CUDma, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 300000000.0, PHASE 0.000, CLK_DOMAIN emu_dma_pcie_clk_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
input wire [127 : 0] CuDmaQueue;
input wire [12 : 0] SlotSize;
input wire [7 : 0] NoOfSlots;
input wire [31 : 0] CqBaseAddress;

  emu_CuDmaController_0_0_shell_utils_cudma_controller inst (
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .m_axi_CQDma_AWADDR(m_axi_CQDma_AWADDR),
    .m_axi_CQDma_AWLEN(m_axi_CQDma_AWLEN),
    .m_axi_CQDma_AWSIZE(m_axi_CQDma_AWSIZE),
    .m_axi_CQDma_AWBURST(m_axi_CQDma_AWBURST),
    .m_axi_CQDma_AWLOCK(m_axi_CQDma_AWLOCK),
    .m_axi_CQDma_AWREGION(m_axi_CQDma_AWREGION),
    .m_axi_CQDma_AWCACHE(m_axi_CQDma_AWCACHE),
    .m_axi_CQDma_AWPROT(m_axi_CQDma_AWPROT),
    .m_axi_CQDma_AWQOS(m_axi_CQDma_AWQOS),
    .m_axi_CQDma_AWVALID(m_axi_CQDma_AWVALID),
    .m_axi_CQDma_AWREADY(m_axi_CQDma_AWREADY),
    .m_axi_CQDma_WDATA(m_axi_CQDma_WDATA),
    .m_axi_CQDma_WSTRB(m_axi_CQDma_WSTRB),
    .m_axi_CQDma_WLAST(m_axi_CQDma_WLAST),
    .m_axi_CQDma_WVALID(m_axi_CQDma_WVALID),
    .m_axi_CQDma_WREADY(m_axi_CQDma_WREADY),
    .m_axi_CQDma_BRESP(m_axi_CQDma_BRESP),
    .m_axi_CQDma_BVALID(m_axi_CQDma_BVALID),
    .m_axi_CQDma_BREADY(m_axi_CQDma_BREADY),
    .m_axi_CQDma_ARADDR(m_axi_CQDma_ARADDR),
    .m_axi_CQDma_ARLEN(m_axi_CQDma_ARLEN),
    .m_axi_CQDma_ARSIZE(m_axi_CQDma_ARSIZE),
    .m_axi_CQDma_ARBURST(m_axi_CQDma_ARBURST),
    .m_axi_CQDma_ARLOCK(m_axi_CQDma_ARLOCK),
    .m_axi_CQDma_ARREGION(m_axi_CQDma_ARREGION),
    .m_axi_CQDma_ARCACHE(m_axi_CQDma_ARCACHE),
    .m_axi_CQDma_ARPROT(m_axi_CQDma_ARPROT),
    .m_axi_CQDma_ARQOS(m_axi_CQDma_ARQOS),
    .m_axi_CQDma_ARVALID(m_axi_CQDma_ARVALID),
    .m_axi_CQDma_ARREADY(m_axi_CQDma_ARREADY),
    .m_axi_CQDma_RDATA(m_axi_CQDma_RDATA),
    .m_axi_CQDma_RRESP(m_axi_CQDma_RRESP),
    .m_axi_CQDma_RLAST(m_axi_CQDma_RLAST),
    .m_axi_CQDma_RVALID(m_axi_CQDma_RVALID),
    .m_axi_CQDma_RREADY(m_axi_CQDma_RREADY),
    .m_axi_CUDma_AWADDR(m_axi_CUDma_AWADDR),
    .m_axi_CUDma_AWLEN(m_axi_CUDma_AWLEN),
    .m_axi_CUDma_AWSIZE(m_axi_CUDma_AWSIZE),
    .m_axi_CUDma_AWBURST(m_axi_CUDma_AWBURST),
    .m_axi_CUDma_AWLOCK(m_axi_CUDma_AWLOCK),
    .m_axi_CUDma_AWREGION(m_axi_CUDma_AWREGION),
    .m_axi_CUDma_AWCACHE(m_axi_CUDma_AWCACHE),
    .m_axi_CUDma_AWPROT(m_axi_CUDma_AWPROT),
    .m_axi_CUDma_AWQOS(m_axi_CUDma_AWQOS),
    .m_axi_CUDma_AWVALID(m_axi_CUDma_AWVALID),
    .m_axi_CUDma_AWREADY(m_axi_CUDma_AWREADY),
    .m_axi_CUDma_WDATA(m_axi_CUDma_WDATA),
    .m_axi_CUDma_WSTRB(m_axi_CUDma_WSTRB),
    .m_axi_CUDma_WLAST(m_axi_CUDma_WLAST),
    .m_axi_CUDma_WVALID(m_axi_CUDma_WVALID),
    .m_axi_CUDma_WREADY(m_axi_CUDma_WREADY),
    .m_axi_CUDma_BRESP(m_axi_CUDma_BRESP),
    .m_axi_CUDma_BVALID(m_axi_CUDma_BVALID),
    .m_axi_CUDma_BREADY(m_axi_CUDma_BREADY),
    .m_axi_CUDma_ARADDR(m_axi_CUDma_ARADDR),
    .m_axi_CUDma_ARLEN(m_axi_CUDma_ARLEN),
    .m_axi_CUDma_ARSIZE(m_axi_CUDma_ARSIZE),
    .m_axi_CUDma_ARBURST(m_axi_CUDma_ARBURST),
    .m_axi_CUDma_ARLOCK(m_axi_CUDma_ARLOCK),
    .m_axi_CUDma_ARREGION(m_axi_CUDma_ARREGION),
    .m_axi_CUDma_ARCACHE(m_axi_CUDma_ARCACHE),
    .m_axi_CUDma_ARPROT(m_axi_CUDma_ARPROT),
    .m_axi_CUDma_ARQOS(m_axi_CUDma_ARQOS),
    .m_axi_CUDma_ARVALID(m_axi_CUDma_ARVALID),
    .m_axi_CUDma_ARREADY(m_axi_CUDma_ARREADY),
    .m_axi_CUDma_RDATA(m_axi_CUDma_RDATA),
    .m_axi_CUDma_RRESP(m_axi_CUDma_RRESP),
    .m_axi_CUDma_RLAST(m_axi_CUDma_RLAST),
    .m_axi_CUDma_RVALID(m_axi_CUDma_RVALID),
    .m_axi_CUDma_RREADY(m_axi_CUDma_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .CuDmaQueue(CuDmaQueue),
    .SlotSize(SlotSize),
    .NoOfSlots(NoOfSlots),
    .CqBaseAddress(CqBaseAddress)
  );
endmodule
