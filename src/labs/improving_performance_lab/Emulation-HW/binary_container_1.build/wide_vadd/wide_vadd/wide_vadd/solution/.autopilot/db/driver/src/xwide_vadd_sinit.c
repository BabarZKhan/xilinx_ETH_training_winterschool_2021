// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwide_vadd.h"

extern XWide_vadd_Config XWide_vadd_ConfigTable[];

XWide_vadd_Config *XWide_vadd_LookupConfig(u16 DeviceId) {
	XWide_vadd_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWIDE_VADD_NUM_INSTANCES; Index++) {
		if (XWide_vadd_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWide_vadd_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWide_vadd_Initialize(XWide_vadd *InstancePtr, u16 DeviceId) {
	XWide_vadd_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWide_vadd_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWide_vadd_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

