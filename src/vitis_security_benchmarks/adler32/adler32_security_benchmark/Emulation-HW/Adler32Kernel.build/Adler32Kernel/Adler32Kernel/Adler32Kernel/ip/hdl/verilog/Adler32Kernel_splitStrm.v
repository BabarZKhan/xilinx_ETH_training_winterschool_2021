// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Adler32Kernel_splitStrm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        inStrm_dout,
        inStrm_empty_n,
        inStrm_read,
        outStrm_din,
        outStrm_full_n,
        outStrm_write,
        n_dout,
        n_empty_n,
        n_read,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state6 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] inStrm_dout;
input   inStrm_empty_n;
output   inStrm_read;
output  [127:0] outStrm_din;
input   outStrm_full_n;
output   outStrm_write;
input  [31:0] n_dout;
input   n_empty_n;
output   n_read;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg inStrm_read;
reg outStrm_write;
reg n_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    inStrm_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln31_reg_265;
reg    outStrm_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] icmp_ln28_reg_251;
reg   [0:0] icmp_ln28_reg_251_pp0_iter2_reg;
reg    n_blk_n;
reg   [30:0] i_reg_81;
reg   [31:0] n_read_reg_246;
reg    ap_block_state1;
wire   [0:0] icmp_ln28_fu_96_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln28_reg_251_pp0_iter1_reg;
wire   [30:0] i_1_fu_101_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] offset_fu_107_p1;
reg   [1:0] offset_reg_260;
reg   [1:0] offset_reg_260_pp0_iter1_reg;
wire   [0:0] icmp_ln31_fu_111_p2;
wire   [127:0] trunc_ln358_fu_236_p1;
reg   [127:0] trunc_ln358_reg_269;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg   [511:0] p_Val2_s_fu_58;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] zext_ln28_fu_92_p1;
wire   [8:0] shl_ln_fu_125_p3;
wire   [8:0] or_ln34_fu_132_p2;
wire   [9:0] zext_ln674_fu_144_p1;
wire   [9:0] zext_ln674_1_fu_148_p1;
wire   [0:0] icmp_ln674_fu_138_p2;
wire   [9:0] sub_ln674_fu_162_p2;
wire   [9:0] sub_ln674_1_fu_174_p2;
reg   [511:0] tmp_1_fu_152_p4;
wire   [9:0] xor_ln674_fu_168_p2;
wire   [9:0] select_ln674_fu_180_p3;
wire   [9:0] select_ln674_2_fu_196_p3;
wire   [9:0] sub_ln674_2_fu_204_p2;
wire   [511:0] select_ln674_1_fu_188_p3;
wire   [511:0] zext_ln674_2_fu_210_p1;
wire   [511:0] zext_ln674_3_fu_214_p1;
wire   [511:0] lshr_ln674_fu_218_p2;
wire   [511:0] lshr_ln674_1_fu_224_p2;
wire   [511:0] p_Result_s_fu_230_p2;
wire    ap_CS_fsm_state6;
reg   [2:0] ap_NS_fsm;
wire    ap_int_blocking_cur_n;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_81 <= i_1_fu_101_p2;
    end else if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_81 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_251 <= icmp_ln28_fu_96_p2;
        icmp_ln28_reg_251_pp0_iter1_reg <= icmp_ln28_reg_251;
        offset_reg_260_pp0_iter1_reg <= offset_reg_260;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln28_reg_251_pp0_iter2_reg <= icmp_ln28_reg_251_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln28_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln31_reg_265 <= icmp_ln31_fu_111_p2;
        offset_reg_260 <= offset_fu_107_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_read_reg_246 <= n_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Val2_s_fu_58 <= inStrm_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln28_reg_251_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln358_reg_269 <= trunc_ln358_fu_236_p1;
    end
end

