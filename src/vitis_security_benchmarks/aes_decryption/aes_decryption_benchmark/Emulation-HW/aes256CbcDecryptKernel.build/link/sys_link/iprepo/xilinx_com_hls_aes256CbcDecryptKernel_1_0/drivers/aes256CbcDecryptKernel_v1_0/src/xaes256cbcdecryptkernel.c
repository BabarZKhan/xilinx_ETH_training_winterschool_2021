// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes256cbcdecryptkernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes256cbcdecryptkernel_CfgInitialize(XAes256cbcdecryptkernel *InstancePtr, XAes256cbcdecryptkernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes256cbcdecryptkernel_Start(XAes256cbcdecryptkernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes256cbcdecryptkernel_IsDone(XAes256cbcdecryptkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes256cbcdecryptkernel_IsIdle(XAes256cbcdecryptkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes256cbcdecryptkernel_IsReady(XAes256cbcdecryptkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes256cbcdecryptkernel_Continue(XAes256cbcdecryptkernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XAes256cbcdecryptkernel_EnableAutoRestart(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAes256cbcdecryptkernel_DisableAutoRestart(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XAes256cbcdecryptkernel_Set_inputData(XAes256cbcdecryptkernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_INPUTDATA_DATA, (u32)(Data));
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_INPUTDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAes256cbcdecryptkernel_Get_inputData(XAes256cbcdecryptkernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_INPUTDATA_DATA);
    Data += (u64)XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_INPUTDATA_DATA + 4) << 32;
    return Data;
}

void XAes256cbcdecryptkernel_Set_outputData(XAes256cbcdecryptkernel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_OUTPUTDATA_DATA, (u32)(Data));
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_OUTPUTDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XAes256cbcdecryptkernel_Get_outputData(XAes256cbcdecryptkernel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_OUTPUTDATA_DATA);
    Data += (u64)XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_OUTPUTDATA_DATA + 4) << 32;
    return Data;
}

void XAes256cbcdecryptkernel_InterruptGlobalEnable(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_GIE, 1);
}

void XAes256cbcdecryptkernel_InterruptGlobalDisable(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_GIE, 0);
}

void XAes256cbcdecryptkernel_InterruptEnable(XAes256cbcdecryptkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER);
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER, Register | Mask);
}

void XAes256cbcdecryptkernel_InterruptDisable(XAes256cbcdecryptkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER);
    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAes256cbcdecryptkernel_InterruptClear(XAes256cbcdecryptkernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes256cbcdecryptkernel_WriteReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_ISR, Mask);
}

u32 XAes256cbcdecryptkernel_InterruptGetEnabled(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_IER);
}

u32 XAes256cbcdecryptkernel_InterruptGetStatus(XAes256cbcdecryptkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes256cbcdecryptkernel_ReadReg(InstancePtr->Control_BaseAddress, XAES256CBCDECRYPTKERNEL_CONTROL_ADDR_ISR);
}

