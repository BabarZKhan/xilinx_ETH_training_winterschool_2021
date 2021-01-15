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


// IP VLNV: xilinx.com:ip:shell_utils_cuisr:1.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module emu_cuisr_0_0 (
  ap_start,
  ap_ready,
  ap_done,
  ap_idle,
  m_axi_a_AWADDR,
  m_axi_a_AWLEN,
  m_axi_a_AWSIZE,
  m_axi_a_AWBURST,
  m_axi_a_AWLOCK,
  m_axi_a_AWREGION,
  m_axi_a_AWCACHE,
  m_axi_a_AWPROT,
  m_axi_a_AWQOS,
  m_axi_a_AWVALID,
  m_axi_a_AWREADY,
  m_axi_a_WDATA,
  m_axi_a_WSTRB,
  m_axi_a_WLAST,
  m_axi_a_WVALID,
  m_axi_a_WREADY,
  m_axi_a_BRESP,
  m_axi_a_BVALID,
  m_axi_a_BREADY,
  m_axi_a_ARADDR,
  m_axi_a_ARLEN,
  m_axi_a_ARSIZE,
  m_axi_a_ARBURST,
  m_axi_a_ARLOCK,
  m_axi_a_ARREGION,
  m_axi_a_ARCACHE,
  m_axi_a_ARPROT,
  m_axi_a_ARQOS,
  m_axi_a_ARVALID,
  m_axi_a_ARREADY,
  m_axi_a_RDATA,
  m_axi_a_RRESP,
  m_axi_a_RLAST,
  m_axi_a_RVALID,
  m_axi_a_RREADY,
  ap_clk,
  ap_rst_n,
  Offset
);

(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ap_idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWADDR" *)
output wire [31 : 0] m_axi_a_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWLEN" *)
output wire [7 : 0] m_axi_a_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWSIZE" *)
output wire [2 : 0] m_axi_a_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWBURST" *)
output wire [1 : 0] m_axi_a_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWLOCK" *)
output wire [1 : 0] m_axi_a_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWREGION" *)
output wire [3 : 0] m_axi_a_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWCACHE" *)
output wire [3 : 0] m_axi_a_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWPROT" *)
output wire [2 : 0] m_axi_a_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWQOS" *)
output wire [3 : 0] m_axi_a_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWVALID" *)
output wire m_axi_a_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWREADY" *)
input wire m_axi_a_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WDATA" *)
output wire [31 : 0] m_axi_a_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WSTRB" *)
output wire [3 : 0] m_axi_a_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WLAST" *)
output wire m_axi_a_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WVALID" *)
output wire m_axi_a_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WREADY" *)
input wire m_axi_a_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BRESP" *)
input wire [1 : 0] m_axi_a_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BVALID" *)
input wire m_axi_a_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BREADY" *)
output wire m_axi_a_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARADDR" *)
output wire [31 : 0] m_axi_a_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARLEN" *)
output wire [7 : 0] m_axi_a_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARSIZE" *)
output wire [2 : 0] m_axi_a_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARBURST" *)
output wire [1 : 0] m_axi_a_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARLOCK" *)
output wire [1 : 0] m_axi_a_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARREGION" *)
output wire [3 : 0] m_axi_a_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARCACHE" *)
output wire [3 : 0] m_axi_a_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARPROT" *)
output wire [2 : 0] m_axi_a_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARQOS" *)
output wire [3 : 0] m_axi_a_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARVALID" *)
output wire m_axi_a_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARREADY" *)
input wire m_axi_a_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RDATA" *)
input wire [31 : 0] m_axi_a_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RRESP" *)
input wire [1 : 0] m_axi_a_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RLAST" *)
input wire m_axi_a_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RVALID" *)
input wire m_axi_a_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_a, ADDR_WIDTH 32, DATA_WIDTH 32, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, FREQ_HZ 300000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN emu_dma_pcie_clk_0_clk, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RREADY" *)
output wire m_axi_a_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF m_axi_a, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 300000000.0, PHASE 0.000, CLK_DOMAIN emu_dma_pcie_clk_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
input wire [31 : 0] Offset;

  emu_cuisr_0_0_shell_utils_cuisr inst (
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .m_axi_a_AWADDR(m_axi_a_AWADDR),
    .m_axi_a_AWLEN(m_axi_a_AWLEN),
    .m_axi_a_AWSIZE(m_axi_a_AWSIZE),
    .m_axi_a_AWBURST(m_axi_a_AWBURST),
    .m_axi_a_AWLOCK(m_axi_a_AWLOCK),
    .m_axi_a_AWREGION(m_axi_a_AWREGION),
    .m_axi_a_AWCACHE(m_axi_a_AWCACHE),
    .m_axi_a_AWPROT(m_axi_a_AWPROT),
    .m_axi_a_AWQOS(m_axi_a_AWQOS),
    .m_axi_a_AWVALID(m_axi_a_AWVALID),
    .m_axi_a_AWREADY(m_axi_a_AWREADY),
    .m_axi_a_WDATA(m_axi_a_WDATA),
    .m_axi_a_WSTRB(m_axi_a_WSTRB),
    .m_axi_a_WLAST(m_axi_a_WLAST),
    .m_axi_a_WVALID(m_axi_a_WVALID),
    .m_axi_a_WREADY(m_axi_a_WREADY),
    .m_axi_a_BRESP(m_axi_a_BRESP),
    .m_axi_a_BVALID(m_axi_a_BVALID),
    .m_axi_a_BREADY(m_axi_a_BREADY),
    .m_axi_a_ARADDR(m_axi_a_ARADDR),
    .m_axi_a_ARLEN(m_axi_a_ARLEN),
    .m_axi_a_ARSIZE(m_axi_a_ARSIZE),
    .m_axi_a_ARBURST(m_axi_a_ARBURST),
    .m_axi_a_ARLOCK(m_axi_a_ARLOCK),
    .m_axi_a_ARREGION(m_axi_a_ARREGION),
    .m_axi_a_ARCACHE(m_axi_a_ARCACHE),
    .m_axi_a_ARPROT(m_axi_a_ARPROT),
    .m_axi_a_ARQOS(m_axi_a_ARQOS),
    .m_axi_a_ARVALID(m_axi_a_ARVALID),
    .m_axi_a_ARREADY(m_axi_a_ARREADY),
    .m_axi_a_RDATA(m_axi_a_RDATA),
    .m_axi_a_RRESP(m_axi_a_RRESP),
    .m_axi_a_RLAST(m_axi_a_RLAST),
    .m_axi_a_RVALID(m_axi_a_RVALID),
    .m_axi_a_RREADY(m_axi_a_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .Offset(Offset)
  );
endmodule
