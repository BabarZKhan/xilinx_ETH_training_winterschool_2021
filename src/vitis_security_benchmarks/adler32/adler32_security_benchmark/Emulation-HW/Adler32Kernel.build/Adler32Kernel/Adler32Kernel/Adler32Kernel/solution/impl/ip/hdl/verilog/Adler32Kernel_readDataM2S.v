// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Adler32Kernel_readDataM2S (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_gmem2_AWVALID,
        m_axi_gmem2_AWREADY,
        m_axi_gmem2_AWADDR,
        m_axi_gmem2_AWID,
        m_axi_gmem2_AWLEN,
        m_axi_gmem2_AWSIZE,
        m_axi_gmem2_AWBURST,
        m_axi_gmem2_AWLOCK,
        m_axi_gmem2_AWCACHE,
        m_axi_gmem2_AWPROT,
        m_axi_gmem2_AWQOS,
        m_axi_gmem2_AWREGION,
        m_axi_gmem2_AWUSER,
        m_axi_gmem2_WVALID,
        m_axi_gmem2_WREADY,
        m_axi_gmem2_WDATA,
        m_axi_gmem2_WSTRB,
        m_axi_gmem2_WLAST,
        m_axi_gmem2_WID,
        m_axi_gmem2_WUSER,
        m_axi_gmem2_ARVALID,
        m_axi_gmem2_ARREADY,
        m_axi_gmem2_ARADDR,
        m_axi_gmem2_ARID,
        m_axi_gmem2_ARLEN,
        m_axi_gmem2_ARSIZE,
        m_axi_gmem2_ARBURST,
        m_axi_gmem2_ARLOCK,
        m_axi_gmem2_ARCACHE,
        m_axi_gmem2_ARPROT,
        m_axi_gmem2_ARQOS,
        m_axi_gmem2_ARREGION,
        m_axi_gmem2_ARUSER,
        m_axi_gmem2_RVALID,
        m_axi_gmem2_RREADY,
        m_axi_gmem2_RDATA,
        m_axi_gmem2_RLAST,
        m_axi_gmem2_RID,
        m_axi_gmem2_RUSER,
        m_axi_gmem2_RRESP,
        m_axi_gmem2_BVALID,
        m_axi_gmem2_BREADY,
        m_axi_gmem2_BRESP,
        m_axi_gmem2_BID,
        m_axi_gmem2_BUSER,
        outDataStrm_din,
        outDataStrm_full_n,
        outDataStrm_write,
        n_dout,
        n_empty_n,
        n_read,
        inData_dout,
        inData_empty_n,
        inData_read,
        n_out_din,
        n_out_full_n,
        n_out_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 42'd1;
