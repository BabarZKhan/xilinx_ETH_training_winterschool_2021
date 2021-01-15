// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xadler32kernel.h"

extern XAdler32kernel_Config XAdler32kernel_ConfigTable[];

XAdler32kernel_Config *XAdler32kernel_LookupConfig(u16 DeviceId) {
	XAdler32kernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XADLER32KERNEL_NUM_INSTANCES; Index++) {
		if (XAdler32kernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAdler32kernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAdler32kernel_Initialize(XAdler32kernel *InstancePtr, u16 DeviceId) {
	XAdler32kernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAdler32kernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAdler32kernel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

