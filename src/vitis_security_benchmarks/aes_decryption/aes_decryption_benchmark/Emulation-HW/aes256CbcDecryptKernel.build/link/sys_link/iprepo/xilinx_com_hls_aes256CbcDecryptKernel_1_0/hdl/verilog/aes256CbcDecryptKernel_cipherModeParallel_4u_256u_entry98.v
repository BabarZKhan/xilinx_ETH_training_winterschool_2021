// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes256CbcDecryptKernel_cipherModeParallel_4u_256u_entry98 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        taskNum,
        taskNum_out_din,
        taskNum_out_full_n,
        taskNum_out_write,
        taskNum_out1_din,
        taskNum_out1_full_n,
        taskNum_out1_write,
        taskNum_out2_din,
        taskNum_out2_full_n,
        taskNum_out2_write,
        taskNum_out3_din,
        taskNum_out3_full_n,
        taskNum_out3_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] taskNum;
output  [63:0] taskNum_out_din;
input   taskNum_out_full_n;
output   taskNum_out_write;
output  [63:0] taskNum_out1_din;
input   taskNum_out1_full_n;
output   taskNum_out1_write;
output  [63:0] taskNum_out2_din;
input   taskNum_out2_full_n;
output   taskNum_out2_write;
output  [63:0] taskNum_out3_din;
input   taskNum_out3_full_n;
output   taskNum_out3_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg taskNum_out_write;
reg taskNum_out1_write;
reg taskNum_out2_write;
reg taskNum_out3_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    taskNum_out_blk_n;
reg    taskNum_out1_blk_n;
reg    taskNum_out2_blk_n;
reg    taskNum_out3_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
wire    ap_int_blocking_cur_n;

// power-on initialization
initial begin
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
        end else if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out1_blk_n = taskNum_out1_full_n;
    end else begin
        taskNum_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out1_write = 1'b1;
    end else begin
        taskNum_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out2_blk_n = taskNum_out2_full_n;
    end else begin
        taskNum_out2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out2_write = 1'b1;
    end else begin
        taskNum_out2_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out3_blk_n = taskNum_out3_full_n;
    end else begin
        taskNum_out3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out3_write = 1'b1;
    end else begin
        taskNum_out3_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out_blk_n = taskNum_out_full_n;
    end else begin
        taskNum_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        taskNum_out_write = 1'b1;
    end else begin
        taskNum_out_write = 1'b0;
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (taskNum_out3_full_n == 1'b0) | (taskNum_out2_full_n == 1'b0) | (taskNum_out1_full_n == 1'b0) | (taskNum_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_n = (1'b1 & 1'b1);

assign ap_int_blocking_cur_n = (taskNum_out_blk_n & taskNum_out3_blk_n & taskNum_out2_blk_n & taskNum_out1_blk_n);

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign taskNum_out1_din = taskNum;

assign taskNum_out2_din = taskNum;

assign taskNum_out3_din = taskNum;

assign taskNum_out_din = taskNum;

endmodule //aes256CbcDecryptKernel_cipherModeParallel_4u_256u_entry98