parameter    ap_ST_fsm_state2 = 42'd2;
parameter    ap_ST_fsm_state3 = 42'd4;
parameter    ap_ST_fsm_state4 = 42'd8;
parameter    ap_ST_fsm_state5 = 42'd16;
parameter    ap_ST_fsm_state6 = 42'd32;
parameter    ap_ST_fsm_state7 = 42'd64;
parameter    ap_ST_fsm_state8 = 42'd128;
parameter    ap_ST_fsm_state9 = 42'd256;
parameter    ap_ST_fsm_state10 = 42'd512;
parameter    ap_ST_fsm_state11 = 42'd1024;
parameter    ap_ST_fsm_state12 = 42'd2048;
parameter    ap_ST_fsm_state13 = 42'd4096;
parameter    ap_ST_fsm_state14 = 42'd8192;
parameter    ap_ST_fsm_state15 = 42'd16384;
parameter    ap_ST_fsm_state16 = 42'd32768;
parameter    ap_ST_fsm_state17 = 42'd65536;
parameter    ap_ST_fsm_state18 = 42'd131072;
parameter    ap_ST_fsm_state19 = 42'd262144;
parameter    ap_ST_fsm_state20 = 42'd524288;
parameter    ap_ST_fsm_state21 = 42'd1048576;
parameter    ap_ST_fsm_state22 = 42'd2097152;
parameter    ap_ST_fsm_state23 = 42'd4194304;
parameter    ap_ST_fsm_state24 = 42'd8388608;
parameter    ap_ST_fsm_state25 = 42'd16777216;
parameter    ap_ST_fsm_state26 = 42'd33554432;
parameter    ap_ST_fsm_state27 = 42'd67108864;
parameter    ap_ST_fsm_state28 = 42'd134217728;
parameter    ap_ST_fsm_state29 = 42'd268435456;
parameter    ap_ST_fsm_state30 = 42'd536870912;
parameter    ap_ST_fsm_state31 = 42'd1073741824;
parameter    ap_ST_fsm_state32 = 42'd2147483648;
parameter    ap_ST_fsm_state33 = 42'd4294967296;
parameter    ap_ST_fsm_state34 = 42'd8589934592;
parameter    ap_ST_fsm_state35 = 42'd17179869184;
parameter    ap_ST_fsm_state36 = 42'd34359738368;
parameter    ap_ST_fsm_state37 = 42'd68719476736;
parameter    ap_ST_fsm_state38 = 42'd137438953472;
parameter    ap_ST_fsm_state39 = 42'd274877906944;
parameter    ap_ST_fsm_state40 = 42'd549755813888;
parameter    ap_ST_fsm_pp0_stage0 = 42'd1099511627776;
parameter    ap_ST_fsm_state44 = 42'd2199023255552;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_gmem2_AWVALID;
input   m_axi_gmem2_AWREADY;
output  [63:0] m_axi_gmem2_AWADDR;
output  [0:0] m_axi_gmem2_AWID;
output  [31:0] m_axi_gmem2_AWLEN;
output  [2:0] m_axi_gmem2_AWSIZE;
output  [1:0] m_axi_gmem2_AWBURST;
output  [1:0] m_axi_gmem2_AWLOCK;
output  [3:0] m_axi_gmem2_AWCACHE;
output  [2:0] m_axi_gmem2_AWPROT;
output  [3:0] m_axi_gmem2_AWQOS;
output  [3:0] m_axi_gmem2_AWREGION;
output  [0:0] m_axi_gmem2_AWUSER;
output   m_axi_gmem2_WVALID;
input   m_axi_gmem2_WREADY;
output  [511:0] m_axi_gmem2_WDATA;
output  [63:0] m_axi_gmem2_WSTRB;
output   m_axi_gmem2_WLAST;
output  [0:0] m_axi_gmem2_WID;
output  [0:0] m_axi_gmem2_WUSER;
output   m_axi_gmem2_ARVALID;
input   m_axi_gmem2_ARREADY;
output  [63:0] m_axi_gmem2_ARADDR;
output  [0:0] m_axi_gmem2_ARID;
output  [31:0] m_axi_gmem2_ARLEN;
output  [2:0] m_axi_gmem2_ARSIZE;
output  [1:0] m_axi_gmem2_ARBURST;
output  [1:0] m_axi_gmem2_ARLOCK;
output  [3:0] m_axi_gmem2_ARCACHE;
output  [2:0] m_axi_gmem2_ARPROT;
output  [3:0] m_axi_gmem2_ARQOS;
output  [3:0] m_axi_gmem2_ARREGION;
output  [0:0] m_axi_gmem2_ARUSER;
input   m_axi_gmem2_RVALID;
output   m_axi_gmem2_RREADY;
input  [511:0] m_axi_gmem2_RDATA;
input   m_axi_gmem2_RLAST;
input  [0:0] m_axi_gmem2_RID;
input  [0:0] m_axi_gmem2_RUSER;
input  [1:0] m_axi_gmem2_RRESP;
input   m_axi_gmem2_BVALID;
output   m_axi_gmem2_BREADY;
input  [1:0] m_axi_gmem2_BRESP;
input  [0:0] m_axi_gmem2_BID;
input  [0:0] m_axi_gmem2_BUSER;
output  [511:0] outDataStrm_din;
input   outDataStrm_full_n;
output   outDataStrm_write;
input  [31:0] n_dout;
input   n_empty_n;
output   n_read;
input  [63:0] inData_dout;
input   inData_empty_n;
output   inData_read;
output  [31:0] n_out_din;
input   n_out_full_n;
output   n_out_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem2_ARVALID;
reg m_axi_gmem2_RREADY;
reg outDataStrm_write;
reg n_read;
reg inData_read;
reg n_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [41:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gmem2_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    gmem2_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln20_1_reg_251;
reg    outDataStrm_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln20_1_reg_251_pp0_iter1_reg;
reg    n_blk_n;
reg    inData_blk_n;
reg    n_out_blk_n;
reg   [31:0] i_reg_108;
reg   [31:0] n_read_reg_218;
reg    ap_block_state1;
reg   [63:0] inData_read_reg_225;
wire  signed [31:0] sext_ln20_fu_179_p1;
reg  signed [31:0] sext_ln20_reg_230;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln20_fu_183_p2;
reg   [57:0] trunc_ln_reg_240;
wire   [0:0] icmp_ln20_1_fu_207_p2;
wire    ap_block_state41_pp0_stage0_iter0;
reg    ap_block_state42_pp0_stage0_iter1;
reg    ap_block_state43_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln20_fu_212_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [511:0] gmem2_addr_read_reg_260;
wire    ap_CS_fsm_state40;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state41;
wire  signed [63:0] sext_ln20_1_fu_197_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] sub_i_fu_119_p2;
wire   [31:0] p_neg_i_fu_132_p2;
wire   [29:0] p_lshr_cast_cast_i_fu_137_p4;
wire   [30:0] p_lshr_cast_cast_i_cast_fu_147_p1;
wire   [29:0] p_lshr_f_cast_cast_i_fu_157_p4;
wire   [0:0] tmp_fu_124_p3;
wire   [30:0] p_neg_t_i_fu_151_p2;
wire   [30:0] p_lshr_f_cast_cast_i_cast_fu_167_p1;
wire   [30:0] div_i_fu_171_p3;
wire    ap_CS_fsm_state44;
reg   [41:0] ap_NS_fsm;
wire    ap_ext_blocking_cur_n;
wire    ap_int_blocking_cur_n;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 42'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state44)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state41) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state40)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state41)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state41);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state40)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        i_reg_108 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_1_fu_207_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_108 <= add_ln20_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln20_1_reg_251 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gmem2_addr_read_reg_260 <= m_axi_gmem2_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln20_1_reg_251 <= icmp_ln20_1_fu_207_p2;
        icmp_ln20_1_reg_251_pp0_iter1_reg <= icmp_ln20_1_reg_251;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inData_read_reg_225 <= inData_dout;
        n_read_reg_218 <= n_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sext_ln20_reg_230 <= sext_ln20_fu_179_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln_reg_240 <= {{inData_read_reg_225[63:6]}};
    end
