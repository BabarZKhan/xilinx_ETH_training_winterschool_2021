// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XADLER32KERNEL_H
#define XADLER32KERNEL_H

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
#include "xadler32kernel_hw.h"

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
} XAdler32kernel_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XAdler32kernel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAdler32kernel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAdler32kernel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAdler32kernel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAdler32kernel_ReadReg(BaseAddress, RegOffset) \
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
int XAdler32kernel_Initialize(XAdler32kernel *InstancePtr, u16 DeviceId);
XAdler32kernel_Config* XAdler32kernel_LookupConfig(u16 DeviceId);
int XAdler32kernel_CfgInitialize(XAdler32kernel *InstancePtr, XAdler32kernel_Config *ConfigPtr);
#else
int XAdler32kernel_Initialize(XAdler32kernel *InstancePtr, const char* InstanceName);
int XAdler32kernel_Release(XAdler32kernel *InstancePtr);
#endif

void XAdler32kernel_Start(XAdler32kernel *InstancePtr);
u32 XAdler32kernel_IsDone(XAdler32kernel *InstancePtr);
u32 XAdler32kernel_IsIdle(XAdler32kernel *InstancePtr);
u32 XAdler32kernel_IsReady(XAdler32kernel *InstancePtr);
void XAdler32kernel_Continue(XAdler32kernel *InstancePtr);
void XAdler32kernel_EnableAutoRestart(XAdler32kernel *InstancePtr);
void XAdler32kernel_DisableAutoRestart(XAdler32kernel *InstancePtr);

void XAdler32kernel_Set_num(XAdler32kernel *InstancePtr, u32 Data);
u32 XAdler32kernel_Get_num(XAdler32kernel *InstancePtr);
void XAdler32kernel_Set_size(XAdler32kernel *InstancePtr, u32 Data);
u32 XAdler32kernel_Get_size(XAdler32kernel *InstancePtr);
void XAdler32kernel_Set_len(XAdler32kernel *InstancePtr, u64 Data);
u64 XAdler32kernel_Get_len(XAdler32kernel *InstancePtr);
void XAdler32kernel_Set_adler(XAdler32kernel *InstancePtr, u64 Data);
u64 XAdler32kernel_Get_adler(XAdler32kernel *InstancePtr);
void XAdler32kernel_Set_inData(XAdler32kernel *InstancePtr, u64 Data);
u64 XAdler32kernel_Get_inData(XAdler32kernel *InstancePtr);
void XAdler32kernel_Set_adler32Result(XAdler32kernel *InstancePtr, u64 Data);
u64 XAdler32kernel_Get_adler32Result(XAdler32kernel *InstancePtr);

void XAdler32kernel_InterruptGlobalEnable(XAdler32kernel *InstancePtr);
void XAdler32kernel_InterruptGlobalDisable(XAdler32kernel *InstancePtr);
void XAdler32kernel_InterruptEnable(XAdler32kernel *InstancePtr, u32 Mask);
void XAdler32kernel_InterruptDisable(XAdler32kernel *InstancePtr, u32 Mask);
void XAdler32kernel_InterruptClear(XAdler32kernel *InstancePtr, u32 Mask);
u32 XAdler32kernel_InterruptGetEnabled(XAdler32kernel *InstancePtr);
u32 XAdler32kernel_InterruptGetStatus(XAdler32kernel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