always @ (*) begin
    if ((icmp_ln28_fu_96_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln31_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStrm_blk_n = inStrm_empty_n;
    end else begin
        inStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln31_reg_265 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStrm_read = 1'b1;
    end else begin
        inStrm_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_blk_n = n_empty_n;
    end else begin
        n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        n_read = 1'b1;
    end else begin
        n_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        outStrm_blk_n = outStrm_full_n;
    end else begin
        outStrm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        outStrm_write = 1'b1;
    end else begin
        outStrm_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_96_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_96_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (outStrm_full_n == 1'b0)) | ((icmp_ln31_reg_265 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (inStrm_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (outStrm_full_n == 1'b0)) | ((icmp_ln31_reg_265 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (inStrm_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (outStrm_full_n == 1'b0)) | ((icmp_ln31_reg_265 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (inStrm_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (n_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln31_reg_265 == 1'd1) & (inStrm_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter3 = ((icmp_ln28_reg_251_pp0_iter2_reg == 1'd1) & (outStrm_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_cur_n = (outStrm_blk_n & n_blk_n & inStrm_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign i_1_fu_101_p2 = (i_reg_81 + 31'd1);

assign icmp_ln28_fu_96_p2 = (($signed(zext_ln28_fu_92_p1) < $signed(n_read_reg_246)) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_111_p2 = ((offset_fu_107_p1 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln674_fu_138_p2 = ((shl_ln_fu_125_p3 > or_ln34_fu_132_p2) ? 1'b1 : 1'b0);

assign lshr_ln674_1_fu_224_p2 = 512'd13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095 >> zext_ln674_3_fu_214_p1;

assign lshr_ln674_fu_218_p2 = select_ln674_1_fu_188_p3 >> zext_ln674_2_fu_210_p1;

assign offset_fu_107_p1 = i_reg_81[1:0];

assign or_ln34_fu_132_p2 = (shl_ln_fu_125_p3 | 9'd127);

assign outStrm_din = trunc_ln358_reg_269;

assign p_Result_s_fu_230_p2 = (lshr_ln674_fu_218_p2 & lshr_ln674_1_fu_224_p2);

assign select_ln674_1_fu_188_p3 = ((icmp_ln674_fu_138_p2[0:0] === 1'b1) ? tmp_1_fu_152_p4 : p_Val2_s_fu_58);

assign select_ln674_2_fu_196_p3 = ((icmp_ln674_fu_138_p2[0:0] === 1'b1) ? xor_ln674_fu_168_p2 : zext_ln674_fu_144_p1);

assign select_ln674_fu_180_p3 = ((icmp_ln674_fu_138_p2[0:0] === 1'b1) ? sub_ln674_fu_162_p2 : sub_ln674_1_fu_174_p2);

assign shl_ln_fu_125_p3 = {{offset_reg_260_pp0_iter1_reg}, {7'd0}};

assign sub_ln674_1_fu_174_p2 = (zext_ln674_1_fu_148_p1 - zext_ln674_fu_144_p1);

assign sub_ln674_2_fu_204_p2 = (10'd511 - select_ln674_fu_180_p3);

assign sub_ln674_fu_162_p2 = (zext_ln674_fu_144_p1 - zext_ln674_1_fu_148_p1);

integer ap_tvar_int_0;

always @ (p_Val2_s_fu_58) begin
    for (ap_tvar_int_0 = 512 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 511 - 0) begin
            tmp_1_fu_152_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_1_fu_152_p4[ap_tvar_int_0] = p_Val2_s_fu_58[511 - ap_tvar_int_0];
        end
    end
end

assign trunc_ln358_fu_236_p1 = p_Result_s_fu_230_p2[127:0];

assign xor_ln674_fu_168_p2 = (zext_ln674_fu_144_p1 ^ 10'd511);

assign zext_ln28_fu_92_p1 = i_reg_81;

assign zext_ln674_1_fu_148_p1 = or_ln34_fu_132_p2;

assign zext_ln674_2_fu_210_p1 = select_ln674_2_fu_196_p3;

assign zext_ln674_3_fu_214_p1 = sub_ln674_2_fu_204_p2;

assign zext_ln674_fu_144_p1 = shl_ln_fu_125_p3;

endmodule //Adler32Kernel_splitStrm