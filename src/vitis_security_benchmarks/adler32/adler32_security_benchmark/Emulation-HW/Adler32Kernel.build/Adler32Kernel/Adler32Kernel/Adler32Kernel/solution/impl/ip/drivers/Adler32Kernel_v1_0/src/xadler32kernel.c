// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xadler32kernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAdler32kernel_CfgInitialize(XAdler32kernel *InstancePtr, XAdler32kernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAdler32kernel_Start(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAdler32kernel_IsDone(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAdler32kernel_IsIdle(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAdler32kernel_IsReady(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAdler32kernel_Continue(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XAdler32kernel_EnableAutoRestart(XAdler32kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAdler32kernel_DisableAutoRestart(XAdler32kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XAdler32kernel_Set_num(XAdler32kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_NUM_DATA, Data);
}

u32 XAdler32kernel_Get_num(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_NUM_DATA);
    return Data;
}

void XAdler32kernel_Set_size(XAdler32kernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XAdler32kernel_Get_size(XAdler32kernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XAdler32kernel_Set_len(XAdler32kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_LEN_DATA, (u32)(Data));
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_LEN_DATA + 4, (u32)(Data >> 32));
}

u64 XAdler32kernel_Get_len(XAdler32kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_LEN_DATA);
    Data += (u64)XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_LEN_DATA + 4) << 32;
    return Data;
}

void XAdler32kernel_Set_adler(XAdler32kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER_DATA, (u32)(Data));
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER_DATA + 4, (u32)(Data >> 32));
}

u64 XAdler32kernel_Get_adler(XAdler32kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER_DATA);
    Data += (u64)XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER_DATA + 4) << 32;
    return Data;
}

void XAdler32kernel_Set_inData(XAdler32kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_INDATA_DATA, (u32)(Data));
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_INDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAdler32kernel_Get_inData(XAdler32kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_INDATA_DATA);
    Data += (u64)XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_INDATA_DATA + 4) << 32;
    return Data;
}

void XAdler32kernel_Set_adler32Result(XAdler32kernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER32RESULT_DATA, (u32)(Data));
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER32RESULT_DATA + 4, (u32)(Data >> 32));
}

u64 XAdler32kernel_Get_adler32Result(XAdler32kernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER32RESULT_DATA);
    Data += (u64)XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ADLER32RESULT_DATA + 4) << 32;
    return Data;
}

void XAdler32kernel_InterruptGlobalEnable(XAdler32kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_GIE, 1);
}

void XAdler32kernel_InterruptGlobalDisable(XAdler32kernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_GIE, 0);
}

void XAdler32kernel_InterruptEnable(XAdler32kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_IER);
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_IER, Register | Mask);
}

void XAdler32kernel_InterruptDisable(XAdler32kernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_IER);
    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAdler32kernel_InterruptClear(XAdler32kernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdler32kernel_WriteReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ISR, Mask);
}

u32 XAdler32kernel_InterruptGetEnabled(XAdler32kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_IER);
}

u32 XAdler32kernel_InterruptGetStatus(XAdler32kernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdler32kernel_ReadReg(InstancePtr->Control_BaseAddress, XADLER32KERNEL_CONTROL_ADDR_ISR);
}

