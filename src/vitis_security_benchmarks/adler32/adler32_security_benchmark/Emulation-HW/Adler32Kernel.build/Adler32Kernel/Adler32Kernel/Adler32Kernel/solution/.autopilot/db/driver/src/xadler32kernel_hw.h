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
// 0x10 : Data signal of num
//        bit 31~0 - num[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of size
//        bit 31~0 - size[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of len
//        bit 31~0 - len[31:0] (Read/Write)
// 0x24 : Data signal of len
//        bit 31~0 - len[63:32] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of adler
//        bit 31~0 - adler[31:0] (Read/Write)
// 0x30 : Data signal of adler
//        bit 31~0 - adler[63:32] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of inData
//        bit 31~0 - inData[31:0] (Read/Write)
// 0x3c : Data signal of inData
//        bit 31~0 - inData[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of adler32Result
//        bit 31~0 - adler32Result[31:0] (Read/Write)
// 0x48 : Data signal of adler32Result
//        bit 31~0 - adler32Result[63:32] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XADLER32KERNEL_CONTROL_ADDR_AP_CTRL            0x00
#define XADLER32KERNEL_CONTROL_ADDR_GIE                0x04
#define XADLER32KERNEL_CONTROL_ADDR_IER                0x08
#define XADLER32KERNEL_CONTROL_ADDR_ISR                0x0c
#define XADLER32KERNEL_CONTROL_ADDR_NUM_DATA           0x10
#define XADLER32KERNEL_CONTROL_BITS_NUM_DATA           32
#define XADLER32KERNEL_CONTROL_ADDR_SIZE_DATA          0x18
#define XADLER32KERNEL_CONTROL_BITS_SIZE_DATA          32
#define XADLER32KERNEL_CONTROL_ADDR_LEN_DATA           0x20
#define XADLER32KERNEL_CONTROL_BITS_LEN_DATA           64
#define XADLER32KERNEL_CONTROL_ADDR_ADLER_DATA         0x2c
#define XADLER32KERNEL_CONTROL_BITS_ADLER_DATA         64
#define XADLER32KERNEL_CONTROL_ADDR_INDATA_DATA        0x38
#define XADLER32KERNEL_CONTROL_BITS_INDATA_DATA        64
#define XADLER32KERNEL_CONTROL_ADDR_ADLER32RESULT_DATA 0x44
#define XADLER32KERNEL_CONTROL_BITS_ADLER32RESULT_DATA 64

