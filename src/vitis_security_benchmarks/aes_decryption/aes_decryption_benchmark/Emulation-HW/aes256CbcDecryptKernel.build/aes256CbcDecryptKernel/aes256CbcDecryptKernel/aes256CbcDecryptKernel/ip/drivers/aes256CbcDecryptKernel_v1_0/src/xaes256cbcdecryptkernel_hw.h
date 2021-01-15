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
// 0x10 : Data signal of inputData
//        bit 31~0 - inputData[31:0] (Read/Write)
// 0x14 : Data signal of inputData
//        bit 31~0 - inputData[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of outputData
//        bit 31~0 - outputData[31:0] (Read/Write)
// 0x20 : Data signal of outputData
//        bit 31~0 - outputData[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL         0x00
#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_GIE             0x04
#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER             0x08
#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_ISR             0x0c
#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_INPUTDATA_DATA  0x10
#define XAES256CBCDECRYPTKERNEL_CONTROL_BITS_INPUTDATA_DATA  64
#define XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_OUTPUTDATA_DATA 0x1c
#define XAES256CBCDECRYPTKERNEL_CONTROL_BITS_OUTPUTDATA_DATA 64

