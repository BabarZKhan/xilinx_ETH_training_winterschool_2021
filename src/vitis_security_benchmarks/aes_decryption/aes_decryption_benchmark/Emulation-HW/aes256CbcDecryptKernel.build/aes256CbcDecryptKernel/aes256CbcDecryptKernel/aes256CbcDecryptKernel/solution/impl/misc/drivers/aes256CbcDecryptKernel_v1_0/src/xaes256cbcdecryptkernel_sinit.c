// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes256cbcdecryptkernel.h"

extern XAes256cbcdecryptkernel_Config XAes256cbcdecryptkernel_ConfigTable[];

XAes256cbcdecryptkernel_Config *XAes256cbcdecryptkernel_LookupConfig(u16 DeviceId) {
	XAes256cbcdecryptkernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES256CBCDECRYPTKERNEL_NUM_INSTANCES; Index++) {
		if (XAes256cbcdecryptkernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes256cbcdecryptkernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes256cbcdecryptkernel_Initialize(XAes256cbcdecryptkernel *InstancePtr, u16 DeviceId) {
	XAes256cbcdecryptkernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes256cbcdecryptkernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes256cbcdecryptkernel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

