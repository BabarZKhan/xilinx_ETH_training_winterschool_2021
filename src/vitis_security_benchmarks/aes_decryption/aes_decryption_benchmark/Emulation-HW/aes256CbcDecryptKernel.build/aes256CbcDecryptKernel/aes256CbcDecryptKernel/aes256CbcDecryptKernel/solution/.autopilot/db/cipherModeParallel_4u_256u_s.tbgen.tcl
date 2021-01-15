set moduleName cipherModeParallel_4u_256u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {cipherModeParallel<4u, 256u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ taskNum int 64 regular  }
	{ IVStrm int 128 regular {fifo 0 volatile }  }
	{ IVStrm1 int 128 regular {fifo 0 volatile }  }
	{ IVStrm2 int 128 regular {fifo 0 volatile }  }
	{ IVStrm3 int 128 regular {fifo 0 volatile }  }
	{ cipherkeyStrm int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm4 int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm5 int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm6 int 256 regular {fifo 0 volatile }  }
	{ textInStrm int 128 regular {fifo 0 volatile }  }
	{ textInStrm7 int 128 regular {fifo 0 volatile }  }
	{ textInStrm8 int 128 regular {fifo 0 volatile }  }
	{ textInStrm9 int 128 regular {fifo 0 volatile }  }
	{ endTextInStrm int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm10 int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm11 int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm12 int 1 regular {fifo 0 volatile }  }
	{ textOutStrm int 128 regular {fifo 1 volatile }  }
	{ textOutStrm13 int 128 regular {fifo 1 volatile }  }
	{ textOutStrm14 int 128 regular {fifo 1 volatile }  }
	{ textOutStrm15 int 128 regular {fifo 1 volatile }  }
	{ endTextOutStrm int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm16 int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm17 int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm18 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "taskNum", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm4", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm5", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm6", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm7", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm8", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm9", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm10", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm11", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm12", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "textOutStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm13", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm14", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm15", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm16", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm17", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm18", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ taskNum sc_in sc_lv 64 signal 0 } 
	{ IVStrm_dout sc_in sc_lv 128 signal 1 } 
	{ IVStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ IVStrm_read sc_out sc_logic 1 signal 1 } 
	{ IVStrm1_dout sc_in sc_lv 128 signal 2 } 
	{ IVStrm1_empty_n sc_in sc_logic 1 signal 2 } 
	{ IVStrm1_read sc_out sc_logic 1 signal 2 } 
	{ IVStrm2_dout sc_in sc_lv 128 signal 3 } 
	{ IVStrm2_empty_n sc_in sc_logic 1 signal 3 } 
	{ IVStrm2_read sc_out sc_logic 1 signal 3 } 
	{ IVStrm3_dout sc_in sc_lv 128 signal 4 } 
	{ IVStrm3_empty_n sc_in sc_logic 1 signal 4 } 
	{ IVStrm3_read sc_out sc_logic 1 signal 4 } 
	{ cipherkeyStrm_dout sc_in sc_lv 256 signal 5 } 
	{ cipherkeyStrm_empty_n sc_in sc_logic 1 signal 5 } 
	{ cipherkeyStrm_read sc_out sc_logic 1 signal 5 } 
	{ cipherkeyStrm4_dout sc_in sc_lv 256 signal 6 } 
	{ cipherkeyStrm4_empty_n sc_in sc_logic 1 signal 6 } 
	{ cipherkeyStrm4_read sc_out sc_logic 1 signal 6 } 
	{ cipherkeyStrm5_dout sc_in sc_lv 256 signal 7 } 
	{ cipherkeyStrm5_empty_n sc_in sc_logic 1 signal 7 } 
	{ cipherkeyStrm5_read sc_out sc_logic 1 signal 7 } 
	{ cipherkeyStrm6_dout sc_in sc_lv 256 signal 8 } 
	{ cipherkeyStrm6_empty_n sc_in sc_logic 1 signal 8 } 
	{ cipherkeyStrm6_read sc_out sc_logic 1 signal 8 } 
	{ textInStrm_dout sc_in sc_lv 128 signal 9 } 
	{ textInStrm_empty_n sc_in sc_logic 1 signal 9 } 
	{ textInStrm_read sc_out sc_logic 1 signal 9 } 
	{ textInStrm7_dout sc_in sc_lv 128 signal 10 } 
	{ textInStrm7_empty_n sc_in sc_logic 1 signal 10 } 
	{ textInStrm7_read sc_out sc_logic 1 signal 10 } 
	{ textInStrm8_dout sc_in sc_lv 128 signal 11 } 
	{ textInStrm8_empty_n sc_in sc_logic 1 signal 11 } 
	{ textInStrm8_read sc_out sc_logic 1 signal 11 } 
	{ textInStrm9_dout sc_in sc_lv 128 signal 12 } 
	{ textInStrm9_empty_n sc_in sc_logic 1 signal 12 } 
	{ textInStrm9_read sc_out sc_logic 1 signal 12 } 
	{ endTextInStrm_dout sc_in sc_logic 1 signal 13 } 
	{ endTextInStrm_empty_n sc_in sc_logic 1 signal 13 } 
	{ endTextInStrm_read sc_out sc_logic 1 signal 13 } 
	{ endTextInStrm10_dout sc_in sc_logic 1 signal 14 } 
	{ endTextInStrm10_empty_n sc_in sc_logic 1 signal 14 } 
	{ endTextInStrm10_read sc_out sc_logic 1 signal 14 } 
	{ endTextInStrm11_dout sc_in sc_logic 1 signal 15 } 
	{ endTextInStrm11_empty_n sc_in sc_logic 1 signal 15 } 
	{ endTextInStrm11_read sc_out sc_logic 1 signal 15 } 
	{ endTextInStrm12_dout sc_in sc_logic 1 signal 16 } 
	{ endTextInStrm12_empty_n sc_in sc_logic 1 signal 16 } 
	{ endTextInStrm12_read sc_out sc_logic 1 signal 16 } 
	{ textOutStrm_din sc_out sc_lv 128 signal 17 } 
	{ textOutStrm_full_n sc_in sc_logic 1 signal 17 } 
	{ textOutStrm_write sc_out sc_logic 1 signal 17 } 
	{ textOutStrm13_din sc_out sc_lv 128 signal 18 } 
	{ textOutStrm13_full_n sc_in sc_logic 1 signal 18 } 
	{ textOutStrm13_write sc_out sc_logic 1 signal 18 } 
	{ textOutStrm14_din sc_out sc_lv 128 signal 19 } 
	{ textOutStrm14_full_n sc_in sc_logic 1 signal 19 } 
	{ textOutStrm14_write sc_out sc_logic 1 signal 19 } 
	{ textOutStrm15_din sc_out sc_lv 128 signal 20 } 
	{ textOutStrm15_full_n sc_in sc_logic 1 signal 20 } 
	{ textOutStrm15_write sc_out sc_logic 1 signal 20 } 
	{ endTextOutStrm_din sc_out sc_logic 1 signal 21 } 
	{ endTextOutStrm_full_n sc_in sc_logic 1 signal 21 } 
	{ endTextOutStrm_write sc_out sc_logic 1 signal 21 } 
	{ endTextOutStrm16_din sc_out sc_logic 1 signal 22 } 
	{ endTextOutStrm16_full_n sc_in sc_logic 1 signal 22 } 
	{ endTextOutStrm16_write sc_out sc_logic 1 signal 22 } 
	{ endTextOutStrm17_din sc_out sc_logic 1 signal 23 } 
	{ endTextOutStrm17_full_n sc_in sc_logic 1 signal 23 } 
	{ endTextOutStrm17_write sc_out sc_logic 1 signal 23 } 
	{ endTextOutStrm18_din sc_out sc_logic 1 signal 24 } 
	{ endTextOutStrm18_full_n sc_in sc_logic 1 signal 24 } 
	{ endTextOutStrm18_write sc_out sc_logic 1 signal 24 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ taskNum_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "taskNum", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNum", "role": "default" }} , 
 	{ "name": "IVStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm", "role": "dout" }} , 
 	{ "name": "IVStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "empty_n" }} , 
 	{ "name": "IVStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "read" }} , 
 	{ "name": "IVStrm1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm1", "role": "dout" }} , 
 	{ "name": "IVStrm1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm1", "role": "empty_n" }} , 
 	{ "name": "IVStrm1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm1", "role": "read" }} , 
 	{ "name": "IVStrm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm2", "role": "dout" }} , 
 	{ "name": "IVStrm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm2", "role": "empty_n" }} , 
 	{ "name": "IVStrm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm2", "role": "read" }} , 
 	{ "name": "IVStrm3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm3", "role": "dout" }} , 
 	{ "name": "IVStrm3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm3", "role": "empty_n" }} , 
 	{ "name": "IVStrm3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm3", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "read" }} , 
 	{ "name": "cipherkeyStrm4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm4", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm4", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm4", "role": "read" }} , 
 	{ "name": "cipherkeyStrm5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "read" }} , 
 	{ "name": "cipherkeyStrm6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm6", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm6", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm6", "role": "read" }} , 
 	{ "name": "textInStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm", "role": "dout" }} , 
 	{ "name": "textInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm", "role": "empty_n" }} , 
 	{ "name": "textInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm", "role": "read" }} , 
 	{ "name": "textInStrm7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm7", "role": "dout" }} , 
 	{ "name": "textInStrm7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm7", "role": "empty_n" }} , 
 	{ "name": "textInStrm7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm7", "role": "read" }} , 
 	{ "name": "textInStrm8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm8", "role": "dout" }} , 
 	{ "name": "textInStrm8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm8", "role": "empty_n" }} , 
 	{ "name": "textInStrm8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm8", "role": "read" }} , 
 	{ "name": "textInStrm9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm9", "role": "dout" }} , 
 	{ "name": "textInStrm9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm9", "role": "empty_n" }} , 
 	{ "name": "textInStrm9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm9", "role": "read" }} , 
 	{ "name": "endTextInStrm_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "dout" }} , 
 	{ "name": "endTextInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "read" }} , 
 	{ "name": "endTextInStrm10_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm10", "role": "dout" }} , 
 	{ "name": "endTextInStrm10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm10", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm10", "role": "read" }} , 
 	{ "name": "endTextInStrm11_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "dout" }} , 
 	{ "name": "endTextInStrm11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "read" }} , 
 	{ "name": "endTextInStrm12_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm12", "role": "dout" }} , 
 	{ "name": "endTextInStrm12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm12", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm12", "role": "read" }} , 
 	{ "name": "textOutStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm", "role": "din" }} , 
 	{ "name": "textOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm", "role": "full_n" }} , 
 	{ "name": "textOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm", "role": "write" }} , 
 	{ "name": "textOutStrm13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm13", "role": "din" }} , 
 	{ "name": "textOutStrm13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm13", "role": "full_n" }} , 
 	{ "name": "textOutStrm13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm13", "role": "write" }} , 
 	{ "name": "textOutStrm14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "din" }} , 
 	{ "name": "textOutStrm14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "full_n" }} , 
 	{ "name": "textOutStrm14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "write" }} , 
 	{ "name": "textOutStrm15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm15", "role": "din" }} , 
 	{ "name": "textOutStrm15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm15", "role": "full_n" }} , 
 	{ "name": "textOutStrm15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm15", "role": "write" }} , 
 	{ "name": "endTextOutStrm_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "din" }} , 
 	{ "name": "endTextOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "write" }} , 
 	{ "name": "endTextOutStrm16_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm16", "role": "din" }} , 
 	{ "name": "endTextOutStrm16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm16", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm16", "role": "write" }} , 
 	{ "name": "endTextOutStrm17_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "din" }} , 
 	{ "name": "endTextOutStrm17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "write" }} , 
 	{ "name": "endTextOutStrm18_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm18", "role": "din" }} , 
 	{ "name": "endTextOutStrm18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm18", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm18", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "taskNum_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "taskNum", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "16", "23", "30", "31", "32", "33"],
		"CDFG" : "cipherModeParallel_4u_256u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "cipherModeParallel_4u_256u_entry98_U0"},
			{"ID" : "2", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "9", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "16", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "23", "Name" : "singleCipherMode_256u_78_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "9", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "16", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "23", "Name" : "singleCipherMode_256u_78_U0"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "IVStrm"}]},
			{"Name" : "IVStrm1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "IVStrm1"}]},
			{"Name" : "IVStrm2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "IVStrm2"}]},
			{"Name" : "IVStrm3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "IVStrm3"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "cipherkeyStrm"}]},
			{"Name" : "cipherkeyStrm4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "cipherkeyStrm4"}]},
			{"Name" : "cipherkeyStrm5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "cipherkeyStrm5"}]},
			{"Name" : "cipherkeyStrm6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "cipherkeyStrm6"}]},
			{"Name" : "textInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textInStrm"}]},
			{"Name" : "textInStrm7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textInStrm7"}]},
			{"Name" : "textInStrm8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textInStrm8"}]},
			{"Name" : "textInStrm9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textInStrm9"}]},
			{"Name" : "endTextInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextInStrm"}]},
			{"Name" : "endTextInStrm10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextInStrm10"}]},
			{"Name" : "endTextInStrm11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextInStrm11"}]},
			{"Name" : "endTextInStrm12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextInStrm12"}]},
			{"Name" : "textOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textOutStrm"}]},
			{"Name" : "textOutStrm13", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textOutStrm13"}]},
			{"Name" : "textOutStrm14", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textOutStrm14"}]},
			{"Name" : "textOutStrm15", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textOutStrm15"}]},
			{"Name" : "endTextOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextOutStrm"}]},
			{"Name" : "endTextOutStrm16", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextOutStrm16"}]},
			{"Name" : "endTextOutStrm17", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextOutStrm17"}]},
			{"Name" : "endTextOutStrm18", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextOutStrm18"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_3"},
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_3"},
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_3"},
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_497"},
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_497"},
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_497"},
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_2"},
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_2"},
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_2"},
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherModeParallel_4u_256u_entry98_U0", "Parent" : "0",
		"CDFG" : "cipherModeParallel_4u_256u_entry98",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "taskNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskNum_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "31", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "32", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "33", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0", "Parent" : "0", "Child" : ["3", "4", "7"],
		"CDFG" : "singleCipherMode_256u_75",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateKey_fu_192"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "30", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IVStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textInStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "textInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextInStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "endTextInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textOutStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "textOutStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextOutStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endTextOutStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.decipher_0_496_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.grp_process_r_fu_167", "Parent" : "2", "Child" : ["5", "6"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.grp_updateKey_fu_192", "Parent" : "2", "Child" : ["8"],
		"CDFG" : "updateKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "this_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cipherkey", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_75_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0", "Parent" : "0", "Child" : ["10", "11", "14"],
		"CDFG" : "singleCipherMode_256u_76",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateKey_fu_192"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "31", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IVStrm1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textInStrm7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "textInStrm7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextInStrm10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "endTextInStrm10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textOutStrm13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "textOutStrm13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextOutStrm16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endTextOutStrm16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.decipher_0_495_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.grp_process_r_fu_167", "Parent" : "9", "Child" : ["12", "13"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.grp_updateKey_fu_192", "Parent" : "9", "Child" : ["15"],
		"CDFG" : "updateKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "this_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cipherkey", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_76_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0", "Parent" : "0", "Child" : ["17", "18", "21"],
		"CDFG" : "singleCipherMode_256u_77",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateKey_fu_192"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "32", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IVStrm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textInStrm8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "textInStrm8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextInStrm11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "endTextInStrm11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textOutStrm14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "textOutStrm14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextOutStrm17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endTextOutStrm17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.decipher_0_494_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.grp_process_r_fu_167", "Parent" : "16", "Child" : ["19", "20"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.grp_updateKey_fu_192", "Parent" : "16", "Child" : ["22"],
		"CDFG" : "updateKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "this_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cipherkey", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_77_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0", "Parent" : "0", "Child" : ["24", "25", "28"],
		"CDFG" : "singleCipherMode_256u_78",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_updateKey_fu_192"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "33", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IVStrm3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textInStrm9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "textInStrm9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextInStrm12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "endTextInStrm12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textOutStrm15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "textOutStrm15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextOutStrm18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "endTextOutStrm18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.decipher_0_4_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.grp_process_r_fu_167", "Parent" : "23", "Child" : ["26", "27"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "ciphertext", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.grp_updateKey_fu_192", "Parent" : "23", "Child" : ["29"],
		"CDFG" : "updateKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "146",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "this_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cipherkey", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.singleCipherMode_256u_78_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNum_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNum_c77_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNum_c78_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNum_c79_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cipherModeParallel_4u_256u_s {
		taskNum {Type I LastRead 0 FirstWrite -1}
		IVStrm {Type I LastRead 2 FirstWrite -1}
		IVStrm1 {Type I LastRead 2 FirstWrite -1}
		IVStrm2 {Type I LastRead 2 FirstWrite -1}
		IVStrm3 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm4 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm5 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm6 {Type I LastRead 2 FirstWrite -1}
		textInStrm {Type I LastRead 5 FirstWrite -1}
		textInStrm7 {Type I LastRead 5 FirstWrite -1}
		textInStrm8 {Type I LastRead 5 FirstWrite -1}
		textInStrm9 {Type I LastRead 5 FirstWrite -1}
		endTextInStrm {Type I LastRead 4 FirstWrite -1}
		endTextInStrm10 {Type I LastRead 4 FirstWrite -1}
		endTextInStrm11 {Type I LastRead 4 FirstWrite -1}
		endTextInStrm12 {Type I LastRead 4 FirstWrite -1}
		textOutStrm {Type O LastRead -1 FirstWrite 19}
		textOutStrm13 {Type O LastRead -1 FirstWrite 19}
		textOutStrm14 {Type O LastRead -1 FirstWrite 19}
		textOutStrm15 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm16 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm17 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm18 {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_496 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		decipher_0_495 {Type I LastRead -1 FirstWrite -1}
		decipher_0_494 {Type I LastRead -1 FirstWrite -1}
		decipher_0_4 {Type I LastRead -1 FirstWrite -1}}
	cipherModeParallel_4u_256u_entry98 {
		taskNum {Type I LastRead 0 FirstWrite -1}
		taskNum_out {Type O LastRead -1 FirstWrite 0}
		taskNum_out1 {Type O LastRead -1 FirstWrite 0}
		taskNum_out2 {Type O LastRead -1 FirstWrite 0}
		taskNum_out3 {Type O LastRead -1 FirstWrite 0}}
	singleCipherMode_256u_75 {
		taskNum {Type I LastRead 0 FirstWrite -1}
		IVStrm {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm {Type I LastRead 2 FirstWrite -1}
		textInStrm {Type I LastRead 5 FirstWrite -1}
		endTextInStrm {Type I LastRead 4 FirstWrite -1}
		textOutStrm {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_496 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	process_r {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 0 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		this_0_4 {Type I LastRead 15 FirstWrite -1}
		cipherkey {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}
	singleCipherMode_256u_76 {
		taskNum {Type I LastRead 0 FirstWrite -1}
		IVStrm1 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm4 {Type I LastRead 2 FirstWrite -1}
		textInStrm7 {Type I LastRead 5 FirstWrite -1}
		endTextInStrm10 {Type I LastRead 4 FirstWrite -1}
		textOutStrm13 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm16 {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_495 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	process_r {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 0 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		this_0_4 {Type I LastRead 15 FirstWrite -1}
		cipherkey {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}
	singleCipherMode_256u_77 {
		taskNum {Type I LastRead 0 FirstWrite -1}
		IVStrm2 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm5 {Type I LastRead 2 FirstWrite -1}
		textInStrm8 {Type I LastRead 5 FirstWrite -1}
		endTextInStrm11 {Type I LastRead 4 FirstWrite -1}
		textOutStrm14 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm17 {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_494 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	process_r {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 0 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		this_0_4 {Type I LastRead 15 FirstWrite -1}
		cipherkey {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}
	singleCipherMode_256u_78 {
		taskNum {Type I LastRead 0 FirstWrite -1}
		IVStrm3 {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm6 {Type I LastRead 2 FirstWrite -1}
		textInStrm9 {Type I LastRead 5 FirstWrite -1}
		endTextInStrm12 {Type I LastRead 4 FirstWrite -1}
		textOutStrm15 {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm18 {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_4 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	process_r {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		ciphertext {Type I LastRead 0 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}}
	updateKey {
		this_0_4 {Type I LastRead 15 FirstWrite -1}
		cipherkey {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	taskNum { ap_none {  { taskNum in_data 0 64 }  { taskNum_ap_vld in_vld 0 1 } } }
	IVStrm { ap_fifo {  { IVStrm_dout fifo_data 0 128 }  { IVStrm_empty_n fifo_status 0 1 }  { IVStrm_read fifo_update 1 1 } } }
	IVStrm1 { ap_fifo {  { IVStrm1_dout fifo_data 0 128 }  { IVStrm1_empty_n fifo_status 0 1 }  { IVStrm1_read fifo_update 1 1 } } }
	IVStrm2 { ap_fifo {  { IVStrm2_dout fifo_data 0 128 }  { IVStrm2_empty_n fifo_status 0 1 }  { IVStrm2_read fifo_update 1 1 } } }
	IVStrm3 { ap_fifo {  { IVStrm3_dout fifo_data 0 128 }  { IVStrm3_empty_n fifo_status 0 1 }  { IVStrm3_read fifo_update 1 1 } } }
	cipherkeyStrm { ap_fifo {  { cipherkeyStrm_dout fifo_data 0 256 }  { cipherkeyStrm_empty_n fifo_status 0 1 }  { cipherkeyStrm_read fifo_update 1 1 } } }
	cipherkeyStrm4 { ap_fifo {  { cipherkeyStrm4_dout fifo_data 0 256 }  { cipherkeyStrm4_empty_n fifo_status 0 1 }  { cipherkeyStrm4_read fifo_update 1 1 } } }
	cipherkeyStrm5 { ap_fifo {  { cipherkeyStrm5_dout fifo_data 0 256 }  { cipherkeyStrm5_empty_n fifo_status 0 1 }  { cipherkeyStrm5_read fifo_update 1 1 } } }
	cipherkeyStrm6 { ap_fifo {  { cipherkeyStrm6_dout fifo_data 0 256 }  { cipherkeyStrm6_empty_n fifo_status 0 1 }  { cipherkeyStrm6_read fifo_update 1 1 } } }
	textInStrm { ap_fifo {  { textInStrm_dout fifo_data 0 128 }  { textInStrm_empty_n fifo_status 0 1 }  { textInStrm_read fifo_update 1 1 } } }
	textInStrm7 { ap_fifo {  { textInStrm7_dout fifo_data 0 128 }  { textInStrm7_empty_n fifo_status 0 1 }  { textInStrm7_read fifo_update 1 1 } } }
	textInStrm8 { ap_fifo {  { textInStrm8_dout fifo_data 0 128 }  { textInStrm8_empty_n fifo_status 0 1 }  { textInStrm8_read fifo_update 1 1 } } }
	textInStrm9 { ap_fifo {  { textInStrm9_dout fifo_data 0 128 }  { textInStrm9_empty_n fifo_status 0 1 }  { textInStrm9_read fifo_update 1 1 } } }
	endTextInStrm { ap_fifo {  { endTextInStrm_dout fifo_data 0 1 }  { endTextInStrm_empty_n fifo_status 0 1 }  { endTextInStrm_read fifo_update 1 1 } } }
	endTextInStrm10 { ap_fifo {  { endTextInStrm10_dout fifo_data 0 1 }  { endTextInStrm10_empty_n fifo_status 0 1 }  { endTextInStrm10_read fifo_update 1 1 } } }
	endTextInStrm11 { ap_fifo {  { endTextInStrm11_dout fifo_data 0 1 }  { endTextInStrm11_empty_n fifo_status 0 1 }  { endTextInStrm11_read fifo_update 1 1 } } }
	endTextInStrm12 { ap_fifo {  { endTextInStrm12_dout fifo_data 0 1 }  { endTextInStrm12_empty_n fifo_status 0 1 }  { endTextInStrm12_read fifo_update 1 1 } } }
	textOutStrm { ap_fifo {  { textOutStrm_din fifo_data 1 128 }  { textOutStrm_full_n fifo_status 0 1 }  { textOutStrm_write fifo_update 1 1 } } }
	textOutStrm13 { ap_fifo {  { textOutStrm13_din fifo_data 1 128 }  { textOutStrm13_full_n fifo_status 0 1 }  { textOutStrm13_write fifo_update 1 1 } } }
	textOutStrm14 { ap_fifo {  { textOutStrm14_din fifo_data 1 128 }  { textOutStrm14_full_n fifo_status 0 1 }  { textOutStrm14_write fifo_update 1 1 } } }
	textOutStrm15 { ap_fifo {  { textOutStrm15_din fifo_data 1 128 }  { textOutStrm15_full_n fifo_status 0 1 }  { textOutStrm15_write fifo_update 1 1 } } }
	endTextOutStrm { ap_fifo {  { endTextOutStrm_din fifo_data 1 1 }  { endTextOutStrm_full_n fifo_status 0 1 }  { endTextOutStrm_write fifo_update 1 1 } } }
	endTextOutStrm16 { ap_fifo {  { endTextOutStrm16_din fifo_data 1 1 }  { endTextOutStrm16_full_n fifo_status 0 1 }  { endTextOutStrm16_write fifo_update 1 1 } } }
	endTextOutStrm17 { ap_fifo {  { endTextOutStrm17_din fifo_data 1 1 }  { endTextOutStrm17_full_n fifo_status 0 1 }  { endTextOutStrm17_write fifo_update 1 1 } } }
	endTextOutStrm18 { ap_fifo {  { endTextOutStrm18_din fifo_data 1 1 }  { endTextOutStrm18_full_n fifo_status 0 1 }  { endTextOutStrm18_write fifo_update 1 1 } } }
}
