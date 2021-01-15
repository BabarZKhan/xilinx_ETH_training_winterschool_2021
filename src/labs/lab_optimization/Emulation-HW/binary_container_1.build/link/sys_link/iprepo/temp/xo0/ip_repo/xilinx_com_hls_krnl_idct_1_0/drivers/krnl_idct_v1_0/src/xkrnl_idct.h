// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XKRNL_IDCT_H
#define XKRNL_IDCT_H

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
#include "xkrnl_idct_hw.h"

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
} XKrnl_idct_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XKrnl_idct;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKrnl_idct_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKrnl_idct_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKrnl_idct_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKrnl_idct_ReadReg(BaseAddress, RegOffset) \
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
int XKrnl_idct_Initialize(XKrnl_idct *InstancePtr, u16 DeviceId);
XKrnl_idct_Config* XKrnl_idct_LookupConfig(u16 DeviceId);
int XKrnl_idct_CfgInitialize(XKrnl_idct *InstancePtr, XKrnl_idct_Config *ConfigPtr);
#else
int XKrnl_idct_Initialize(XKrnl_idct *InstancePtr, const char* InstanceName);
int XKrnl_idct_Release(XKrnl_idct *InstancePtr);
#endif

void XKrnl_idct_Start(XKrnl_idct *InstancePtr);
u32 XKrnl_idct_IsDone(XKrnl_idct *InstancePtr);
u32 XKrnl_idct_IsIdle(XKrnl_idct *InstancePtr);
u32 XKrnl_idct_IsReady(XKrnl_idct *InstancePtr);
void XKrnl_idct_Continue(XKrnl_idct *InstancePtr);
void XKrnl_idct_EnableAutoRestart(XKrnl_idct *InstancePtr);
void XKrnl_idct_DisableAutoRestart(XKrnl_idct *InstancePtr);

void XKrnl_idct_Set_block_r(XKrnl_idct *InstancePtr, u64 Data);
u64 XKrnl_idct_Get_block_r(XKrnl_idct *InstancePtr);
void XKrnl_idct_Set_q(XKrnl_idct *InstancePtr, u64 Data);
u64 XKrnl_idct_Get_q(XKrnl_idct *InstancePtr);
void XKrnl_idct_Set_voutp(XKrnl_idct *InstancePtr, u64 Data);
u64 XKrnl_idct_Get_voutp(XKrnl_idct *InstancePtr);
void XKrnl_idct_Set_ignore_dc(XKrnl_idct *InstancePtr, u32 Data);
u32 XKrnl_idct_Get_ignore_dc(XKrnl_idct *InstancePtr);
void XKrnl_idct_Set_blocks(XKrnl_idct *InstancePtr, u32 Data);
u32 XKrnl_idct_Get_blocks(XKrnl_idct *InstancePtr);

void XKrnl_idct_InterruptGlobalEnable(XKrnl_idct *InstancePtr);
void XKrnl_idct_InterruptGlobalDisable(XKrnl_idct *InstancePtr);
void XKrnl_idct_InterruptEnable(XKrnl_idct *InstancePtr, u32 Mask);
void XKrnl_idct_InterruptDisable(XKrnl_idct *InstancePtr, u32 Mask);
void XKrnl_idct_InterruptClear(XKrnl_idct *InstancePtr, u32 Mask);
u32 XKrnl_idct_InterruptGetEnabled(XKrnl_idct *InstancePtr);
u32 XKrnl_idct_InterruptGetStatus(XKrnl_idct *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
