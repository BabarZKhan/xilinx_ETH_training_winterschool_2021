set moduleName scanMultiChannel_4u_256u_128u_104
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
set C_modelName {scanMultiChannel<4u, 256u, 128u>104}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0_0 int 512 regular {axi_master 0}  }
	{ msgNumStrm int 64 regular {fifo 1 volatile }  }
	{ taskNumStrm int 64 regular {fifo 1 volatile }  }
	{ taskNumStrm2 int 64 regular {fifo 1 volatile }  }
	{ ptr int 64 regular  }
	{ IVStrm_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_1_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_2_V_V int 128 regular {fifo 1 volatile }  }
	{ IVStrm_3_V_V int 128 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_1_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_2_V_V int 256 regular {fifo 1 volatile }  }
	{ cipherkeyStrm_3_V_V int 256 regular {fifo 1 volatile }  }
	{ textStrm_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_1_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_2_V_V int 128 regular {fifo 1 volatile }  }
	{ textStrm_3_V_V int 128 regular {fifo 1 volatile }  }
	{ endTextStrm_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_1_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_2_V int 1 regular {fifo 1 volatile }  }
	{ endTextStrm_3_V int 1 regular {fifo 1 volatile }  }
	{ outputData int 64 regular  }
	{ outputData_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0_0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskNumStrm2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ptr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_1_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_2_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyStrm_3_V_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_1_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_2_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextStrm_3_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputData", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outputData_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 122
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ msgNumStrm_din sc_out sc_lv 64 signal 1 } 
	{ msgNumStrm_full_n sc_in sc_logic 1 signal 1 } 
	{ msgNumStrm_write sc_out sc_logic 1 signal 1 } 
	{ taskNumStrm_din sc_out sc_lv 64 signal 2 } 
	{ taskNumStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ taskNumStrm_write sc_out sc_logic 1 signal 2 } 
	{ taskNumStrm2_din sc_out sc_lv 64 signal 3 } 
	{ taskNumStrm2_full_n sc_in sc_logic 1 signal 3 } 
	{ taskNumStrm2_write sc_out sc_logic 1 signal 3 } 
	{ ptr sc_in sc_lv 64 signal 4 } 
	{ IVStrm_V_V_din sc_out sc_lv 128 signal 5 } 
	{ IVStrm_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ IVStrm_V_V_write sc_out sc_logic 1 signal 5 } 
	{ IVStrm_1_V_V_din sc_out sc_lv 128 signal 6 } 
	{ IVStrm_1_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ IVStrm_1_V_V_write sc_out sc_logic 1 signal 6 } 
	{ IVStrm_2_V_V_din sc_out sc_lv 128 signal 7 } 
	{ IVStrm_2_V_V_full_n sc_in sc_logic 1 signal 7 } 
	{ IVStrm_2_V_V_write sc_out sc_logic 1 signal 7 } 
	{ IVStrm_3_V_V_din sc_out sc_lv 128 signal 8 } 
	{ IVStrm_3_V_V_full_n sc_in sc_logic 1 signal 8 } 
	{ IVStrm_3_V_V_write sc_out sc_logic 1 signal 8 } 
	{ cipherkeyStrm_V_V_din sc_out sc_lv 256 signal 9 } 
	{ cipherkeyStrm_V_V_full_n sc_in sc_logic 1 signal 9 } 
	{ cipherkeyStrm_V_V_write sc_out sc_logic 1 signal 9 } 
	{ cipherkeyStrm_1_V_V_din sc_out sc_lv 256 signal 10 } 
	{ cipherkeyStrm_1_V_V_full_n sc_in sc_logic 1 signal 10 } 
	{ cipherkeyStrm_1_V_V_write sc_out sc_logic 1 signal 10 } 
	{ cipherkeyStrm_2_V_V_din sc_out sc_lv 256 signal 11 } 
	{ cipherkeyStrm_2_V_V_full_n sc_in sc_logic 1 signal 11 } 
	{ cipherkeyStrm_2_V_V_write sc_out sc_logic 1 signal 11 } 
	{ cipherkeyStrm_3_V_V_din sc_out sc_lv 256 signal 12 } 
	{ cipherkeyStrm_3_V_V_full_n sc_in sc_logic 1 signal 12 } 
	{ cipherkeyStrm_3_V_V_write sc_out sc_logic 1 signal 12 } 
	{ textStrm_V_V_din sc_out sc_lv 128 signal 13 } 
	{ textStrm_V_V_full_n sc_in sc_logic 1 signal 13 } 
	{ textStrm_V_V_write sc_out sc_logic 1 signal 13 } 
	{ textStrm_1_V_V_din sc_out sc_lv 128 signal 14 } 
	{ textStrm_1_V_V_full_n sc_in sc_logic 1 signal 14 } 
	{ textStrm_1_V_V_write sc_out sc_logic 1 signal 14 } 
	{ textStrm_2_V_V_din sc_out sc_lv 128 signal 15 } 
	{ textStrm_2_V_V_full_n sc_in sc_logic 1 signal 15 } 
	{ textStrm_2_V_V_write sc_out sc_logic 1 signal 15 } 
	{ textStrm_3_V_V_din sc_out sc_lv 128 signal 16 } 
	{ textStrm_3_V_V_full_n sc_in sc_logic 1 signal 16 } 
	{ textStrm_3_V_V_write sc_out sc_logic 1 signal 16 } 
	{ endTextStrm_V_din sc_out sc_logic 1 signal 17 } 
	{ endTextStrm_V_full_n sc_in sc_logic 1 signal 17 } 
	{ endTextStrm_V_write sc_out sc_logic 1 signal 17 } 
	{ endTextStrm_1_V_din sc_out sc_logic 1 signal 18 } 
	{ endTextStrm_1_V_full_n sc_in sc_logic 1 signal 18 } 
	{ endTextStrm_1_V_write sc_out sc_logic 1 signal 18 } 
	{ endTextStrm_2_V_din sc_out sc_logic 1 signal 19 } 
	{ endTextStrm_2_V_full_n sc_in sc_logic 1 signal 19 } 
	{ endTextStrm_2_V_write sc_out sc_logic 1 signal 19 } 
	{ endTextStrm_3_V_din sc_out sc_logic 1 signal 20 } 
	{ endTextStrm_3_V_full_n sc_in sc_logic 1 signal 20 } 
	{ endTextStrm_3_V_write sc_out sc_logic 1 signal 20 } 
	{ outputData sc_in sc_lv 64 signal 21 } 
	{ outputData_out_din sc_out sc_lv 64 signal 22 } 
	{ outputData_out_full_n sc_in sc_logic 1 signal 22 } 
	{ outputData_out_write sc_out sc_logic 1 signal 22 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ outputData_ap_vld sc_in sc_logic 1 invld 21 } 
	{ ptr_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "BUSER" }} , 
 	{ "name": "msgNumStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "din" }} , 
 	{ "name": "msgNumStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "full_n" }} , 
 	{ "name": "msgNumStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "write" }} , 
 	{ "name": "taskNumStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "din" }} , 
 	{ "name": "taskNumStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "full_n" }} , 
 	{ "name": "taskNumStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "write" }} , 
 	{ "name": "taskNumStrm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "din" }} , 
 	{ "name": "taskNumStrm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "full_n" }} , 
 	{ "name": "taskNumStrm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "write" }} , 
 	{ "name": "ptr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ptr", "role": "default" }} , 
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
 	{ "name": "outputData", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputData", "role": "default" }} , 
 	{ "name": "outputData_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputData_out", "role": "din" }} , 
 	{ "name": "outputData_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputData_out", "role": "full_n" }} , 
 	{ "name": "outputData_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputData_out", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "outputData_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "outputData", "role": "ap_vld" }} , 
 	{ "name": "ptr_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ptr", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "scanMultiChannel_4u_256u_128u_104",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "readBlock_128u_4u_256u_107_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "readBlock_128u_4u_256u_107_U0"},
			{"ID" : "3", "Name" : "splitText_4u_256u_U0"}],
		"Port" : [
			{"Name" : "gmem0_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "gmem0_0"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "msgNumStrm"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "taskNumStrm"}]},
			{"Name" : "taskNumStrm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "taskNumStrm2"}]},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_V_V"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_1_V_V"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_2_V_V"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_3_V_V"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_V_V"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_1_V_V"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_2_V_V"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_3_V_V"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_V_V"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_1_V_V"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_2_V_V"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_3_V_V"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_V"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_1_V"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_2_V"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_3_V"}]},
			{"Name" : "outputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputData_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "outputData_out"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.readBlock_128u_4u_256u_107_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "readBlock_128u_4u_256u_107",
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
			{"Name" : "outputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputData_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "outputData_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "textBlkStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "4", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "5", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "8", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readBlock_128u_4u_256u_107_U0.mul_64ns_64ns_128_5_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.splitText_4u_256u_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_splitText_4u_256u_U0_U",
		"Port" : [
			{"Name" : "textBlkStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "32",
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
					{"Name" : "cipherkeyStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textBlkStrm_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.msgNumStrm1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNumStrm1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVInStrm_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyInStrm_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_splitText_4u_256u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	scanMultiChannel_4u_256u_128u_104 {
		gmem0_0 {Type I LastRead 149 FirstWrite -1}
		msgNumStrm {Type O LastRead -1 FirstWrite 72}
		taskNumStrm {Type O LastRead -1 FirstWrite 72}
		taskNumStrm2 {Type O LastRead -1 FirstWrite 72}
		ptr {Type I LastRead 0 FirstWrite -1}
		IVStrm_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		IVStrm_3_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		cipherkeyStrm_3_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_1_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_2_V_V {Type O LastRead -1 FirstWrite 3}
		textStrm_3_V_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_1_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_2_V {Type O LastRead -1 FirstWrite 3}
		endTextStrm_3_V {Type O LastRead -1 FirstWrite 3}
		outputData {Type I LastRead 0 FirstWrite -1}
		outputData_out {Type O LastRead -1 FirstWrite 0}}
	readBlock_128u_4u_256u_107 {
		outputData {Type I LastRead 0 FirstWrite -1}
		outputData_out {Type O LastRead -1 FirstWrite 0}
		gmem0_0 {Type I LastRead 149 FirstWrite -1}
		textBlkStrm_i_i {Type O LastRead -1 FirstWrite 150}
		msgNumStrm {Type O LastRead -1 FirstWrite 72}
		msgNumStrm1_i_i {Type O LastRead -1 FirstWrite 72}
		taskNumStrm {Type O LastRead -1 FirstWrite 72}
		taskNumStrm1_i_i {Type O LastRead -1 FirstWrite 72}
		taskNumStrm2 {Type O LastRead -1 FirstWrite 72}
		IVInStrm_i_i {Type O LastRead -1 FirstWrite 72}
		cipherkeyInStrm_i_i {Type O LastRead -1 FirstWrite 72}
		ptr {Type I LastRead 0 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	gmem0_0 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN LEN 1 32 }  { m_axi_gmem0_0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_0_AWBURST BURST 1 2 }  { m_axi_gmem0_0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_0_AWPROT PROT 1 3 }  { m_axi_gmem0_0_AWQOS QOS 1 4 }  { m_axi_gmem0_0_AWREGION REGION 1 4 }  { m_axi_gmem0_0_AWUSER USER 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA DATA 1 512 }  { m_axi_gmem0_0_WSTRB STRB 1 64 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER USER 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN LEN 1 32 }  { m_axi_gmem0_0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_0_ARBURST BURST 1 2 }  { m_axi_gmem0_0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_0_ARPROT PROT 1 3 }  { m_axi_gmem0_0_ARQOS QOS 1 4 }  { m_axi_gmem0_0_ARREGION REGION 1 4 }  { m_axi_gmem0_0_ARUSER USER 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA DATA 0 512 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RUSER USER 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER USER 0 1 } } }
	msgNumStrm { ap_fifo {  { msgNumStrm_din fifo_data 1 64 }  { msgNumStrm_full_n fifo_status 0 1 }  { msgNumStrm_write fifo_update 1 1 } } }
	taskNumStrm { ap_fifo {  { taskNumStrm_din fifo_data 1 64 }  { taskNumStrm_full_n fifo_status 0 1 }  { taskNumStrm_write fifo_update 1 1 } } }
	taskNumStrm2 { ap_fifo {  { taskNumStrm2_din fifo_data 1 64 }  { taskNumStrm2_full_n fifo_status 0 1 }  { taskNumStrm2_write fifo_update 1 1 } } }
	ptr { ap_none {  { ptr in_data 0 64 }  { ptr_ap_vld in_vld 0 1 } } }
	IVStrm_V_V { ap_fifo {  { IVStrm_V_V_din fifo_data 1 128 }  { IVStrm_V_V_full_n fifo_status 0 1 }  { IVStrm_V_V_write fifo_update 1 1 } } }
	IVStrm_1_V_V { ap_fifo {  { IVStrm_1_V_V_din fifo_data 1 128 }  { IVStrm_1_V_V_full_n fifo_status 0 1 }  { IVStrm_1_V_V_write fifo_update 1 1 } } }
	IVStrm_2_V_V { ap_fifo {  { IVStrm_2_V_V_din fifo_data 1 128 }  { IVStrm_2_V_V_full_n fifo_status 0 1 }  { IVStrm_2_V_V_write fifo_update 1 1 } } }
	IVStrm_3_V_V { ap_fifo {  { IVStrm_3_V_V_din fifo_data 1 128 }  { IVStrm_3_V_V_full_n fifo_status 0 1 }  { IVStrm_3_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_V_V { ap_fifo {  { cipherkeyStrm_V_V_din fifo_data 1 256 }  { cipherkeyStrm_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_1_V_V { ap_fifo {  { cipherkeyStrm_1_V_V_din fifo_data 1 256 }  { cipherkeyStrm_1_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_1_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_2_V_V { ap_fifo {  { cipherkeyStrm_2_V_V_din fifo_data 1 256 }  { cipherkeyStrm_2_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_2_V_V_write fifo_update 1 1 } } }
	cipherkeyStrm_3_V_V { ap_fifo {  { cipherkeyStrm_3_V_V_din fifo_data 1 256 }  { cipherkeyStrm_3_V_V_full_n fifo_status 0 1 }  { cipherkeyStrm_3_V_V_write fifo_update 1 1 } } }
	textStrm_V_V { ap_fifo {  { textStrm_V_V_din fifo_data 1 128 }  { textStrm_V_V_full_n fifo_status 0 1 }  { textStrm_V_V_write fifo_update 1 1 } } }
	textStrm_1_V_V { ap_fifo {  { textStrm_1_V_V_din fifo_data 1 128 }  { textStrm_1_V_V_full_n fifo_status 0 1 }  { textStrm_1_V_V_write fifo_update 1 1 } } }
	textStrm_2_V_V { ap_fifo {  { textStrm_2_V_V_din fifo_data 1 128 }  { textStrm_2_V_V_full_n fifo_status 0 1 }  { textStrm_2_V_V_write fifo_update 1 1 } } }
	textStrm_3_V_V { ap_fifo {  { textStrm_3_V_V_din fifo_data 1 128 }  { textStrm_3_V_V_full_n fifo_status 0 1 }  { textStrm_3_V_V_write fifo_update 1 1 } } }
	endTextStrm_V { ap_fifo {  { endTextStrm_V_din fifo_data 1 1 }  { endTextStrm_V_full_n fifo_status 0 1 }  { endTextStrm_V_write fifo_update 1 1 } } }
	endTextStrm_1_V { ap_fifo {  { endTextStrm_1_V_din fifo_data 1 1 }  { endTextStrm_1_V_full_n fifo_status 0 1 }  { endTextStrm_1_V_write fifo_update 1 1 } } }
	endTextStrm_2_V { ap_fifo {  { endTextStrm_2_V_din fifo_data 1 1 }  { endTextStrm_2_V_full_n fifo_status 0 1 }  { endTextStrm_2_V_write fifo_update 1 1 } } }
	endTextStrm_3_V { ap_fifo {  { endTextStrm_3_V_din fifo_data 1 1 }  { endTextStrm_3_V_full_n fifo_status 0 1 }  { endTextStrm_3_V_write fifo_update 1 1 } } }
	outputData { ap_none {  { outputData in_data 0 64 }  { outputData_ap_vld in_vld 0 1 } } }
	outputData_out { ap_fifo {  { outputData_out_din fifo_data 1 64 }  { outputData_out_full_n fifo_status 0 1 }  { outputData_out_write fifo_update 1 1 } } }
}
