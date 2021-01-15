// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatmul_partition.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatmul_partition_CfgInitialize(XMatmul_partition *InstancePtr, XMatmul_partition_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatmul_partition_Start(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatmul_partition_IsDone(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatmul_partition_IsIdle(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatmul_partition_IsReady(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatmul_partition_Continue(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XMatmul_partition_EnableAutoRestart(XMatmul_partition *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMatmul_partition_DisableAutoRestart(XMatmul_partition *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_AP_CTRL, 0);
}

void XMatmul_partition_Set_in1(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_in1(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN1_DATA + 4) << 32;
    return Data;
}

void XMatmul_partition_Set_in2(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_in2(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IN2_DATA + 4) << 32;
    return Data;
}

void XMatmul_partition_Set_out_r(XMatmul_partition *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMatmul_partition_Get_out_r(XMatmul_partition *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XMatmul_partition_Set_dim(XMatmul_partition *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_DIM_DATA, Data);
}

u32 XMatmul_partition_Get_dim(XMatmul_partition *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_DIM_DATA);
    return Data;
}

void XMatmul_partition_InterruptGlobalEnable(XMatmul_partition *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_GIE, 1);
}

void XMatmul_partition_InterruptGlobalDisable(XMatmul_partition *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_GIE, 0);
}

void XMatmul_partition_InterruptEnable(XMatmul_partition *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IER);
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IER, Register | Mask);
}

void XMatmul_partition_InterruptDisable(XMatmul_partition *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IER);
    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMatmul_partition_InterruptClear(XMatmul_partition *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_partition_WriteReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_ISR, Mask);
}

u32 XMatmul_partition_InterruptGetEnabled(XMatmul_partition *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_IER);
}

u32 XMatmul_partition_InterruptGetStatus(XMatmul_partition *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_partition_ReadReg(InstancePtr->Control_BaseAddress, XMATMUL_PARTITION_CONTROL_ADDR_ISR);
}

