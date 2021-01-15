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


// IP VLNV: xilinx.com:hls:aes256CbcDecryptKernel:1.0
// IP Revision: 2101142137

(* X_CORE_INFO = "aes256CbcDecryptKernel,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "pfm_dynamic_aes256CbcDecryptKernel_1_0,aes256CbcDecryptKernel,{}" *)
(* CORE_GENERATION_INFO = "pfm_dynamic_aes256CbcDecryptKernel_1_0,aes256CbcDecryptKernel,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=aes256CbcDecryptKernel,x_ipVersion=1.0,x_ipCoreRevision=2101142137,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=6,C_S_AXI_CONTROL_DATA_WIDTH=32,C_M_AXI_GMEM0_0_ID_WIDTH=1,C_M_AXI_GMEM0_0_ADDR_WIDTH=64,C_M_AXI_GMEM0_0_DATA_WIDTH=512,C_M_AXI_GMEM0_0_AWUSER_WIDTH=1,C_M_AXI_GMEM0_0_ARUSER_WIDTH=1,C_M_AXI_GMEM0_0_WUSER_WIDTH=1,C_M_AXI_GMEM0_0\
_RUSER_WIDTH=1,C_M_AXI_GMEM0_0_BUSER_WIDTH=1,C_M_AXI_GMEM0_0_USER_VALUE=0x00000000,C_M_AXI_GMEM0_0_PROT_VALUE=000,C_M_AXI_GMEM0_0_CACHE_VALUE=0011,C_M_AXI_GMEM0_1_ID_WIDTH=1,C_M_AXI_GMEM0_1_ADDR_WIDTH=64,C_M_AXI_GMEM0_1_DATA_WIDTH=512,C_M_AXI_GMEM0_1_AWUSER_WIDTH=1,C_M_AXI_GMEM0_1_ARUSER_WIDTH=1,C_M_AXI_GMEM0_1_WUSER_WIDTH=1,C_M_AXI_GMEM0_1_RUSER_WIDTH=1,C_M_AXI_GMEM0_1_BUSER_WIDTH=1,C_M_AXI_GMEM0_1_USER_VALUE=0x00000000,C_M_AXI_GMEM0_1_PROT_VALUE=000,C_M_AXI_GMEM0_1_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pfm_dynamic_aes256CbcDecryptKernel_1_0 (
  stall_start_ext,
  stall_done_ext,
  stall_start_str,
  stall_done_str,
  stall_start_int,
  stall_done_int,
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  event_done,
  interrupt,
  event_start,
  m_axi_gmem0_0_AWADDR,
  m_axi_gmem0_0_AWLEN,
  m_axi_gmem0_0_AWSIZE,
  m_axi_gmem0_0_AWBURST,
  m_axi_gmem0_0_AWLOCK,
  m_axi_gmem0_0_AWREGION,
  m_axi_gmem0_0_AWCACHE,
  m_axi_gmem0_0_AWPROT,
  m_axi_gmem0_0_AWQOS,
  m_axi_gmem0_0_AWVALID,
  m_axi_gmem0_0_AWREADY,
  m_axi_gmem0_0_WDATA,
  m_axi_gmem0_0_WSTRB,
  m_axi_gmem0_0_WLAST,
  m_axi_gmem0_0_WVALID,
  m_axi_gmem0_0_WREADY,
  m_axi_gmem0_0_BRESP,
  m_axi_gmem0_0_BVALID,
  m_axi_gmem0_0_BREADY,
  m_axi_gmem0_0_ARADDR,
  m_axi_gmem0_0_ARLEN,
  m_axi_gmem0_0_ARSIZE,
  m_axi_gmem0_0_ARBURST,
  m_axi_gmem0_0_ARLOCK,
  m_axi_gmem0_0_ARREGION,
  m_axi_gmem0_0_ARCACHE,
  m_axi_gmem0_0_ARPROT,
  m_axi_gmem0_0_ARQOS,
  m_axi_gmem0_0_ARVALID,
  m_axi_gmem0_0_ARREADY,
  m_axi_gmem0_0_RDATA,
  m_axi_gmem0_0_RRESP,
  m_axi_gmem0_0_RLAST,
  m_axi_gmem0_0_RVALID,
  m_axi_gmem0_0_RREADY,
  m_axi_gmem0_1_AWADDR,
  m_axi_gmem0_1_AWLEN,
  m_axi_gmem0_1_AWSIZE,
  m_axi_gmem0_1_AWBURST,
  m_axi_gmem0_1_AWLOCK,
  m_axi_gmem0_1_AWREGION,
  m_axi_gmem0_1_AWCACHE,
  m_axi_gmem0_1_AWPROT,
  m_axi_gmem0_1_AWQOS,
  m_axi_gmem0_1_AWVALID,
  m_axi_gmem0_1_AWREADY,
  m_axi_gmem0_1_WDATA,
  m_axi_gmem0_1_WSTRB,
  m_axi_gmem0_1_WLAST,
  m_axi_gmem0_1_WVALID,
  m_axi_gmem0_1_WREADY,
  m_axi_gmem0_1_BRESP,
  m_axi_gmem0_1_BVALID,
  m_axi_gmem0_1_BREADY,
  m_axi_gmem0_1_ARADDR,
  m_axi_gmem0_1_ARLEN,
  m_axi_gmem0_1_ARSIZE,
  m_axi_gmem0_1_ARBURST,
  m_axi_gmem0_1_ARLOCK,
  m_axi_gmem0_1_ARREGION,
  m_axi_gmem0_1_ARCACHE,
  m_axi_gmem0_1_ARPROT,
  m_axi_gmem0_1_ARQOS,
  m_axi_gmem0_1_ARVALID,
  m_axi_gmem0_1_ARREADY,
  m_axi_gmem0_1_RDATA,
  m_axi_gmem0_1_RRESP,
  m_axi_gmem0_1_RLAST,
  m_axi_gmem0_1_RVALID,
  m_axi_gmem0_1_RREADY
);

output wire stall_start_ext;
output wire stall_done_ext;
output wire stall_start_str;
output wire stall_done_str;
output wire stall_start_int;
output wire stall_done_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [5 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [5 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 300000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pfm_dynamic_kernel_clk_0_clk, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem0_0:m_axi_gmem0_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_kernel_clk_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_done, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 event_done DATA" *)
output wire event_done;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_start, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 event_start DATA" *)
output wire event_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWADDR" *)
output wire [63 : 0] m_axi_gmem0_0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWLEN" *)
output wire [7 : 0] m_axi_gmem0_0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWSIZE" *)
output wire [2 : 0] m_axi_gmem0_0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWBURST" *)
output wire [1 : 0] m_axi_gmem0_0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWLOCK" *)
output wire [1 : 0] m_axi_gmem0_0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWREGION" *)
output wire [3 : 0] m_axi_gmem0_0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWCACHE" *)
output wire [3 : 0] m_axi_gmem0_0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWPROT" *)
output wire [2 : 0] m_axi_gmem0_0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWQOS" *)
output wire [3 : 0] m_axi_gmem0_0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWVALID" *)
output wire m_axi_gmem0_0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 AWREADY" *)
input wire m_axi_gmem0_0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 WDATA" *)
output wire [511 : 0] m_axi_gmem0_0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 WSTRB" *)
output wire [63 : 0] m_axi_gmem0_0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 WLAST" *)
output wire m_axi_gmem0_0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 WVALID" *)
output wire m_axi_gmem0_0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 WREADY" *)
input wire m_axi_gmem0_0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 BRESP" *)
input wire [1 : 0] m_axi_gmem0_0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 BVALID" *)
input wire m_axi_gmem0_0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 BREADY" *)
output wire m_axi_gmem0_0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARADDR" *)
output wire [63 : 0] m_axi_gmem0_0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARLEN" *)
output wire [7 : 0] m_axi_gmem0_0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARSIZE" *)
output wire [2 : 0] m_axi_gmem0_0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARBURST" *)
output wire [1 : 0] m_axi_gmem0_0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARLOCK" *)
output wire [1 : 0] m_axi_gmem0_0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARREGION" *)
output wire [3 : 0] m_axi_gmem0_0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARCACHE" *)
output wire [3 : 0] m_axi_gmem0_0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARPROT" *)
output wire [2 : 0] m_axi_gmem0_0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARQOS" *)
output wire [3 : 0] m_axi_gmem0_0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARVALID" *)
output wire m_axi_gmem0_0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 ARREADY" *)
input wire m_axi_gmem0_0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 RDATA" *)
input wire [511 : 0] m_axi_gmem0_0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 RRESP" *)
input wire [1 : 0] m_axi_gmem0_0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 RLAST" *)
input wire m_axi_gmem0_0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 RVALID" *)
input wire m_axi_gmem0_0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0_0, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 64, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 512, FREQ_HZ 300000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOM\
AIN pfm_dynamic_kernel_clk_0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_0 RREADY" *)
output wire m_axi_gmem0_0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWADDR" *)
output wire [63 : 0] m_axi_gmem0_1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWLEN" *)
output wire [7 : 0] m_axi_gmem0_1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWSIZE" *)
output wire [2 : 0] m_axi_gmem0_1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWBURST" *)
output wire [1 : 0] m_axi_gmem0_1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWLOCK" *)
output wire [1 : 0] m_axi_gmem0_1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWREGION" *)
output wire [3 : 0] m_axi_gmem0_1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWCACHE" *)
output wire [3 : 0] m_axi_gmem0_1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWPROT" *)
output wire [2 : 0] m_axi_gmem0_1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWQOS" *)
output wire [3 : 0] m_axi_gmem0_1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWVALID" *)
output wire m_axi_gmem0_1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 AWREADY" *)
input wire m_axi_gmem0_1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 WDATA" *)
output wire [511 : 0] m_axi_gmem0_1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 WSTRB" *)
output wire [63 : 0] m_axi_gmem0_1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 WLAST" *)
output wire m_axi_gmem0_1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 WVALID" *)
output wire m_axi_gmem0_1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 WREADY" *)
input wire m_axi_gmem0_1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 BRESP" *)
input wire [1 : 0] m_axi_gmem0_1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 BVALID" *)
input wire m_axi_gmem0_1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 BREADY" *)
output wire m_axi_gmem0_1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARADDR" *)
output wire [63 : 0] m_axi_gmem0_1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARLEN" *)
output wire [7 : 0] m_axi_gmem0_1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARSIZE" *)
output wire [2 : 0] m_axi_gmem0_1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARBURST" *)
output wire [1 : 0] m_axi_gmem0_1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARLOCK" *)
output wire [1 : 0] m_axi_gmem0_1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARREGION" *)
output wire [3 : 0] m_axi_gmem0_1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARCACHE" *)
output wire [3 : 0] m_axi_gmem0_1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARPROT" *)
output wire [2 : 0] m_axi_gmem0_1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARQOS" *)
output wire [3 : 0] m_axi_gmem0_1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARVALID" *)
output wire m_axi_gmem0_1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 ARREADY" *)
input wire m_axi_gmem0_1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 RDATA" *)
input wire [511 : 0] m_axi_gmem0_1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 RRESP" *)
input wire [1 : 0] m_axi_gmem0_1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 RLAST" *)
input wire m_axi_gmem0_1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 RVALID" *)
input wire m_axi_gmem0_1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem0_1, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 64, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 512, FREQ_HZ 300000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOM\
AIN pfm_dynamic_kernel_clk_0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem0_1 RREADY" *)
output wire m_axi_gmem0_1_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  aes256CbcDecryptKernel #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_GMEM0_0_ID_WIDTH(1),
    .C_M_AXI_GMEM0_0_ADDR_WIDTH(64),
    .C_M_AXI_GMEM0_0_DATA_WIDTH(512),
    .C_M_AXI_GMEM0_0_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM0_0_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM0_0_WUSER_WIDTH(1),
    .C_M_AXI_GMEM0_0_RUSER_WIDTH(1),
    .C_M_AXI_GMEM0_0_BUSER_WIDTH(1),
    .C_M_AXI_GMEM0_0_USER_VALUE('H00000000),
    .C_M_AXI_GMEM0_0_PROT_VALUE('B000),
    .C_M_AXI_GMEM0_0_CACHE_VALUE('B0011),
    .C_M_AXI_GMEM0_1_ID_WIDTH(1),
    .C_M_AXI_GMEM0_1_ADDR_WIDTH(64),
    .C_M_AXI_GMEM0_1_DATA_WIDTH(512),
    .C_M_AXI_GMEM0_1_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM0_1_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM0_1_WUSER_WIDTH(1),
    .C_M_AXI_GMEM0_1_RUSER_WIDTH(1),
    .C_M_AXI_GMEM0_1_BUSER_WIDTH(1),
    .C_M_AXI_GMEM0_1_USER_VALUE('H00000000),
    .C_M_AXI_GMEM0_1_PROT_VALUE('B000),
    .C_M_AXI_GMEM0_1_CACHE_VALUE('B0011)
  ) inst (
    .stall_start_ext(stall_start_ext),
    .stall_done_ext(stall_done_ext),
    .stall_start_str(stall_start_str),
    .stall_done_str(stall_done_str),
    .stall_start_int(stall_start_int),
    .stall_done_int(stall_done_int),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .event_done(event_done),
    .interrupt(interrupt),
    .event_start(event_start),
    .m_axi_gmem0_0_AWID(),
    .m_axi_gmem0_0_AWADDR(m_axi_gmem0_0_AWADDR),
    .m_axi_gmem0_0_AWLEN(m_axi_gmem0_0_AWLEN),
    .m_axi_gmem0_0_AWSIZE(m_axi_gmem0_0_AWSIZE),
    .m_axi_gmem0_0_AWBURST(m_axi_gmem0_0_AWBURST),
    .m_axi_gmem0_0_AWLOCK(m_axi_gmem0_0_AWLOCK),
    .m_axi_gmem0_0_AWREGION(m_axi_gmem0_0_AWREGION),
    .m_axi_gmem0_0_AWCACHE(m_axi_gmem0_0_AWCACHE),
    .m_axi_gmem0_0_AWPROT(m_axi_gmem0_0_AWPROT),
    .m_axi_gmem0_0_AWQOS(m_axi_gmem0_0_AWQOS),
    .m_axi_gmem0_0_AWUSER(),
    .m_axi_gmem0_0_AWVALID(m_axi_gmem0_0_AWVALID),
    .m_axi_gmem0_0_AWREADY(m_axi_gmem0_0_AWREADY),
    .m_axi_gmem0_0_WID(),
    .m_axi_gmem0_0_WDATA(m_axi_gmem0_0_WDATA),
    .m_axi_gmem0_0_WSTRB(m_axi_gmem0_0_WSTRB),
    .m_axi_gmem0_0_WLAST(m_axi_gmem0_0_WLAST),
    .m_axi_gmem0_0_WUSER(),
    .m_axi_gmem0_0_WVALID(m_axi_gmem0_0_WVALID),
    .m_axi_gmem0_0_WREADY(m_axi_gmem0_0_WREADY),
    .m_axi_gmem0_0_BID(1'B0),
    .m_axi_gmem0_0_BRESP(m_axi_gmem0_0_BRESP),
    .m_axi_gmem0_0_BUSER(1'B0),
    .m_axi_gmem0_0_BVALID(m_axi_gmem0_0_BVALID),
    .m_axi_gmem0_0_BREADY(m_axi_gmem0_0_BREADY),
    .m_axi_gmem0_0_ARID(),
    .m_axi_gmem0_0_ARADDR(m_axi_gmem0_0_ARADDR),
    .m_axi_gmem0_0_ARLEN(m_axi_gmem0_0_ARLEN),
    .m_axi_gmem0_0_ARSIZE(m_axi_gmem0_0_ARSIZE),
    .m_axi_gmem0_0_ARBURST(m_axi_gmem0_0_ARBURST),
    .m_axi_gmem0_0_ARLOCK(m_axi_gmem0_0_ARLOCK),
    .m_axi_gmem0_0_ARREGION(m_axi_gmem0_0_ARREGION),
    .m_axi_gmem0_0_ARCACHE(m_axi_gmem0_0_ARCACHE),
    .m_axi_gmem0_0_ARPROT(m_axi_gmem0_0_ARPROT),
    .m_axi_gmem0_0_ARQOS(m_axi_gmem0_0_ARQOS),
    .m_axi_gmem0_0_ARUSER(),
    .m_axi_gmem0_0_ARVALID(m_axi_gmem0_0_ARVALID),
    .m_axi_gmem0_0_ARREADY(m_axi_gmem0_0_ARREADY),
    .m_axi_gmem0_0_RID(1'B0),
    .m_axi_gmem0_0_RDATA(m_axi_gmem0_0_RDATA),
    .m_axi_gmem0_0_RRESP(m_axi_gmem0_0_RRESP),
    .m_axi_gmem0_0_RLAST(m_axi_gmem0_0_RLAST),
    .m_axi_gmem0_0_RUSER(1'B0),
    .m_axi_gmem0_0_RVALID(m_axi_gmem0_0_RVALID),
    .m_axi_gmem0_0_RREADY(m_axi_gmem0_0_RREADY),
    .m_axi_gmem0_1_AWID(),
    .m_axi_gmem0_1_AWADDR(m_axi_gmem0_1_AWADDR),
    .m_axi_gmem0_1_AWLEN(m_axi_gmem0_1_AWLEN),
    .m_axi_gmem0_1_AWSIZE(m_axi_gmem0_1_AWSIZE),
    .m_axi_gmem0_1_AWBURST(m_axi_gmem0_1_AWBURST),
    .m_axi_gmem0_1_AWLOCK(m_axi_gmem0_1_AWLOCK),
    .m_axi_gmem0_1_AWREGION(m_axi_gmem0_1_AWREGION),
    .m_axi_gmem0_1_AWCACHE(m_axi_gmem0_1_AWCACHE),
    .m_axi_gmem0_1_AWPROT(m_axi_gmem0_1_AWPROT),
    .m_axi_gmem0_1_AWQOS(m_axi_gmem0_1_AWQOS),
    .m_axi_gmem0_1_AWUSER(),
    .m_axi_gmem0_1_AWVALID(m_axi_gmem0_1_AWVALID),
    .m_axi_gmem0_1_AWREADY(m_axi_gmem0_1_AWREADY),
    .m_axi_gmem0_1_WID(),
    .m_axi_gmem0_1_WDATA(m_axi_gmem0_1_WDATA),
    .m_axi_gmem0_1_WSTRB(m_axi_gmem0_1_WSTRB),
    .m_axi_gmem0_1_WLAST(m_axi_gmem0_1_WLAST),
    .m_axi_gmem0_1_WUSER(),
    .m_axi_gmem0_1_WVALID(m_axi_gmem0_1_WVALID),
    .m_axi_gmem0_1_WREADY(m_axi_gmem0_1_WREADY),
    .m_axi_gmem0_1_BID(1'B0),
    .m_axi_gmem0_1_BRESP(m_axi_gmem0_1_BRESP),
    .m_axi_gmem0_1_BUSER(1'B0),
    .m_axi_gmem0_1_BVALID(m_axi_gmem0_1_BVALID),
    .m_axi_gmem0_1_BREADY(m_axi_gmem0_1_BREADY),
    .m_axi_gmem0_1_ARID(),
    .m_axi_gmem0_1_ARADDR(m_axi_gmem0_1_ARADDR),
    .m_axi_gmem0_1_ARLEN(m_axi_gmem0_1_ARLEN),
    .m_axi_gmem0_1_ARSIZE(m_axi_gmem0_1_ARSIZE),
    .m_axi_gmem0_1_ARBURST(m_axi_gmem0_1_ARBURST),
    .m_axi_gmem0_1_ARLOCK(m_axi_gmem0_1_ARLOCK),
    .m_axi_gmem0_1_ARREGION(m_axi_gmem0_1_ARREGION),
    .m_axi_gmem0_1_ARCACHE(m_axi_gmem0_1_ARCACHE),
    .m_axi_gmem0_1_ARPROT(m_axi_gmem0_1_ARPROT),
    .m_axi_gmem0_1_ARQOS(m_axi_gmem0_1_ARQOS),
    .m_axi_gmem0_1_ARUSER(),
    .m_axi_gmem0_1_ARVALID(m_axi_gmem0_1_ARVALID),
    .m_axi_gmem0_1_ARREADY(m_axi_gmem0_1_ARREADY),
    .m_axi_gmem0_1_RID(1'B0),
    .m_axi_gmem0_1_RDATA(m_axi_gmem0_1_RDATA),
    .m_axi_gmem0_1_RRESP(m_axi_gmem0_1_RRESP),
    .m_axi_gmem0_1_RLAST(m_axi_gmem0_1_RLAST),
    .m_axi_gmem0_1_RUSER(1'B0),
    .m_axi_gmem0_1_RVALID(m_axi_gmem0_1_RVALID),
    .m_axi_gmem0_1_RREADY(m_axi_gmem0_1_RREADY)
  );
endmodule
