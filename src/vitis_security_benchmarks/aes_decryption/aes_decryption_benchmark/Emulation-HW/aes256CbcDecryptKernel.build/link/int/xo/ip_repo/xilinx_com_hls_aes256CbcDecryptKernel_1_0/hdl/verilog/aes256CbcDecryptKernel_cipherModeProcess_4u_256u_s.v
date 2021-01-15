// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes256CbcDecryptKernel_cipherModeProcess_4u_256u_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        taskNumStrm_dout,
        taskNumStrm_empty_n,
        taskNumStrm_read,
        IVStrm_V_V_dout,
        IVStrm_V_V_empty_n,
        IVStrm_V_V_read,
        IVStrm_1_V_V_dout,
        IVStrm_1_V_V_empty_n,
        IVStrm_1_V_V_read,
        IVStrm_2_V_V_dout,
        IVStrm_2_V_V_empty_n,
        IVStrm_2_V_V_read,
        IVStrm_3_V_V_dout,
        IVStrm_3_V_V_empty_n,
        IVStrm_3_V_V_read,
        cipherkeyStrm_V_V_dout,
        cipherkeyStrm_V_V_empty_n,
        cipherkeyStrm_V_V_read,
        cipherkeyStrm_1_V_V_dout,
        cipherkeyStrm_1_V_V_empty_n,
        cipherkeyStrm_1_V_V_read,
        cipherkeyStrm_2_V_V_dout,
        cipherkeyStrm_2_V_V_empty_n,
        cipherkeyStrm_2_V_V_read,
        cipherkeyStrm_3_V_V_dout,
        cipherkeyStrm_3_V_V_empty_n,
        cipherkeyStrm_3_V_V_read,
        textInStrm_V_V_dout,
        textInStrm_V_V_empty_n,
        textInStrm_V_V_read,
        textInStrm_1_V_V_dout,
        textInStrm_1_V_V_empty_n,
        textInStrm_1_V_V_read,
        textInStrm_2_V_V_dout,
        textInStrm_2_V_V_empty_n,
        textInStrm_2_V_V_read,
        textInStrm_3_V_V_dout,
        textInStrm_3_V_V_empty_n,
        textInStrm_3_V_V_read,
        endTextInStrm_V_dout,
        endTextInStrm_V_empty_n,
        endTextInStrm_V_read,
        endTextInStrm_1_V_dout,
        endTextInStrm_1_V_empty_n,
        endTextInStrm_1_V_read,
        endTextInStrm_2_V_dout,
        endTextInStrm_2_V_empty_n,
        endTextInStrm_2_V_read,
        endTextInStrm_3_V_dout,
        endTextInStrm_3_V_empty_n,
        endTextInStrm_3_V_read,
        textOutStrm_V_V_din,
        textOutStrm_V_V_full_n,
        textOutStrm_V_V_write,
        textOutStrm_1_V_V_din,
        textOutStrm_1_V_V_full_n,
        textOutStrm_1_V_V_write,
        textOutStrm_2_V_V_din,
        textOutStrm_2_V_V_full_n,
        textOutStrm_2_V_V_write,
        textOutStrm_3_V_V_din,
        textOutStrm_3_V_V_full_n,
        textOutStrm_3_V_V_write,
        endTextOutStrm_V_din,
        endTextOutStrm_V_full_n,
        endTextOutStrm_V_write,
        endTextOutStrm_1_V_din,
        endTextOutStrm_1_V_full_n,
        endTextOutStrm_1_V_write,
        endTextOutStrm_2_V_din,
        endTextOutStrm_2_V_full_n,
        endTextOutStrm_2_V_write,
        endTextOutStrm_3_V_din,
        endTextOutStrm_3_V_full_n,
        endTextOutStrm_3_V_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] taskNumStrm_dout;
