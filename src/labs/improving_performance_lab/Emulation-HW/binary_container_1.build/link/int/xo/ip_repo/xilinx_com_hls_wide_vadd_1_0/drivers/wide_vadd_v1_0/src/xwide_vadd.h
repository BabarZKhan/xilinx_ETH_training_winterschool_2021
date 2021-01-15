// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWIDE_VADD_H
#define XWIDE_VADD_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xwide_vadd_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XWide_vadd_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XWide_vadd;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWide_vadd_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWide_vadd_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWide_vadd_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWide_vadd_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XWide_vadd_Initialize(XWide_vadd *InstancePtr, u16 DeviceId);
XWide_vadd_Config* XWide_vadd_LookupConfig(u16 DeviceId);
int XWide_vadd_CfgInitialize(XWide_vadd *InstancePtr, XWide_vadd_Config *ConfigPtr);
#else
int XWide_vadd_Initialize(XWide_vadd *InstancePtr, const char* InstanceName);
int XWide_vadd_Release(XWide_vadd *InstancePtr);
#endif

void XWide_vadd_Start(XWide_vadd *InstancePtr);
u32 XWide_vadd_IsDone(XWide_vadd *InstancePtr);
u32 XWide_vadd_IsIdle(XWide_vadd *InstancePtr);
u32 XWide_vadd_IsReady(XWide_vadd *InstancePtr);
void XWide_vadd_Continue(XWide_vadd *InstancePtr);
void XWide_vadd_EnableAutoRestart(XWide_vadd *InstancePtr);
void XWide_vadd_DisableAutoRestart(XWide_vadd *InstancePtr);

void XWide_vadd_Set_in1(XWide_vadd *InstancePtr, u64 Data);
u64 XWide_vadd_Get_in1(XWide_vadd *InstancePtr);
void XWide_vadd_Set_in2(XWide_vadd *InstancePtr, u64 Data);
u64 XWide_vadd_Get_in2(XWide_vadd *InstancePtr);
void XWide_vadd_Set_out_r(XWide_vadd *InstancePtr, u64 Data);
u64 XWide_vadd_Get_out_r(XWide_vadd *InstancePtr);
void XWide_vadd_Set_size(XWide_vadd *InstancePtr, u32 Data);
u32 XWide_vadd_Get_size(XWide_vadd *InstancePtr);

void XWide_vadd_InterruptGlobalEnable(XWide_vadd *InstancePtr);
void XWide_vadd_InterruptGlobalDisable(XWide_vadd *InstancePtr);
void XWide_vadd_InterruptEnable(XWide_vadd *InstancePtr, u32 Mask);
void XWide_vadd_InterruptDisable(XWide_vadd *InstancePtr, u32 Mask);
void XWide_vadd_InterruptClear(XWide_vadd *InstancePtr, u32 Mask);
u32 XWide_vadd_InterruptGetEnabled(XWide_vadd *InstancePtr);
u32 XWide_vadd_InterruptGetStatus(XWide_vadd *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
