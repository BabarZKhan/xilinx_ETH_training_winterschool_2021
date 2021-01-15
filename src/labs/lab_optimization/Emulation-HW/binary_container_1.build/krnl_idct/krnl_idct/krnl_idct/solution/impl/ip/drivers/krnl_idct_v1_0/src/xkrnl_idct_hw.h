// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of block_r
//        bit 31~0 - block_r[31:0] (Read/Write)
// 0x14 : Data signal of block_r
//        bit 31~0 - block_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of q
//        bit 31~0 - q[31:0] (Read/Write)
// 0x20 : Data signal of q
//        bit 31~0 - q[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of voutp
//        bit 31~0 - voutp[31:0] (Read/Write)
// 0x2c : Data signal of voutp
//        bit 31~0 - voutp[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of ignore_dc
//        bit 31~0 - ignore_dc[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of blocks
//        bit 31~0 - blocks[31:0] (Read/Write)
// 0x40 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKRNL_IDCT_CONTROL_ADDR_AP_CTRL        0x00
#define XKRNL_IDCT_CONTROL_ADDR_GIE            0x04
#define XKRNL_IDCT_CONTROL_ADDR_IER            0x08
#define XKRNL_IDCT_CONTROL_ADDR_ISR            0x0c
#define XKRNL_IDCT_CONTROL_ADDR_BLOCK_R_DATA   0x10
#define XKRNL_IDCT_CONTROL_BITS_BLOCK_R_DATA   64
#define XKRNL_IDCT_CONTROL_ADDR_Q_DATA         0x1c
#define XKRNL_IDCT_CONTROL_BITS_Q_DATA         64
#define XKRNL_IDCT_CONTROL_ADDR_VOUTP_DATA     0x28
#define XKRNL_IDCT_CONTROL_BITS_VOUTP_DATA     64
#define XKRNL_IDCT_CONTROL_ADDR_IGNORE_DC_DATA 0x34
#define XKRNL_IDCT_CONTROL_BITS_IGNORE_DC_DATA 32
#define XKRNL_IDCT_CONTROL_ADDR_BLOCKS_DATA    0x3c
#define XKRNL_IDCT_CONTROL_BITS_BLOCKS_DATA    32

