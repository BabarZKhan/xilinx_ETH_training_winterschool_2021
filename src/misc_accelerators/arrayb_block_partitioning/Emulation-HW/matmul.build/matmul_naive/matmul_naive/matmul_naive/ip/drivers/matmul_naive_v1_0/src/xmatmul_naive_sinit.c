// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatmul_naive.h"

extern XMatmul_naive_Config XMatmul_naive_ConfigTable[];

XMatmul_naive_Config *XMatmul_naive_LookupConfig(u16 DeviceId) {
	XMatmul_naive_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATMUL_NAIVE_NUM_INSTANCES; Index++) {
		if (XMatmul_naive_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatmul_naive_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_naive_Initialize(XMatmul_naive *InstancePtr, u16 DeviceId) {
	XMatmul_naive_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_naive_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_naive_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