input   taskNumStrm_empty_n;
output   taskNumStrm_read;
input  [127:0] IVStrm_V_V_dout;
input   IVStrm_V_V_empty_n;
output   IVStrm_V_V_read;
input  [127:0] IVStrm_1_V_V_dout;
input   IVStrm_1_V_V_empty_n;
output   IVStrm_1_V_V_read;
input  [127:0] IVStrm_2_V_V_dout;
input   IVStrm_2_V_V_empty_n;
output   IVStrm_2_V_V_read;
input  [127:0] IVStrm_3_V_V_dout;
input   IVStrm_3_V_V_empty_n;
output   IVStrm_3_V_V_read;
input  [255:0] cipherkeyStrm_V_V_dout;
input   cipherkeyStrm_V_V_empty_n;
output   cipherkeyStrm_V_V_read;
input  [255:0] cipherkeyStrm_1_V_V_dout;
input   cipherkeyStrm_1_V_V_empty_n;
output   cipherkeyStrm_1_V_V_read;
input  [255:0] cipherkeyStrm_2_V_V_dout;
input   cipherkeyStrm_2_V_V_empty_n;
output   cipherkeyStrm_2_V_V_read;
input  [255:0] cipherkeyStrm_3_V_V_dout;
input   cipherkeyStrm_3_V_V_empty_n;
output   cipherkeyStrm_3_V_V_read;
input  [127:0] textInStrm_V_V_dout;
input   textInStrm_V_V_empty_n;
output   textInStrm_V_V_read;
input  [127:0] textInStrm_1_V_V_dout;
input   textInStrm_1_V_V_empty_n;
output   textInStrm_1_V_V_read;
input  [127:0] textInStrm_2_V_V_dout;
input   textInStrm_2_V_V_empty_n;
output   textInStrm_2_V_V_read;
input  [127:0] textInStrm_3_V_V_dout;
input   textInStrm_3_V_V_empty_n;
output   textInStrm_3_V_V_read;
input   endTextInStrm_V_dout;
input   endTextInStrm_V_empty_n;
output   endTextInStrm_V_read;
input   endTextInStrm_1_V_dout;
input   endTextInStrm_1_V_empty_n;
output   endTextInStrm_1_V_read;
input   endTextInStrm_2_V_dout;
input   endTextInStrm_2_V_empty_n;
output   endTextInStrm_2_V_read;
input   endTextInStrm_3_V_dout;
input   endTextInStrm_3_V_empty_n;
output   endTextInStrm_3_V_read;
output  [127:0] textOutStrm_V_V_din;
input   textOutStrm_V_V_full_n;
output   textOutStrm_V_V_write;
output  [127:0] textOutStrm_1_V_V_din;
input   textOutStrm_1_V_V_full_n;
output   textOutStrm_1_V_V_write;
output  [127:0] textOutStrm_2_V_V_din;
input   textOutStrm_2_V_V_full_n;
output   textOutStrm_2_V_V_write;
output  [127:0] textOutStrm_3_V_V_din;
input   textOutStrm_3_V_V_full_n;
output   textOutStrm_3_V_V_write;
output   endTextOutStrm_V_din;
input   endTextOutStrm_V_full_n;
output   endTextOutStrm_V_write;
output   endTextOutStrm_1_V_din;
input   endTextOutStrm_1_V_full_n;
output   endTextOutStrm_1_V_write;
output   endTextOutStrm_2_V_din;
input   endTextOutStrm_2_V_full_n;
output   endTextOutStrm_2_V_write;
output   endTextOutStrm_3_V_din;
input   endTextOutStrm_3_V_full_n;
output   endTextOutStrm_3_V_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg taskNumStrm_read;
reg IVStrm_V_V_read;
reg IVStrm_1_V_V_read;
reg IVStrm_2_V_V_read;
reg IVStrm_3_V_V_read;
reg cipherkeyStrm_V_V_read;
reg cipherkeyStrm_1_V_V_read;
reg cipherkeyStrm_2_V_V_read;
reg cipherkeyStrm_3_V_V_read;
reg textInStrm_V_V_read;
reg textInStrm_1_V_V_read;
reg textInStrm_2_V_V_read;
reg textInStrm_3_V_V_read;
reg endTextInStrm_V_read;
reg endTextInStrm_1_V_read;
reg endTextInStrm_2_V_read;
reg endTextInStrm_3_V_read;
reg textOutStrm_V_V_write;
reg textOutStrm_1_V_V_write;
reg textOutStrm_2_V_V_write;
reg textOutStrm_3_V_V_write;
reg endTextOutStrm_V_write;
reg endTextOutStrm_1_V_write;
reg endTextOutStrm_2_V_write;
reg endTextOutStrm_3_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    taskNumStrm_blk_n;
reg   [63:0] tmp_reg_166;
reg    ap_block_state1;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm1_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm2_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm3_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm4_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm5_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm6_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm7_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm8_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm9_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm10_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm11_read;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm12_read;
wire   [127:0] grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_write;
wire   [127:0] grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_write;
wire   [127:0] grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_write;
wire   [127:0] grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_write;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_write;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_write;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_write;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_din;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_write;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_start;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_done;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_idle;
reg    grp_cipherModeParallel_4u_256u_s_fu_98_ap_continue;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_ext_blocking_n;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_str_blocking_n;
wire    grp_cipherModeParallel_4u_256u_s_fu_98_ap_int_blocking_n;
reg    grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg;
reg    ap_block_state1_ignore_call33;
wire    ap_CS_fsm_state2;
wire    ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready;
wire    ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done;
reg    ap_block_state2_on_subcall_done;
reg    ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready;
reg    ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done;
reg   [1:0] ap_NS_fsm;
wire    ap_int_blocking_cur_n;
reg    ap_ext_blocking_sub_n;
reg    ap_wait_0;
reg    ap_sub_ext_blocking_0;
reg    ap_str_blocking_sub_n;
reg    ap_sub_str_blocking_0;
reg    ap_int_blocking_sub_n;
reg    ap_sub_int_blocking_0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready = 1'b0;
#0 ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done = 1'b0;
end

