// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:clk_metadata_adapter:1.0
// IP Revision: 0

(* X_CORE_INFO = "clk_metadata_adapter_v1_0_0,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "bd_8181_ip_aclk_ctrl_00_0,clk_metadata_adapter_v1_0_0,{}" *)
(* CORE_GENERATION_INFO = "bd_8181_ip_aclk_ctrl_00_0,clk_metadata_adapter_v1_0_0,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=clk_metadata_adapter,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_8181_ip_aclk_ctrl_00_0 (
  clk_in,
  clk_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_IN CLK" *)
input wire clk_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK" *)
output wire clk_out;

  clk_metadata_adapter_v1_0_0 inst (
    .clk_in(clk_in),
    .clk_out(clk_out)
  );
endmodule
