// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Adler32Kernel_Adler32Kernel_entry3 (
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
        num,
        size,
        len,
        adler,
        inData,
        adler32Result,
        num_out_din,
        num_out_full_n,
        num_out_write,
        num_out1_din,
        num_out1_full_n,
        num_out1_write,
        size_out_din,
        size_out_full_n,
        size_out_write,
        len_out_din,
        len_out_full_n,
        len_out_write,
        adler_out_din,
        adler_out_full_n,
        adler_out_write,
        inData_out_din,
        inData_out_full_n,
        inData_out_write,
        adler32Result_out_din,
        adler32Result_out_full_n,
        adler32Result_out_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 1'd1;

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
input  [31:0] num;
input  [31:0] size;
input  [63:0] len;
input  [63:0] adler;
input  [63:0] inData;
input  [63:0] adler32Result;
output  [31:0] num_out_din;
input   num_out_full_n;
output   num_out_write;
output  [31:0] num_out1_din;
input   num_out1_full_n;
output   num_out1_write;
output  [31:0] size_out_din;
input   size_out_full_n;
output   size_out_write;
output  [63:0] len_out_din;
input   len_out_full_n;
output   len_out_write;
output  [63:0] adler_out_din;
input   adler_out_full_n;
output   adler_out_write;
output  [63:0] inData_out_din;
input   inData_out_full_n;
output   inData_out_write;
output  [63:0] adler32Result_out_din;
input   adler32Result_out_full_n;
output   adler32Result_out_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg start_write;
reg num_out_write;
reg num_out1_write;
reg size_out_write;
reg len_out_write;
reg adler_out_write;
reg inData_out_write;
reg adler32Result_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    num_out_blk_n;
reg    num_out1_blk_n;
reg    size_out_blk_n;
reg    len_out_blk_n;
reg    adler_out_blk_n;
reg    inData_out_blk_n;
reg    adler32Result_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
wire    ap_int_blocking_cur_n;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
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
        end else if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        adler32Result_out_blk_n = adler32Result_out_full_n;
    end else begin
        adler32Result_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        adler32Result_out_write = 1'b1;
    end else begin
        adler32Result_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        adler_out_blk_n = adler_out_full_n;
    end else begin
        adler_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        adler_out_write = 1'b1;
    end else begin
        adler_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inData_out_blk_n = inData_out_full_n;
    end else begin
        inData_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        inData_out_write = 1'b1;
    end else begin
        inData_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        len_out_blk_n = len_out_full_n;
    end else begin
        len_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        len_out_write = 1'b1;
    end else begin
        len_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        num_out1_blk_n = num_out1_full_n;
    end else begin
        num_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        num_out1_write = 1'b1;
    end else begin
        num_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        num_out_blk_n = num_out_full_n;
    end else begin
        num_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        num_out_write = 1'b1;
    end else begin
        num_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_out_blk_n = size_out_full_n;
    end else begin
        size_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_out_write = 1'b1;
    end else begin
        size_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign adler32Result_out_din = adler32Result;

assign adler_out_din = adler;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (inData_out_full_n == 1'b0) | (len_out_full_n == 1'b0) | (size_out_full_n == 1'b0) | (num_out1_full_n == 1'b0) | (num_out_full_n == 1'b0) | (1'b0 == adler32Result_out_full_n) | (1'b0 == adler_out_full_n) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_cur_n = (size_out_blk_n & num_out_blk_n & num_out1_blk_n & len_out_blk_n & inData_out_blk_n & adler_out_blk_n & adler32Result_out_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_ready = internal_ap_ready;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign inData_out_din = inData;

assign len_out_din = len;

assign num_out1_din = num;

assign num_out_din = num;

assign size_out_din = size;

assign start_out = real_start;

endmodule //Adler32Kernel_Adler32Kernel_entry3
