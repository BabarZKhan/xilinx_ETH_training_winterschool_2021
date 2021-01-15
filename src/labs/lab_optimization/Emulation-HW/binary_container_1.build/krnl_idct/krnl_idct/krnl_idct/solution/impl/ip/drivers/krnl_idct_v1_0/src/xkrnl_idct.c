// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkrnl_idct.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKrnl_idct_CfgInitialize(XKrnl_idct *InstancePtr, XKrnl_idct_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKrnl_idct_Start(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKrnl_idct_IsDone(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKrnl_idct_IsIdle(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKrnl_idct_IsReady(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKrnl_idct_Continue(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XKrnl_idct_EnableAutoRestart(XKrnl_idct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKrnl_idct_DisableAutoRestart(XKrnl_idct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_AP_CTRL, 0);
}

void XKrnl_idct_Set_block_r(XKrnl_idct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCK_R_DATA, (u32)(Data));
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCK_R_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_idct_Get_block_r(XKrnl_idct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCK_R_DATA);
    Data += (u64)XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCK_R_DATA + 4) << 32;
    return Data;
}

void XKrnl_idct_Set_q(XKrnl_idct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_Q_DATA, (u32)(Data));
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_Q_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_idct_Get_q(XKrnl_idct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_Q_DATA);
    Data += (u64)XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_Q_DATA + 4) << 32;
    return Data;
}

void XKrnl_idct_Set_voutp(XKrnl_idct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_VOUTP_DATA, (u32)(Data));
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_VOUTP_DATA + 4, (u32)(Data >> 32));
}

u64 XKrnl_idct_Get_voutp(XKrnl_idct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_VOUTP_DATA);
    Data += (u64)XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_VOUTP_DATA + 4) << 32;
    return Data;
}

void XKrnl_idct_Set_ignore_dc(XKrnl_idct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IGNORE_DC_DATA, Data);
}

u32 XKrnl_idct_Get_ignore_dc(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IGNORE_DC_DATA);
    return Data;
}

void XKrnl_idct_Set_blocks(XKrnl_idct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCKS_DATA, Data);
}

u32 XKrnl_idct_Get_blocks(XKrnl_idct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_BLOCKS_DATA);
    return Data;
}

void XKrnl_idct_InterruptGlobalEnable(XKrnl_idct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_GIE, 1);
}

void XKrnl_idct_InterruptGlobalDisable(XKrnl_idct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_GIE, 0);
}

void XKrnl_idct_InterruptEnable(XKrnl_idct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IER);
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IER, Register | Mask);
}

void XKrnl_idct_InterruptDisable(XKrnl_idct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IER);
    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKrnl_idct_InterruptClear(XKrnl_idct *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_idct_WriteReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_ISR, Mask);
}

u32 XKrnl_idct_InterruptGetEnabled(XKrnl_idct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_IER);
}

u32 XKrnl_idct_InterruptGetStatus(XKrnl_idct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKrnl_idct_ReadReg(InstancePtr->Control_BaseAddress, XKRNL_IDCT_CONTROL_ADDR_ISR);
}

