// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkrnl_idct.h"

extern XKrnl_idct_Config XKrnl_idct_ConfigTable[];

XKrnl_idct_Config *XKrnl_idct_LookupConfig(u16 DeviceId) {
	XKrnl_idct_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKRNL_IDCT_NUM_INSTANCES; Index++) {
		if (XKrnl_idct_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKrnl_idct_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKrnl_idct_Initialize(XKrnl_idct *InstancePtr, u16 DeviceId) {
	XKrnl_idct_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKrnl_idct_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKrnl_idct_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