end

always @ (*) begin
    if ((icmp_ln20_1_fu_207_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state41 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state41 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        gmem2_blk_n_AR = m_axi_gmem2_ARREADY;
    end else begin
        gmem2_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln20_1_reg_251 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        gmem2_blk_n_R = m_axi_gmem2_RVALID;
    end else begin
        gmem2_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inData_blk_n = inData_empty_n;
    end else begin
        inData_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        inData_read = 1'b1;
    end else begin
        inData_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (m_axi_gmem2_ARREADY == 1'b1))) begin
        m_axi_gmem2_ARVALID = 1'b1;
    end else begin
        m_axi_gmem2_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln20_1_reg_251 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        m_axi_gmem2_RREADY = 1'b1;
    end else begin
        m_axi_gmem2_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_blk_n = n_empty_n;
    end else begin
        n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_out_blk_n = n_out_full_n;
    end else begin
        n_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_out_write = 1'b1;
    end else begin
        n_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_read = 1'b1;
    end else begin
        n_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        outDataStrm_blk_n = outDataStrm_full_n;
    end else begin
        outDataStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        outDataStrm_write = 1'b1;
    end else begin
        outDataStrm_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln20_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (m_axi_gmem2_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_1_fu_207_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_1_fu_207_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln20_fu_212_p2 = (i_reg_108 + 32'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd40];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd41];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (outDataStrm_full_n == 1'b0)) | ((icmp_ln20_1_reg_251 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (m_axi_gmem2_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (outDataStrm_full_n == 1'b0)) | ((icmp_ln20_1_reg_251 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (m_axi_gmem2_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (outDataStrm_full_n == 1'b0)) | ((icmp_ln20_1_reg_251 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (m_axi_gmem2_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (n_out_full_n == 1'b0) | (inData_empty_n == 1'b0) | (n_empty_n == 1'b0));
end

assign ap_block_state41_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state42_pp0_stage0_iter1 = ((icmp_ln20_1_reg_251 == 1'd0) & (m_axi_gmem2_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state43_pp0_stage0_iter2 = ((icmp_ln20_1_reg_251_pp0_iter1_reg == 1'd0) & (outDataStrm_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ext_blocking_cur_n = (gmem2_blk_n_R & gmem2_blk_n_AR);

assign ap_ext_blocking_n = (ap_ext_blocking_cur_n & 1'b1);

assign ap_int_blocking_cur_n = (outDataStrm_blk_n & n_out_blk_n & n_blk_n & inData_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_ready = internal_ap_ready;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign div_i_fu_171_p3 = ((tmp_fu_124_p3[0:0] === 1'b1) ? p_neg_t_i_fu_151_p2 : p_lshr_f_cast_cast_i_cast_fu_167_p1);

assign icmp_ln20_1_fu_207_p2 = ((i_reg_108 == sext_ln20_reg_230) ? 1'b1 : 1'b0);

assign icmp_ln20_fu_183_p2 = (($signed(n_read_reg_218) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign m_axi_gmem2_ARADDR = sext_ln20_1_fu_197_p1;

assign m_axi_gmem2_ARBURST = 2'd0;

assign m_axi_gmem2_ARCACHE = 4'd0;

assign m_axi_gmem2_ARID = 1'd0;

assign m_axi_gmem2_ARLEN = sext_ln20_reg_230;

assign m_axi_gmem2_ARLOCK = 2'd0;

assign m_axi_gmem2_ARPROT = 3'd0;

assign m_axi_gmem2_ARQOS = 4'd0;

assign m_axi_gmem2_ARREGION = 4'd0;

assign m_axi_gmem2_ARSIZE = 3'd0;

assign m_axi_gmem2_ARUSER = 1'd0;

assign m_axi_gmem2_AWADDR = 64'd0;

assign m_axi_gmem2_AWBURST = 2'd0;

assign m_axi_gmem2_AWCACHE = 4'd0;

assign m_axi_gmem2_AWID = 1'd0;

assign m_axi_gmem2_AWLEN = 32'd0;

assign m_axi_gmem2_AWLOCK = 2'd0;

assign m_axi_gmem2_AWPROT = 3'd0;

assign m_axi_gmem2_AWQOS = 4'd0;

assign m_axi_gmem2_AWREGION = 4'd0;

assign m_axi_gmem2_AWSIZE = 3'd0;

assign m_axi_gmem2_AWUSER = 1'd0;

assign m_axi_gmem2_AWVALID = 1'b0;

assign m_axi_gmem2_BREADY = 1'b0;

assign m_axi_gmem2_WDATA = 512'd0;

assign m_axi_gmem2_WID = 1'd0;

assign m_axi_gmem2_WLAST = 1'b0;

assign m_axi_gmem2_WSTRB = 64'd0;

assign m_axi_gmem2_WUSER = 1'd0;

assign m_axi_gmem2_WVALID = 1'b0;

assign n_out_din = n_dout;

assign outDataStrm_din = gmem2_addr_read_reg_260;

assign p_lshr_cast_cast_i_cast_fu_147_p1 = p_lshr_cast_cast_i_fu_137_p4;

assign p_lshr_cast_cast_i_fu_137_p4 = {{p_neg_i_fu_132_p2[31:2]}};

assign p_lshr_f_cast_cast_i_cast_fu_167_p1 = p_lshr_f_cast_cast_i_fu_157_p4;

assign p_lshr_f_cast_cast_i_fu_157_p4 = {{sub_i_fu_119_p2[31:2]}};

assign p_neg_i_fu_132_p2 = ($signed(32'd4294967293) - $signed(n_read_reg_218));

assign p_neg_t_i_fu_151_p2 = (31'd0 - p_lshr_cast_cast_i_cast_fu_147_p1);

assign sext_ln20_1_fu_197_p1 = $signed(trunc_ln_reg_240);

assign sext_ln20_fu_179_p1 = $signed(div_i_fu_171_p3);

assign start_out = real_start;

assign sub_i_fu_119_p2 = (n_read_reg_218 + 32'd3);

assign tmp_fu_124_p3 = sub_i_fu_119_p2[32'd31];

endmodule //Adler32Kernel_readDataM2S