aes256CbcDecryptKernel_cipherModeParallel_4u_256u_s grp_cipherModeParallel_4u_256u_s_fu_98(
    .taskNum(tmp_reg_166),
    .IVStrm_dout(IVStrm_V_V_dout),
    .IVStrm_empty_n(IVStrm_V_V_empty_n),
    .IVStrm_read(grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm_read),
    .IVStrm1_dout(IVStrm_1_V_V_dout),
    .IVStrm1_empty_n(IVStrm_1_V_V_empty_n),
    .IVStrm1_read(grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm1_read),
    .IVStrm2_dout(IVStrm_2_V_V_dout),
    .IVStrm2_empty_n(IVStrm_2_V_V_empty_n),
    .IVStrm2_read(grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm2_read),
    .IVStrm3_dout(IVStrm_3_V_V_dout),
    .IVStrm3_empty_n(IVStrm_3_V_V_empty_n),
    .IVStrm3_read(grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm3_read),
    .cipherkeyStrm_dout(cipherkeyStrm_V_V_dout),
    .cipherkeyStrm_empty_n(cipherkeyStrm_V_V_empty_n),
    .cipherkeyStrm_read(grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm_read),
    .cipherkeyStrm4_dout(cipherkeyStrm_1_V_V_dout),
    .cipherkeyStrm4_empty_n(cipherkeyStrm_1_V_V_empty_n),
    .cipherkeyStrm4_read(grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm4_read),
    .cipherkeyStrm5_dout(cipherkeyStrm_2_V_V_dout),
    .cipherkeyStrm5_empty_n(cipherkeyStrm_2_V_V_empty_n),
    .cipherkeyStrm5_read(grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm5_read),
    .cipherkeyStrm6_dout(cipherkeyStrm_3_V_V_dout),
    .cipherkeyStrm6_empty_n(cipherkeyStrm_3_V_V_empty_n),
    .cipherkeyStrm6_read(grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm6_read),
    .textInStrm_dout(textInStrm_V_V_dout),
    .textInStrm_empty_n(textInStrm_V_V_empty_n),
    .textInStrm_read(grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm_read),
    .textInStrm7_dout(textInStrm_1_V_V_dout),
    .textInStrm7_empty_n(textInStrm_1_V_V_empty_n),
    .textInStrm7_read(grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm7_read),
    .textInStrm8_dout(textInStrm_2_V_V_dout),
    .textInStrm8_empty_n(textInStrm_2_V_V_empty_n),
    .textInStrm8_read(grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm8_read),
    .textInStrm9_dout(textInStrm_3_V_V_dout),
    .textInStrm9_empty_n(textInStrm_3_V_V_empty_n),
    .textInStrm9_read(grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm9_read),
    .endTextInStrm_dout(endTextInStrm_V_dout),
    .endTextInStrm_empty_n(endTextInStrm_V_empty_n),
    .endTextInStrm_read(grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm_read),
    .endTextInStrm10_dout(endTextInStrm_1_V_dout),
    .endTextInStrm10_empty_n(endTextInStrm_1_V_empty_n),
    .endTextInStrm10_read(grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm10_read),
    .endTextInStrm11_dout(endTextInStrm_2_V_dout),
    .endTextInStrm11_empty_n(endTextInStrm_2_V_empty_n),
    .endTextInStrm11_read(grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm11_read),
    .endTextInStrm12_dout(endTextInStrm_3_V_dout),
    .endTextInStrm12_empty_n(endTextInStrm_3_V_empty_n),
    .endTextInStrm12_read(grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm12_read),
    .textOutStrm_din(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_din),
    .textOutStrm_full_n(textOutStrm_V_V_full_n),
    .textOutStrm_write(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_write),
    .textOutStrm13_din(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_din),
    .textOutStrm13_full_n(textOutStrm_1_V_V_full_n),
    .textOutStrm13_write(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_write),
    .textOutStrm14_din(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_din),
    .textOutStrm14_full_n(textOutStrm_2_V_V_full_n),
    .textOutStrm14_write(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_write),
    .textOutStrm15_din(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_din),
    .textOutStrm15_full_n(textOutStrm_3_V_V_full_n),
    .textOutStrm15_write(grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_write),
    .endTextOutStrm_din(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_din),
    .endTextOutStrm_full_n(endTextOutStrm_V_full_n),
    .endTextOutStrm_write(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_write),
    .endTextOutStrm16_din(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_din),
    .endTextOutStrm16_full_n(endTextOutStrm_1_V_full_n),
    .endTextOutStrm16_write(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_write),
    .endTextOutStrm17_din(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_din),
    .endTextOutStrm17_full_n(endTextOutStrm_2_V_full_n),
    .endTextOutStrm17_write(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_write),
    .endTextOutStrm18_din(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_din),
    .endTextOutStrm18_full_n(endTextOutStrm_3_V_full_n),
    .endTextOutStrm18_write(grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .taskNum_ap_vld(1'b1),
    .ap_start(grp_cipherModeParallel_4u_256u_s_fu_98_ap_start),
    .ap_done(grp_cipherModeParallel_4u_256u_s_fu_98_ap_done),
    .ap_ready(grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready),
    .ap_idle(grp_cipherModeParallel_4u_256u_s_fu_98_ap_idle),
    .ap_continue(grp_cipherModeParallel_4u_256u_s_fu_98_ap_continue),
    .ap_ext_blocking_n(grp_cipherModeParallel_4u_256u_s_fu_98_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_cipherModeParallel_4u_256u_s_fu_98_ap_str_blocking_n),
    .ap_int_blocking_n(grp_cipherModeParallel_4u_256u_s_fu_98_ap_int_blocking_n)
);

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
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done <= 1'b0;
        end else if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_done == 1'b1)) begin
            ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready <= 1'b0;
        end else if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)) | (~((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready == 1'b1)) begin
            grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_166 <= taskNumStrm_dout;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IVStrm_1_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm1_read;
    end else begin
        IVStrm_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IVStrm_2_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm2_read;
    end else begin
        IVStrm_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IVStrm_3_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm3_read;
    end else begin
        IVStrm_3_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IVStrm_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_IVStrm_read;
    end else begin
        IVStrm_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_ext_blocking_0) == 1'b1)) begin
        ap_ext_blocking_sub_n = 1'b0;
    end else begin
        ap_ext_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_int_blocking_0) == 1'b1)) begin
        ap_int_blocking_sub_n = 1'b0;
    end else begin
        ap_int_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_str_blocking_0) == 1'b1)) begin
        ap_str_blocking_sub_n = 1'b0;
    end else begin
        ap_str_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_0 = 1'b1;
    end else begin
        ap_sub_ext_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_0 = 1'b1;
    end else begin
        ap_sub_int_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_cipherModeParallel_4u_256u_s_fu_98_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_0 = 1'b1;
    end else begin
        ap_sub_str_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_ST_fsm_state2 == ap_CS_fsm)) begin
        ap_wait_0 = 1'b1;
    end else begin
        ap_wait_0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cipherkeyStrm_1_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm4_read;
    end else begin
        cipherkeyStrm_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cipherkeyStrm_2_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm5_read;
    end else begin
        cipherkeyStrm_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cipherkeyStrm_3_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm6_read;
    end else begin
        cipherkeyStrm_3_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cipherkeyStrm_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_cipherkeyStrm_read;
    end else begin
        cipherkeyStrm_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextInStrm_1_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm10_read;
    end else begin
        endTextInStrm_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextInStrm_2_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm11_read;
    end else begin
        endTextInStrm_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextInStrm_3_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm12_read;
    end else begin
        endTextInStrm_3_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextInStrm_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_endTextInStrm_read;
    end else begin
        endTextInStrm_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextOutStrm_1_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_write;
    end else begin
        endTextOutStrm_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextOutStrm_2_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_write;
    end else begin
        endTextOutStrm_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextOutStrm_3_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_write;
    end else begin
        endTextOutStrm_3_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        endTextOutStrm_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_write;
    end else begin
        endTextOutStrm_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_cipherModeParallel_4u_256u_s_fu_98_ap_continue = 1'b1;
    end else begin
        grp_cipherModeParallel_4u_256u_s_fu_98_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNumStrm_blk_n = taskNumStrm_empty_n;
    end else begin
        taskNumStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNumStrm_read = 1'b1;
    end else begin
        taskNumStrm_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textInStrm_1_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm7_read;
    end else begin
        textInStrm_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textInStrm_2_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm8_read;
    end else begin
        textInStrm_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textInStrm_3_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm9_read;
    end else begin
        textInStrm_3_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textInStrm_V_V_read = grp_cipherModeParallel_4u_256u_s_fu_98_textInStrm_read;
    end else begin
        textInStrm_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textOutStrm_1_V_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_write;
    end else begin
        textOutStrm_1_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textOutStrm_2_V_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_write;
    end else begin
        textOutStrm_2_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textOutStrm_3_V_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_write;
    end else begin
        textOutStrm_3_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        textOutStrm_V_V_write = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_write;
    end else begin
        textOutStrm_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call33 = ((ap_start == 1'b0) | (taskNumStrm_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready & ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done) == 1'b0);
end

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & 1'b1);

assign ap_int_blocking_cur_n = taskNumStrm_blk_n;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_str_blocking_n = (ap_str_blocking_sub_n & 1'b1);

assign ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done = (grp_cipherModeParallel_4u_256u_s_fu_98_ap_done | ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_done);

assign ap_sync_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready = (grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready | ap_sync_reg_grp_cipherModeParallel_4u_256u_s_fu_98_ap_ready);

assign endTextOutStrm_1_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm16_din;

assign endTextOutStrm_2_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm17_din;

assign endTextOutStrm_3_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm18_din;

assign endTextOutStrm_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_endTextOutStrm_din;

assign grp_cipherModeParallel_4u_256u_s_fu_98_ap_start = grp_cipherModeParallel_4u_256u_s_fu_98_ap_start_reg;

assign textOutStrm_1_V_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm13_din;

assign textOutStrm_2_V_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm14_din;

assign textOutStrm_3_V_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm15_din;

assign textOutStrm_V_V_din = grp_cipherModeParallel_4u_256u_s_fu_98_textOutStrm_din;

endmodule //aes256CbcDecryptKernel_cipherModeProcess_4u_256u_s