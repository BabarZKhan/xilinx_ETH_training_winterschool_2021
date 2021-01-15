set moduleName cipherModeProcess_4u_256u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {cipherModeProcess<4u, 256u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ taskNumStrm int 64 regular {fifo 0 volatile }  }
	{ IVStrm_V_V int 128 regular {fifo 0 volatile }  }
	{ IVStrm_1_V_V int 128 regular {fifo 0 volatile }  }
	{ IVStrm_2_V_V int 128 regular {fifo 0 volatile }  }
	{ IVStrm_3_V_V int 128 regular {fifo 0 volatile }  }
	{ cipherkeyStrm_V_V int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm_1_V_V int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm_2_V_V int 256 regular {fifo 0 volatile }  }
	{ cipherkeyStrm_3_V_V int 256 regular {fifo 0 volatile }  }
	{ textInStrm_V_V int 128 regular {fifo 0 volatile }  }
	{ textInStrm_1_V_V int 128 regular {fifo 0 volatile }  }
	{ textInStrm_2_V_V int 128 regular {fifo 0 volatile }  }
	{ textInStrm_3_V_V int 128 regular {fifo 0 volatile }  }
	{ endTextInStrm_V int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm_1_V int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm_2_V int 1 regular {fifo 0 volatile }  }
	{ endTextInStrm_3_V int 1 regular {fifo 0 volatile }  }
	{ textOutStrm_V_V int 128 regular {fifo 1 volatile }  }
	{ textOutStrm_1_V_V int 128 regular {fifo 1 volatile }  }
	{ textOutStrm_2_V_V int 128 regular {fifo 1 volatile }  }
	{ textOutStrm_3_V_V int 128 regular {fifo 1 volatile }  }
	{ endTextOutStrm_V int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm_1_V int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm_2_V int 1 regular {fifo 1 volatile }  }
	{ endTextOutStrm_3_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "taskNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm_1_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm_2_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm_3_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm_1_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm_2_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm_3_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "textOutStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textOutStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm_1_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm_2_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm_3_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ taskNumStrm_dout sc_in sc_lv 64 signal 0 } 
	{ taskNumStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ taskNumStrm_read sc_out sc_logic 1 signal 0 } 
	{ IVStrm_V_V_dout sc_in sc_lv 128 signal 1 } 
	{ IVStrm_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ IVStrm_V_V_read sc_out sc_logic 1 signal 1 } 
	{ IVStrm_1_V_V_dout sc_in sc_lv 128 signal 2 } 
	{ IVStrm_1_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ IVStrm_1_V_V_read sc_out sc_logic 1 signal 2 } 
	{ IVStrm_2_V_V_dout sc_in sc_lv 128 signal 3 } 
	{ IVStrm_2_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ IVStrm_2_V_V_read sc_out sc_logic 1 signal 3 } 
	{ IVStrm_3_V_V_dout sc_in sc_lv 128 signal 4 } 
	{ IVStrm_3_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ IVStrm_3_V_V_read sc_out sc_logic 1 signal 4 } 
	{ cipherkeyStrm_V_V_dout sc_in sc_lv 256 signal 5 } 
	{ cipherkeyStrm_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ cipherkeyStrm_V_V_read sc_out sc_logic 1 signal 5 } 
	{ cipherkeyStrm_1_V_V_dout sc_in sc_lv 256 signal 6 } 
	{ cipherkeyStrm_1_V_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ cipherkeyStrm_1_V_V_read sc_out sc_logic 1 signal 6 } 
	{ cipherkeyStrm_2_V_V_dout sc_in sc_lv 256 signal 7 } 
	{ cipherkeyStrm_2_V_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ cipherkeyStrm_2_V_V_read sc_out sc_logic 1 signal 7 } 
	{ cipherkeyStrm_3_V_V_dout sc_in sc_lv 256 signal 8 } 
	{ cipherkeyStrm_3_V_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ cipherkeyStrm_3_V_V_read sc_out sc_logic 1 signal 8 } 
	{ textInStrm_V_V_dout sc_in sc_lv 128 signal 9 } 
	{ textInStrm_V_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ textInStrm_V_V_read sc_out sc_logic 1 signal 9 } 
	{ textInStrm_1_V_V_dout sc_in sc_lv 128 signal 10 } 
	{ textInStrm_1_V_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ textInStrm_1_V_V_read sc_out sc_logic 1 signal 10 } 
	{ textInStrm_2_V_V_dout sc_in sc_lv 128 signal 11 } 
	{ textInStrm_2_V_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ textInStrm_2_V_V_read sc_out sc_logic 1 signal 11 } 
	{ textInStrm_3_V_V_dout sc_in sc_lv 128 signal 12 } 
	{ textInStrm_3_V_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ textInStrm_3_V_V_read sc_out sc_logic 1 signal 12 } 
	{ endTextInStrm_V_dout sc_in sc_logic 1 signal 13 } 
	{ endTextInStrm_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ endTextInStrm_V_read sc_out sc_logic 1 signal 13 } 
	{ endTextInStrm_1_V_dout sc_in sc_logic 1 signal 14 } 
	{ endTextInStrm_1_V_empty_n sc_in sc_logic 1 signal 14 } 
	{ endTextInStrm_1_V_read sc_out sc_logic 1 signal 14 } 
	{ endTextInStrm_2_V_dout sc_in sc_logic 1 signal 15 } 
	{ endTextInStrm_2_V_empty_n sc_in sc_logic 1 signal 15 } 
	{ endTextInStrm_2_V_read sc_out sc_logic 1 signal 15 } 
	{ endTextInStrm_3_V_dout sc_in sc_logic 1 signal 16 } 
	{ endTextInStrm_3_V_empty_n sc_in sc_logic 1 signal 16 } 
	{ endTextInStrm_3_V_read sc_out sc_logic 1 signal 16 } 
	{ textOutStrm_V_V_din sc_out sc_lv 128 signal 17 } 
	{ textOutStrm_V_V_full_n sc_in sc_logic 1 signal 17 } 
	{ textOutStrm_V_V_write sc_out sc_logic 1 signal 17 } 
	{ textOutStrm_1_V_V_din sc_out sc_lv 128 signal 18 } 
	{ textOutStrm_1_V_V_full_n sc_in sc_logic 1 signal 18 } 
	{ textOutStrm_1_V_V_write sc_out sc_logic 1 signal 18 } 
	{ textOutStrm_2_V_V_din sc_out sc_lv 128 signal 19 } 
	{ textOutStrm_2_V_V_full_n sc_in sc_logic 1 signal 19 } 
	{ textOutStrm_2_V_V_write sc_out sc_logic 1 signal 19 } 
	{ textOutStrm_3_V_V_din sc_out sc_lv 128 signal 20 } 
	{ textOutStrm_3_V_V_full_n sc_in sc_logic 1 signal 20 } 
	{ textOutStrm_3_V_V_write sc_out sc_logic 1 signal 20 } 
	{ endTextOutStrm_V_din sc_out sc_logic 1 signal 21 } 
	{ endTextOutStrm_V_full_n sc_in sc_logic 1 signal 21 } 
	{ endTextOutStrm_V_write sc_out sc_logic 1 signal 21 } 
	{ endTextOutStrm_1_V_din sc_out sc_logic 1 signal 22 } 
	{ endTextOutStrm_1_V_full_n sc_in sc_logic 1 signal 22 } 
	{ endTextOutStrm_1_V_write sc_out sc_logic 1 signal 22 } 
	{ endTextOutStrm_2_V_din sc_out sc_logic 1 signal 23 } 
	{ endTextOutStrm_2_V_full_n sc_in sc_logic 1 signal 23 } 
	{ endTextOutStrm_2_V_write sc_out sc_logic 1 signal 23 } 
	{ endTextOutStrm_3_V_din sc_out sc_logic 1 signal 24 } 
	{ endTextOutStrm_3_V_full_n sc_in sc_logic 1 signal 24 } 
	{ endTextOutStrm_3_V_write sc_out sc_logic 1 signal 24 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "taskNumStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "dout" }} , 
 	{ "name": "taskNumStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "empty_n" }} , 
 	{ "name": "taskNumStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "read" }} , 
 	{ "name": "IVStrm_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "dout" }} , 
 	{ "name": "IVStrm_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "empty_n" }} , 
 	{ "name": "IVStrm_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "read" }} , 
 	{ "name": "IVStrm_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "dout" }} , 
 	{ "name": "IVStrm_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "empty_n" }} , 
 	{ "name": "IVStrm_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "read" }} , 
 	{ "name": "IVStrm_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "dout" }} , 
 	{ "name": "IVStrm_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "empty_n" }} , 
 	{ "name": "IVStrm_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "read" }} , 
 	{ "name": "IVStrm_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "dout" }} , 
 	{ "name": "IVStrm_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "empty_n" }} , 
 	{ "name": "IVStrm_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "read" }} , 
 	{ "name": "textInStrm_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm_V_V", "role": "dout" }} , 
 	{ "name": "textInStrm_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_V_V", "role": "empty_n" }} , 
 	{ "name": "textInStrm_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_V_V", "role": "read" }} , 
 	{ "name": "textInStrm_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm_1_V_V", "role": "dout" }} , 
 	{ "name": "textInStrm_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_1_V_V", "role": "empty_n" }} , 
 	{ "name": "textInStrm_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_1_V_V", "role": "read" }} , 
 	{ "name": "textInStrm_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm_2_V_V", "role": "dout" }} , 
 	{ "name": "textInStrm_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_2_V_V", "role": "empty_n" }} , 
 	{ "name": "textInStrm_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_2_V_V", "role": "read" }} , 
 	{ "name": "textInStrm_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm_3_V_V", "role": "dout" }} , 
 	{ "name": "textInStrm_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_3_V_V", "role": "empty_n" }} , 
 	{ "name": "textInStrm_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm_3_V_V", "role": "read" }} , 
 	{ "name": "endTextInStrm_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_V", "role": "dout" }} , 
 	{ "name": "endTextInStrm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_V", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_V", "role": "read" }} , 
 	{ "name": "endTextInStrm_1_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_1_V", "role": "dout" }} , 
 	{ "name": "endTextInStrm_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_1_V", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_1_V", "role": "read" }} , 
 	{ "name": "endTextInStrm_2_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_2_V", "role": "dout" }} , 
 	{ "name": "endTextInStrm_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_2_V", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_2_V", "role": "read" }} , 
 	{ "name": "endTextInStrm_3_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_3_V", "role": "dout" }} , 
 	{ "name": "endTextInStrm_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_3_V", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm_3_V", "role": "read" }} , 
 	{ "name": "textOutStrm_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm_V_V", "role": "din" }} , 
 	{ "name": "textOutStrm_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_V_V", "role": "full_n" }} , 
 	{ "name": "textOutStrm_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_V_V", "role": "write" }} , 
 	{ "name": "textOutStrm_1_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm_1_V_V", "role": "din" }} , 
 	{ "name": "textOutStrm_1_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_1_V_V", "role": "full_n" }} , 
 	{ "name": "textOutStrm_1_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_1_V_V", "role": "write" }} , 
 	{ "name": "textOutStrm_2_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm_2_V_V", "role": "din" }} , 
 	{ "name": "textOutStrm_2_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_2_V_V", "role": "full_n" }} , 
 	{ "name": "textOutStrm_2_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_2_V_V", "role": "write" }} , 
 	{ "name": "textOutStrm_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm_3_V_V", "role": "din" }} , 
 	{ "name": "textOutStrm_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_3_V_V", "role": "full_n" }} , 
 	{ "name": "textOutStrm_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm_3_V_V", "role": "write" }} , 
 	{ "name": "endTextOutStrm_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_V", "role": "din" }} , 
 	{ "name": "endTextOutStrm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_V", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_V", "role": "write" }} , 
 	{ "name": "endTextOutStrm_1_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_1_V", "role": "din" }} , 
 	{ "name": "endTextOutStrm_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_1_V", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_1_V", "role": "write" }} , 
 	{ "name": "endTextOutStrm_2_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_2_V", "role": "din" }} , 
 	{ "name": "endTextOutStrm_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_2_V", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_2_V", "role": "write" }} , 
 	{ "name": "endTextOutStrm_3_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_3_V", "role": "din" }} , 
 	{ "name": "endTextOutStrm_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_3_V", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm_3_V", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cipherModeProcess_4u_256u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98"}],
		"Port" : [
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm1"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm2"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm3"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm4"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm5"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm6"}]},
			{"Name" : "textInStrm_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm"}]},
			{"Name" : "textInStrm_1_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm7"}]},
			{"Name" : "textInStrm_2_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm8"}]},
			{"Name" : "textInStrm_3_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm9"}]},
			{"Name" : "endTextInStrm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm"}]},
			{"Name" : "endTextInStrm_1_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm10"}]},
			{"Name" : "endTextInStrm_2_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm11"}]},
			{"Name" : "endTextInStrm_3_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm12"}]},
			{"Name" : "textOutStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm"}]},
			{"Name" : "textOutStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm13"}]},
			{"Name" : "textOutStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm14"}]},
			{"Name" : "textOutStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm15"}]},
			{"Name" : "endTextOutStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm"}]},
			{"Name" : "endTextOutStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm16"}]},
			{"Name" : "endTextOutStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm17"}]},
			{"Name" : "endTextOutStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm18"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98", "Parent" : "0", "Child" : ["2", "3", "10", "17", "24", "31", "32", "33", "34"],
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
			{"ID" : "2", "Name" : "cipherModeParallel_4u_256u_entry98_U0"},
			{"ID" : "3", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "10", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "17", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "24", "Name" : "singleCipherMode_256u_78_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "10", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "17", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "24", "Name" : "singleCipherMode_256u_78_U0"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "IVStrm"}]},
			{"Name" : "IVStrm1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "IVStrm1"}]},
			{"Name" : "IVStrm2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "IVStrm2"}]},
			{"Name" : "IVStrm3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "IVStrm3"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "cipherkeyStrm"}]},
			{"Name" : "cipherkeyStrm4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "cipherkeyStrm4"}]},
			{"Name" : "cipherkeyStrm5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "cipherkeyStrm5"}]},
			{"Name" : "cipherkeyStrm6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "cipherkeyStrm6"}]},
			{"Name" : "textInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textInStrm"}]},
			{"Name" : "textInStrm7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textInStrm7"}]},
			{"Name" : "textInStrm8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textInStrm8"}]},
			{"Name" : "textInStrm9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textInStrm9"}]},
			{"Name" : "endTextInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextInStrm"}]},
			{"Name" : "endTextInStrm10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextInStrm10"}]},
			{"Name" : "endTextInStrm11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextInStrm11"}]},
			{"Name" : "endTextInStrm12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextInStrm12"}]},
			{"Name" : "textOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textOutStrm"}]},
			{"Name" : "textOutStrm13", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textOutStrm13"}]},
			{"Name" : "textOutStrm14", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textOutStrm14"}]},
			{"Name" : "textOutStrm15", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textOutStrm15"}]},
			{"Name" : "endTextOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextOutStrm"}]},
			{"Name" : "endTextOutStrm16", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextOutStrm16"}]},
			{"Name" : "endTextOutStrm17", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextOutStrm17"}]},
			{"Name" : "endTextOutStrm18", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextOutStrm18"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_3"},
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_3"},
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_3"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_497"},
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_497"},
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_497"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_2"},
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_2"},
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_2"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_4"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.cipherModeParallel_4u_256u_entry98_U0", "Parent" : "1",
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
			{"Name" : "taskNum_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "31", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "32", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "33", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "34", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0", "Parent" : "1", "Child" : ["4", "5", "8"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "31", "DependentChanDepth" : "2",
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
					{"ID" : "8", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.decipher_0_496_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167", "Parent" : "3", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_updateKey_fu_192", "Parent" : "3", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0", "Parent" : "1", "Child" : ["11", "12", "15"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "32", "DependentChanDepth" : "2",
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
					{"ID" : "15", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.decipher_0_495_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167", "Parent" : "10", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_updateKey_fu_192", "Parent" : "10", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0", "Parent" : "1", "Child" : ["18", "19", "22"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "33", "DependentChanDepth" : "2",
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
					{"ID" : "22", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.decipher_0_494_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167", "Parent" : "17", "Child" : ["20", "21"],
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
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_updateKey_fu_192", "Parent" : "17", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0", "Parent" : "1", "Child" : ["25", "26", "29"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "34", "DependentChanDepth" : "2",
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
					{"ID" : "29", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.decipher_0_4_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167", "Parent" : "24", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_updateKey_fu_192", "Parent" : "24", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c77_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c78_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c79_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	cipherModeProcess_4u_256u_s {
		taskNumStrm {Type I LastRead 0 FirstWrite -1}
		IVStrm_V_V {Type I LastRead 2 FirstWrite -1}
		IVStrm_1_V_V {Type I LastRead 2 FirstWrite -1}
		IVStrm_2_V_V {Type I LastRead 2 FirstWrite -1}
		IVStrm_3_V_V {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm_V_V {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm_1_V_V {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm_2_V_V {Type I LastRead 2 FirstWrite -1}
		cipherkeyStrm_3_V_V {Type I LastRead 2 FirstWrite -1}
		textInStrm_V_V {Type I LastRead 5 FirstWrite -1}
		textInStrm_1_V_V {Type I LastRead 5 FirstWrite -1}
		textInStrm_2_V_V {Type I LastRead 5 FirstWrite -1}
		textInStrm_3_V_V {Type I LastRead 5 FirstWrite -1}
		endTextInStrm_V {Type I LastRead 4 FirstWrite -1}
		endTextInStrm_1_V {Type I LastRead 4 FirstWrite -1}
		endTextInStrm_2_V {Type I LastRead 4 FirstWrite -1}
		endTextInStrm_3_V {Type I LastRead 4 FirstWrite -1}
		textOutStrm_V_V {Type O LastRead -1 FirstWrite 19}
		textOutStrm_1_V_V {Type O LastRead -1 FirstWrite 19}
		textOutStrm_2_V_V {Type O LastRead -1 FirstWrite 19}
		textOutStrm_3_V_V {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm_V {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm_1_V {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm_2_V {Type O LastRead -1 FirstWrite 19}
		endTextOutStrm_3_V {Type O LastRead -1 FirstWrite 19}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_496 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		decipher_0_495 {Type I LastRead -1 FirstWrite -1}
		decipher_0_494 {Type I LastRead -1 FirstWrite -1}
		decipher_0_4 {Type I LastRead -1 FirstWrite -1}}
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
	taskNumStrm { ap_fifo {  { taskNumStrm_dout fifo_data 0 64 }  { taskNumStrm_empty_n fifo_status 0 1 }  { taskNumStrm_read fifo_update 1 1 } } }
	IVStrm_V_V { ap_fifo {  { IVStrm_V_V_dout fifo_data 0 128 }  { IVStrm_V_V_empty_n fifo_status 0 1 }  { IVStrm_V_V_read fifo_update 1 1 } } }
	IVStrm_1_V_V { ap_fifo {  { IVStrm_1_V_V_dout fifo_data 0 128 }  { IVStrm_1_V_V_empty_n fifo_status 0 1 }  { IVStrm_1_V_V_read fifo_update 1 1 } } }
	IVStrm_2_V_V { ap_fifo {  { IVStrm_2_V_V_dout fifo_data 0 128 }  { IVStrm_2_V_V_empty_n fifo_status 0 1 }  { IVStrm_2_V_V_read fifo_update 1 1 } } }
	IVStrm_3_V_V { ap_fifo {  { IVStrm_3_V_V_dout fifo_data 0 128 }  { IVStrm_3_V_V_empty_n fifo_status 0 1 }  { IVStrm_3_V_V_read fifo_update 1 1 } } }
	cipherkeyStrm_V_V { ap_fifo {  { cipherkeyStrm_V_V_dout fifo_data 0 256 }  { cipherkeyStrm_V_V_empty_n fifo_status 0 1 }  { cipherkeyStrm_V_V_read fifo_update 1 1 } } }
	cipherkeyStrm_1_V_V { ap_fifo {  { cipherkeyStrm_1_V_V_dout fifo_data 0 256 }  { cipherkeyStrm_1_V_V_empty_n fifo_status 0 1 }  { cipherkeyStrm_1_V_V_read fifo_update 1 1 } } }
	cipherkeyStrm_2_V_V { ap_fifo {  { cipherkeyStrm_2_V_V_dout fifo_data 0 256 }  { cipherkeyStrm_2_V_V_empty_n fifo_status 0 1 }  { cipherkeyStrm_2_V_V_read fifo_update 1 1 } } }
	cipherkeyStrm_3_V_V { ap_fifo {  { cipherkeyStrm_3_V_V_dout fifo_data 0 256 }  { cipherkeyStrm_3_V_V_empty_n fifo_status 0 1 }  { cipherkeyStrm_3_V_V_read fifo_update 1 1 } } }
	textInStrm_V_V { ap_fifo {  { textInStrm_V_V_dout fifo_data 0 128 }  { textInStrm_V_V_empty_n fifo_status 0 1 }  { textInStrm_V_V_read fifo_update 1 1 } } }
	textInStrm_1_V_V { ap_fifo {  { textInStrm_1_V_V_dout fifo_data 0 128 }  { textInStrm_1_V_V_empty_n fifo_status 0 1 }  { textInStrm_1_V_V_read fifo_update 1 1 } } }
	textInStrm_2_V_V { ap_fifo {  { textInStrm_2_V_V_dout fifo_data 0 128 }  { textInStrm_2_V_V_empty_n fifo_status 0 1 }  { textInStrm_2_V_V_read fifo_update 1 1 } } }
	textInStrm_3_V_V { ap_fifo {  { textInStrm_3_V_V_dout fifo_data 0 128 }  { textInStrm_3_V_V_empty_n fifo_status 0 1 }  { textInStrm_3_V_V_read fifo_update 1 1 } } }
	endTextInStrm_V { ap_fifo {  { endTextInStrm_V_dout fifo_data 0 1 }  { endTextInStrm_V_empty_n fifo_status 0 1 }  { endTextInStrm_V_read fifo_update 1 1 } } }
	endTextInStrm_1_V { ap_fifo {  { endTextInStrm_1_V_dout fifo_data 0 1 }  { endTextInStrm_1_V_empty_n fifo_status 0 1 }  { endTextInStrm_1_V_read fifo_update 1 1 } } }
	endTextInStrm_2_V { ap_fifo {  { endTextInStrm_2_V_dout fifo_data 0 1 }  { endTextInStrm_2_V_empty_n fifo_status 0 1 }  { endTextInStrm_2_V_read fifo_update 1 1 } } }
	endTextInStrm_3_V { ap_fifo {  { endTextInStrm_3_V_dout fifo_data 0 1 }  { endTextInStrm_3_V_empty_n fifo_status 0 1 }  { endTextInStrm_3_V_read fifo_update 1 1 } } }
	textOutStrm_V_V { ap_fifo {  { textOutStrm_V_V_din fifo_data 1 128 }  { textOutStrm_V_V_full_n fifo_status 0 1 }  { textOutStrm_V_V_write fifo_update 1 1 } } }
	textOutStrm_1_V_V { ap_fifo {  { textOutStrm_1_V_V_din fifo_data 1 128 }  { textOutStrm_1_V_V_full_n fifo_status 0 1 }  { textOutStrm_1_V_V_write fifo_update 1 1 } } }
	textOutStrm_2_V_V { ap_fifo {  { textOutStrm_2_V_V_din fifo_data 1 128 }  { textOutStrm_2_V_V_full_n fifo_status 0 1 }  { textOutStrm_2_V_V_write fifo_update 1 1 } } }
	textOutStrm_3_V_V { ap_fifo {  { textOutStrm_3_V_V_din fifo_data 1 128 }  { textOutStrm_3_V_V_full_n fifo_status 0 1 }  { textOutStrm_3_V_V_write fifo_update 1 1 } } }
	endTextOutStrm_V { ap_fifo {  { endTextOutStrm_V_din fifo_data 1 1 }  { endTextOutStrm_V_full_n fifo_status 0 1 }  { endTextOutStrm_V_write fifo_update 1 1 } } }
	endTextOutStrm_1_V { ap_fifo {  { endTextOutStrm_1_V_din fifo_data 1 1 }  { endTextOutStrm_1_V_full_n fifo_status 0 1 }  { endTextOutStrm_1_V_write fifo_update 1 1 } } }
	endTextOutStrm_2_V { ap_fifo {  { endTextOutStrm_2_V_din fifo_data 1 1 }  { endTextOutStrm_2_V_full_n fifo_status 0 1 }  { endTextOutStrm_2_V_write fifo_update 1 1 } } }
	endTextOutStrm_3_V { ap_fifo {  { endTextOutStrm_3_V_din fifo_data 1 1 }  { endTextOutStrm_3_V_full_n fifo_status 0 1 }  { endTextOutStrm_3_V_write fifo_update 1 1 } } }
}
