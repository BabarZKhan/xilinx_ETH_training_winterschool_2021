// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATMUL_PARTITION_H
#define XMATMUL_PARTITION_H

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
#include "xmatmul_partition_hw.h"

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
} XMatmul_partition_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XMatmul_partition;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatmul_partition_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatmul_partition_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatmul_partition_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatmul_partition_ReadReg(BaseAddress, RegOffset) \
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
int XMatmul_partition_Initialize(XMatmul_partition *InstancePtr, u16 DeviceId);
XMatmul_partition_Config* XMatmul_partition_LookupConfig(u16 DeviceId);
int XMatmul_partition_CfgInitialize(XMatmul_partition *InstancePtr, XMatmul_partition_Config *ConfigPtr);
#else
int XMatmul_partition_Initialize(XMatmul_partition *InstancePtr, const char* InstanceName);
int XMatmul_partition_Release(XMatmul_partition *InstancePtr);
#endif

void XMatmul_partition_Start(XMatmul_partition *InstancePtr);
u32 XMatmul_partition_IsDone(XMatmul_partition *InstancePtr);
u32 XMatmul_partition_IsIdle(XMatmul_partition *InstancePtr);
u32 XMatmul_partition_IsReady(XMatmul_partition *InstancePtr);
void XMatmul_partition_Continue(XMatmul_partition *InstancePtr);
void XMatmul_partition_EnableAutoRestart(XMatmul_partition *InstancePtr);
void XMatmul_partition_DisableAutoRestart(XMatmul_partition *InstancePtr);

void XMatmul_partition_Set_in1(XMatmul_partition *InstancePtr, u64 Data);
u64 XMatmul_partition_Get_in1(XMatmul_partition *InstancePtr);
void XMatmul_partition_Set_in2(XMatmul_partition *InstancePtr, u64 Data);
u64 XMatmul_partition_Get_in2(XMatmul_partition *InstancePtr);
void XMatmul_partition_Set_out_r(XMatmul_partition *InstancePtr, u64 Data);
u64 XMatmul_partition_Get_out_r(XMatmul_partition *InstancePtr);
void XMatmul_partition_Set_dim(XMatmul_partition *InstancePtr, u32 Data);
u32 XMatmul_partition_Get_dim(XMatmul_partition *InstancePtr);

void XMatmul_partition_InterruptGlobalEnable(XMatmul_partition *InstancePtr);
void XMatmul_partition_InterruptGlobalDisable(XMatmul_partition *InstancePtr);
void XMatmul_partition_InterruptEnable(XMatmul_partition *InstancePtr, u32 Mask);
void XMatmul_partition_InterruptDisable(XMatmul_partition *InstancePtr, u32 Mask);
void XMatmul_partition_InterruptClear(XMatmul_partition *InstancePtr, u32 Mask);
u32 XMatmul_partition_InterruptGetEnabled(XMatmul_partition *InstancePtr);
u32 XMatmul_partition_InterruptGetStatus(XMatmul_partition *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
