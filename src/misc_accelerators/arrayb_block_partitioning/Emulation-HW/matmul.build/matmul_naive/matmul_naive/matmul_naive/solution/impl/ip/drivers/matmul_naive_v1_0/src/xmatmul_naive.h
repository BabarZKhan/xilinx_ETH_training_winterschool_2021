// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATMUL_NAIVE_H
#define XMATMUL_NAIVE_H

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
#include "xmatmul_naive_hw.h"

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
} XMatmul_naive_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XMatmul_naive;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatmul_naive_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatmul_naive_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatmul_naive_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatmul_naive_ReadReg(BaseAddress, RegOffset) \
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
int XMatmul_naive_Initialize(XMatmul_naive *InstancePtr, u16 DeviceId);
XMatmul_naive_Config* XMatmul_naive_LookupConfig(u16 DeviceId);
int XMatmul_naive_CfgInitialize(XMatmul_naive *InstancePtr, XMatmul_naive_Config *ConfigPtr);
#else
int XMatmul_naive_Initialize(XMatmul_naive *InstancePtr, const char* InstanceName);
int XMatmul_naive_Release(XMatmul_naive *InstancePtr);
#endif

void XMatmul_naive_Start(XMatmul_naive *InstancePtr);
u32 XMatmul_naive_IsDone(XMatmul_naive *InstancePtr);
u32 XMatmul_naive_IsIdle(XMatmul_naive *InstancePtr);
u32 XMatmul_naive_IsReady(XMatmul_naive *InstancePtr);
void XMatmul_naive_Continue(XMatmul_naive *InstancePtr);
void XMatmul_naive_EnableAutoRestart(XMatmul_naive *InstancePtr);
void XMatmul_naive_DisableAutoRestart(XMatmul_naive *InstancePtr);

void XMatmul_naive_Set_in1(XMatmul_naive *InstancePtr, u64 Data);
u64 XMatmul_naive_Get_in1(XMatmul_naive *InstancePtr);
void XMatmul_naive_Set_in2(XMatmul_naive *InstancePtr, u64 Data);
u64 XMatmul_naive_Get_in2(XMatmul_naive *InstancePtr);
void XMatmul_naive_Set_out_r(XMatmul_naive *InstancePtr, u64 Data);
u64 XMatmul_naive_Get_out_r(XMatmul_naive *InstancePtr);
void XMatmul_naive_Set_dim(XMatmul_naive *InstancePtr, u32 Data);
u32 XMatmul_naive_Get_dim(XMatmul_naive *InstancePtr);

void XMatmul_naive_InterruptGlobalEnable(XMatmul_naive *InstancePtr);
void XMatmul_naive_InterruptGlobalDisable(XMatmul_naive *InstancePtr);
void XMatmul_naive_InterruptEnable(XMatmul_naive *InstancePtr, u32 Mask);
void XMatmul_naive_InterruptDisable(XMatmul_naive *InstancePtr, u32 Mask);
void XMatmul_naive_InterruptClear(XMatmul_naive *InstancePtr, u32 Mask);
u32 XMatmul_naive_InterruptGetEnabled(XMatmul_naive *InstancePtr);
u32 XMatmul_naive_InterruptGetStatus(XMatmul_naive *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
