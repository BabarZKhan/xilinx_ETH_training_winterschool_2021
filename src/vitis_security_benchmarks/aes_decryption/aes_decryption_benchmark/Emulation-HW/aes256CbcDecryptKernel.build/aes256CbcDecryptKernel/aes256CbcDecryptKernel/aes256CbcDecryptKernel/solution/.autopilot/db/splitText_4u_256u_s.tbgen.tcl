set moduleName splitText_4u_256u_s
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
set C_modelName {splitText<4u, 256u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ textBlkStrm int 512 regular {fifo 0 volatile }  }
	{ msgNumStrm int 64 regular {fifo 0 volatile }  }
	{ taskNumStrm int 64 regular {fifo 0 volatile }  }
	{ IVInStrm int 128 regular {fifo 0 volatile }  }
	{ cipherkeyInStrm int 256 regular {fifo 0 volatile }  }
	{ textStrm_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_1_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_2_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_3_V_V int 128 regular {fifo 1 volatile }  }
	{ endTextStrm_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_1_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_2_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_3_V int 1 regular {fifo 1 volatile }  }
	{ IVStrm_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_1_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_2_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_3_V_V int 128 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_1_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_2_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_3_V_V int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "textBlkStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVInStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyInStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "textStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_1_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_2_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_3_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_1_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_2_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_3_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ textBlkStrm_dout sc_in sc_lv 512 signal 0 } 
	{ textBlkStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ textBlkStrm_read sc_out sc_logic 1 signal 0 } 
	{ msgNumStrm_dout sc_in sc_lv 64 signal 1 } 
	{ msgNumStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgNumStrm_read sc_out sc_logic 1 signal 1 } 
	{ taskNumStrm_dout sc_in sc_lv 64 signal 2 } 
	{ taskNumStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ taskNumStrm_read sc_out sc_logic 1 signal 2 } 
	{ IVInStrm_dout sc_in sc_lv 128 signal 3 } 
	{ IVInStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ IVInStrm_read sc_out sc_logic 1 signal 3 } 
	{ cipherkeyInStrm_dout sc_in sc_lv 256 signal 4 } 
	{ cipherkeyInStrm_empty_n sc_in sc_logic 1 signal 4 } 
	{ cipherkeyInStrm_read sc_out sc_logic 1 signal 4 } 
	{ textStrm_V_V_din sc_out sc_lv 128 signal 5 } 
	{ textStrm_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ textStrm_V_V_write sc_out sc_logic 1 signal 5 } 
	{ textStrm_1_V_V_din sc_out sc_lv 128 signal 6 } 
	{ textStrm_1_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ textStrm_1_V_V_write sc_out sc_logic 1 signal 6 } 
	{ textStrm_2_V_V_din sc_out sc_lv 128 signal 7 } 
	{ textStrm_2_V_V_full_n sc_in sc_logic 1 signal 7 } 
	{ textStrm_2_V_V_write sc_out sc_logic 1 signal 7 } 
	{ textStrm_3_V_V_din sc_out sc_lv 128 signal 8 } 
	{ textStrm_3_V_V_full_n sc_in sc_logic 1 signal 8 } 
	{ textStrm_3_V_V_write sc_out sc_logic 1 signal 8 } 
	{ endTextStrm_V_din sc_out sc_logic 1 signal 9 } 
	{ endTextStrm_V_full_n sc_in sc_logic 1 signal 9 } 
	{ endTextStrm_V_write sc_out sc_logic 1 signal 9 } 
	{ endTextStrm_1_V_din sc_out sc_logic 1 signal 10 } 
	{ endTextStrm_1_V_full_n sc_in sc_logic 1 signal 10 } 
	{ endTextStrm_1_V_write sc_out sc_logic 1 signal 10 } 
	{ endTextStrm_2_V_din sc_out sc_logic 1 signal 11 } 
	{ endTextStrm_2_V_full_n sc_in sc_logic 1 signal 11 } 
	{ endTextStrm_2_V_write sc_out sc_logic 1 signal 11 } 
	{ endTextStrm_3_V_din sc_out sc_logic 1 signal 12 } 
	{ endTextStrm_3_V_full_n sc_in sc_logic 1 signal 12 } 
	{ endTextStrm_3_V_write sc_out sc_logic 1 signal 12 } 
	{ IVStrm_V_V_din sc_out sc_lv 128 signal 13 } 
	{ IVStrm_V_V_full_n sc_in sc_logic 1 signal 13 } 
	{ IVStrm_V_V_write sc_out sc_logic 1 signal 13 } 
	{ IVStrm_1_V_V_din sc_out sc_lv 128 signal 14 } 
	{ IVStrm_1_V_V_full_n sc_in sc_logic 1 signal 14 } 
	{ IVStrm_1_V_V_write sc_out sc_logic 1 signal 14 } 
	{ IVStrm_2_V_V_din sc_out sc_lv 128 signal 15 } 
	{ IVStrm_2_V_V_full_n sc_in sc_logic 1 signal 15 } 
	{ IVStrm_2_V_V_write sc_out sc_logic 1 signal 15 } 
	{ IVStrm_3_V_V_din sc_out sc_lv 128 signal 16 } 
	{ IVStrm_3_V_V_full_n sc_in sc_logic 1 signal 16 } 
	{ IVStrm_3_V_V_write sc_out sc_logic 1 signal 16 } 
	{ cipherkeyStrm_V_V_din sc_out sc_lv 256 signal 17 } 
	{ cipherkeyStrm_V_V_full_n sc_in sc_logic 1 signal 17 } 
	{ cipherkeyStrm_V_V_write sc_out sc_logic 1 signal 17 } 
	{ cipherkeyStrm_1_V_V_din sc_out sc_lv 256 signal 18 } 
	{ cipherkeyStrm_1_V_V_full_n sc_in sc_logic 1 signal 18 } 
	{ cipherkeyStrm_1_V_V_write sc_out sc_logic 1 signal 18 } 
	{ cipherkeyStrm_2_V_V_din sc_out sc_lv 256 signal 19 } 
	{ cipherkeyStrm_2_V_V_full_n sc_in sc_logic 1 signal 19 } 
	{ cipherkeyStrm_2_V_V_write sc_out sc_logic 1 signal 19 } 
	{ cipherkeyStrm_3_V_V_din sc_out sc_lv 256 signal 20 } 
	{ cipherkeyStrm_3_V_V_full_n sc_in sc_logic 1 signal 20 } 
	{ cipherkeyStrm_3_V_V_write sc_out sc_logic 1 signal 20 } 
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
 	{ "name": "textBlkStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "textBlkStrm", "role": "dout" }} , 
 	{ "name": "textBlkStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textBlkStrm", "role": "empty_n" }} , 
 	{ "name": "textBlkStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textBlkStrm", "role": "read" }} , 
 	{ "name": "msgNumStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "dout" }} , 
 	{ "name": "msgNumStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "empty_n" }} , 
 	{ "name": "msgNumStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "read" }} , 
 	{ "name": "taskNumStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "dout" }} , 
 	{ "name": "taskNumStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "empty_n" }} , 
 	{ "name": "taskNumStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "read" }} , 
 	{ "name": "IVInStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVInStrm", "role": "dout" }} , 
 	{ "name": "IVInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVInStrm", "role": "empty_n" }} , 
 	{ "name": "IVInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVInStrm", "role": "read" }} , 
 	{ "name": "cipherkeyInStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyInStrm", "role": "dout" }} , 
 	{ "name": "cipherkeyInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyInStrm", "role": "empty_n" }} , 
 	{ "name": "cipherkeyInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyInStrm", "role": "read" }} , 
 	{ "name": "textStrm_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "din" }} , 
 	{ "name": "textStrm_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "full_n" }} , 
 	{ "name": "textStrm_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "write" }} , 
 	{ "name": "textStrm_1_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "din" }} , 
 	{ "name": "textStrm_1_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "full_n" }} , 
 	{ "name": "textStrm_1_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "write" }} , 
 	{ "name": "textStrm_2_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "din" }} , 
 	{ "name": "textStrm_2_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "full_n" }} , 
 	{ "name": "textStrm_2_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "write" }} , 
 	{ "name": "textStrm_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "din" }} , 
 	{ "name": "textStrm_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "full_n" }} , 
 	{ "name": "textStrm_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "write" }} , 
 	{ "name": "endTextStrm_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "din" }} , 
 	{ "name": "endTextStrm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "full_n" }} , 
 	{ "name": "endTextStrm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "write" }} , 
 	{ "name": "endTextStrm_1_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "din" }} , 
 	{ "name": "endTextStrm_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "full_n" }} , 
 	{ "name": "endTextStrm_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "write" }} , 
 	{ "name": "endTextStrm_2_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "din" }} , 
 	{ "name": "endTextStrm_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "full_n" }} , 
 	{ "name": "endTextStrm_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "write" }} , 
 	{ "name": "endTextStrm_3_V_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "din" }} , 
 	{ "name": "endTextStrm_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "full_n" }} , 
 	{ "name": "endTextStrm_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "write" }} , 
 	{ "name": "IVStrm_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "din" }} , 
 	{ "name": "IVStrm_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "full_n" }} , 
 	{ "name": "IVStrm_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_V_V", "role": "write" }} , 
 	{ "name": "IVStrm_1_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "din" }} , 
 	{ "name": "IVStrm_1_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "full_n" }} , 
 	{ "name": "IVStrm_1_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_1_V_V", "role": "write" }} , 
 	{ "name": "IVStrm_2_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "din" }} , 
 	{ "name": "IVStrm_2_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "full_n" }} , 
 	{ "name": "IVStrm_2_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_2_V_V", "role": "write" }} , 
 	{ "name": "IVStrm_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "din" }} , 
 	{ "name": "IVStrm_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "full_n" }} , 
 	{ "name": "IVStrm_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm_3_V_V", "role": "write" }} , 
 	{ "name": "cipherkeyStrm_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "din" }} , 
 	{ "name": "cipherkeyStrm_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "full_n" }} , 
 	{ "name": "cipherkeyStrm_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_V_V", "role": "write" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "din" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "full_n" }} , 
 	{ "name": "cipherkeyStrm_1_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_1_V_V", "role": "write" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "din" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "full_n" }} , 
 	{ "name": "cipherkeyStrm_2_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_2_V_V", "role": "write" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "din" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "full_n" }} , 
 	{ "name": "cipherkeyStrm_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm_3_V_V", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "splitText_4u_256u_s",
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
		"Port" : [
			{"Name" : "textBlkStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	splitText_4u_256u_s {
		textBlkStrm {Type I LastRead 3 FirstWrite -1}
		msgNumStrm {Type I LastRead 0 FirstWrite -1}
		taskNumStrm {Type I LastRead 0 FirstWrite -1}
		IVInStrm {Type I LastRead 0 FirstWrite -1}
		cipherkeyInStrm {Type I LastRead 0 FirstWrite -1}
		textStrm_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_3_V_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_1_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_2_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_3_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_3_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_3_V_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	textBlkStrm { ap_fifo {  { textBlkStrm_dout fifo_data 0 512 }  { textBlkStrm_empty_n fifo_status 0 1 }  { textBlkStrm_read fifo_update 1 1 } } }
	msgNumStrm { ap_fifo {  { msgNumStrm_dout fifo_data 0 64 }  { msgNumStrm_empty_n fifo_status 0 1 }  { msgNumStrm_read fifo_update 1 1 } } }
	taskNumStrm { ap_fifo {  { taskNumStrm_dout fifo_data 0 64 }  { taskNumStrm_empty_n fifo_status 0 1 }  { taskNumStrm_read fifo_update 1 1 } } }
	IVInStrm { ap_fifo {  { IVInStrm_dout fifo_data 0 128 }  { IVInStrm_empty_n fifo_status 0 1 }  { IVInStrm_read fifo_update 1 1 } } }
	cipherkeyInStrm { ap_fifo {  { cipherkeyInStrm_dout fifo_data 0 256 }  { cipherkeyInStrm_empty_n fifo_status 0 1 }  { cipherkeyInStrm_read fifo_update 1 1 } } }
	textStrm_V_V { ap_fifo {  { textStrm_V_V_din fifo_data 1 128 }  { textStrm_V_V_full_n fifo_status 0 1 }  { textStrm_V_V_write fifo_update 1 1 } } }
	textStrm_1_V_V { ap_fifo {  { textStrm_1_V_V_din fifo_data 1 128 }  { textStrm_1_V_V_full_n fifo_status 0 1 }  { textStrm_1_V_V_write fifo_update 1 1 } } }
	textStrm_2_V_V { ap_fifo {  { textStrm_2_V_V_din fifo_data 1 128 }  { textStrm_2_V_V_full_n fifo_status 0 1 }  { textStrm_2_V_V_write fifo_update 1 1 } } }
	textStrm_3_V_V { ap_fifo {  { textStrm_3_V_V_din fifo_data 1 128 }  { textStrm_3_V_V_full_n fifo_status 0 1 }  { textStrm_3_V_V_write fifo_update 1 1 } } }
	endTextStrm_V { ap_fifo {  { endTextStrm_V_din fifo_data 1 1 }  { endTextStrm_V_full_n fifo_status 0 1 }  { endTextStrm_V_write fifo_update 1 1 } } }
	endTextStrm_1_V { ap_fifo {  { endTextStrm_1_V_din fifo_data 1 1 }  { endTextStrm_1_V_full_n fifo_status 0 1 }  { endTextStrm_1_V_write fifo_update 1 1 } } }
	endTextStrm_2_V { ap_fifo {  { endTextStrm_2_V_din fifo_data 1 1 }  { endTextStrm_2_V_full_n fifo_status 0 1 }  { endTextStrm_2_V_write fifo_update 1 1 } } }
	endTextStrm_3_V { ap_fifo {  { endTextStrm_3_V_din fifo_data 1 1 }  { endTextStrm_3_V_full_n fifo_status 0 1 }  { endTextStrm_3_V_write fifo_update 1 1 } } }
	IVStrm_V_V { ap_fifo {  { IVStrm_V_V_din fifo_data 1 128 }  { IVStrm_V_V_full_n fifo_status 0 1 }  { IVStrm_V_V_write fifo_update 1 1 } } }
	IVStrm_1_V_V { ap_fifo {  { IVStrm_1_V_V_din fifo_data 1 128 }  { IVStrm_1_V_V_full_n fifo_status 0 1 }  { IVStrm_1_V_V_write fifo_update 1 1 } } }
	IVStrm_2_V_V { ap_fifo {  { IVStrm_2_V_V_din fifo_data 1 128 }  { IVStrm_2_V_V_full_n fifo_status 0 1 }  { IVStrm_2_V_V_write fifo_update 1 1 } } }
	IVStrm_3_V_V { ap_fifo {  { IVStrm_3_V_V_din fifo_data 1 128 }  { IVStrm_3_V_V_full_n fifo_status 0 1 }  { IVStrm_3_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_V_V { ap_fifo {  { cipherkeyStrm_V_V_din fifo_data 1 256 }  { cipherkeyStrm_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_1_V_V { ap_fifo {  { cipherkeyStrm_1_V_V_din fifo_data 1 256 }  { cipherkeyStrm_1_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_1_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_2_V_V { ap_fifo {  { cipherkeyStrm_2_V_V_din fifo_data 1 256 }  { cipherkeyStrm_2_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_2_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_3_V_V { ap_fifo {  { cipherkeyStrm_3_V_V_din fifo_data 1 256 }  { cipherkeyStrm_3_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_3_V_V_write fifo_update 1 1 } } }
}
