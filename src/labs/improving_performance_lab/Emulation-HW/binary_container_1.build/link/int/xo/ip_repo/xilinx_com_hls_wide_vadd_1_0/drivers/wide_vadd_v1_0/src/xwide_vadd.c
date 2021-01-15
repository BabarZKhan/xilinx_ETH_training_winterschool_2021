// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwide_vadd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWide_vadd_CfgInitialize(XWide_vadd *InstancePtr, XWide_vadd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWide_vadd_Start(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWide_vadd_IsDone(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWide_vadd_IsIdle(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWide_vadd_IsReady(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWide_vadd_Continue(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XWide_vadd_EnableAutoRestart(XWide_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWide_vadd_DisableAutoRestart(XWide_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_AP_CTRL, 0);
}

void XWide_vadd_Set_in1(XWide_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN1_DATA, (u32)(Data));
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN1_DATA + 4, (u32)(Data >> 32));
}

u64 XWide_vadd_Get_in1(XWide_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN1_DATA);
    Data += (u64)XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN1_DATA + 4) << 32;
    return Data;
}

void XWide_vadd_Set_in2(XWide_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN2_DATA, (u32)(Data));
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN2_DATA + 4, (u32)(Data >> 32));
}

u64 XWide_vadd_Get_in2(XWide_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN2_DATA);
    Data += (u64)XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IN2_DATA + 4) << 32;
    return Data;
}

void XWide_vadd_Set_out_r(XWide_vadd *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XWide_vadd_Get_out_r(XWide_vadd *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XWide_vadd_Set_size(XWide_vadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XWide_vadd_Get_size(XWide_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XWide_vadd_InterruptGlobalEnable(XWide_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_GIE, 1);
}

void XWide_vadd_InterruptGlobalDisable(XWide_vadd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_GIE, 0);
}

void XWide_vadd_InterruptEnable(XWide_vadd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IER);
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IER, Register | Mask);
}

void XWide_vadd_InterruptDisable(XWide_vadd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IER);
    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWide_vadd_InterruptClear(XWide_vadd *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWide_vadd_WriteReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_ISR, Mask);
}

u32 XWide_vadd_InterruptGetEnabled(XWide_vadd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_IER);
}

u32 XWide_vadd_InterruptGetStatus(XWide_vadd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWide_vadd_ReadReg(InstancePtr->Control_BaseAddress, XWIDE_VADD_CONTROL_ADDR_ISR);
}

