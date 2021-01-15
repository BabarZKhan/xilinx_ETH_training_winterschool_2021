// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES256CBCDECRYPTKERNEL_H
#define XAES256CBCDECRYPTKERNEL_H

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
#include "xaes256cbcdecryptkernel_hw.h"

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
} XAes256cbcdecryptkernel_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XAes256cbcdecryptkernel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes256cbcdecryptkernel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes256cbcdecryptkernel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes256cbcdecryptkernel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes256cbcdecryptkernel_ReadReg(BaseAddress, RegOffset) \
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
int XAes256cbcdecryptkernel_Initialize(XAes256cbcdecryptkernel *InstancePtr, u16 DeviceId);
XAes256cbcdecryptkernel_Config* XAes256cbcdecryptkernel_LookupConfig(u16 DeviceId);
int XAes256cbcdecryptkernel_CfgInitialize(XAes256cbcdecryptkernel *InstancePtr, XAes256cbcdecryptkernel_Config *ConfigPtr);
#else
int XAes256cbcdecryptkernel_Initialize(XAes256cbcdecryptkernel *InstancePtr, const char* InstanceName);
int XAes256cbcdecryptkernel_Release(XAes256cbcdecryptkernel *InstancePtr);
#endif

void XAes256cbcdecryptkernel_Start(XAes256cbcdecryptkernel *InstancePtr);
u32 XAes256cbcdecryptkernel_IsDone(XAes256cbcdecryptkernel *InstancePtr);
u32 XAes256cbcdecryptkernel_IsIdle(XAes256cbcdecryptkernel *InstancePtr);
u32 XAes256cbcdecryptkernel_IsReady(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_Continue(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_EnableAutoRestart(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_DisableAutoRestart(XAes256cbcdecryptkernel *InstancePtr);

void XAes256cbcdecryptkernel_Set_inputData(XAes256cbcdecryptkernel *InstancePtr, u64 Data);
u64 XAes256cbcdecryptkernel_Get_inputData(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_Set_outputData(XAes256cbcdecryptkernel *InstancePtr, u64 Data);
u64 XAes256cbcdecryptkernel_Get_outputData(XAes256cbcdecryptkernel *InstancePtr);

void XAes256cbcdecryptkernel_InterruptGlobalEnable(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_InterruptGlobalDisable(XAes256cbcdecryptkernel *InstancePtr);
void XAes256cbcdecryptkernel_InterruptEnable(XAes256cbcdecryptkernel *InstancePtr, u32 Mask);
void XAes256cbcdecryptkernel_InterruptDisable(XAes256cbcdecryptkernel *InstancePtr, u32 Mask);
void XAes256cbcdecryptkernel_InterruptClear(XAes256cbcdecryptkernel *InstancePtr, u32 Mask);
u32 XAes256cbcdecryptkernel_InterruptGetEnabled(XAes256cbcdecryptkernel *InstancePtr);
u32 XAes256cbcdecryptkernel_InterruptGetStatus(XAes256cbcdecryptkernel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
