set moduleName readBlock_128u_4u_256u_107
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
set C_modelName {readBlock<128u, 4u, 256u>107}
set C_modelType { void 0 }
set C_modelArgList {
	{ outputData int 64 regular  }
	{ outputData_out int 64 regular {fifo 1}  }
	{ gmem0_0 int 512 regular {axi_master 0}  }
	{ textBlkStrm_i_i int 512 regular {fifo 1 volatile }  }
	{ msgNumStrm int 64 regular {fifo 1 volatile }  }
	{ msgNumStrm1_i_i int 64 regular {fifo 1 volatile }  }
	{ taskNumStrm int 64 regular {fifo 1 volatile }  }
	{ taskNumStrm1_i_i int 64 regular {fifo 1 volatile }  }
	{ taskNumStrm2 int 64 regular {fifo 1 volatile }  }
	{ IVInStrm_i_i int 128 regular {fifo 1 volatile }  }
	{ cipherkeyInStrm_i_i int 256 regular {fifo 1 volatile }  }
	{ ptr int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outputData", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outputData_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem0_0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "textBlkStrm_i_i", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "msgNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "msgNumStrm1_i_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskNumStrm1_i_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "taskNumStrm2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "IVInStrm_i_i", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cipherkeyInStrm_i_i", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ptr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 87
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ outputData sc_in sc_lv 64 signal 0 } 
	{ outputData_out_din sc_out sc_lv 64 signal 1 } 
	{ outputData_out_full_n sc_in sc_logic 1 signal 1 } 
	{ outputData_out_write sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ textBlkStrm_i_i_din sc_out sc_lv 512 signal 3 } 
	{ textBlkStrm_i_i_full_n sc_in sc_logic 1 signal 3 } 
	{ textBlkStrm_i_i_write sc_out sc_logic 1 signal 3 } 
	{ msgNumStrm_din sc_out sc_lv 64 signal 4 } 
	{ msgNumStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ msgNumStrm_write sc_out sc_logic 1 signal 4 } 
	{ msgNumStrm1_i_i_din sc_out sc_lv 64 signal 5 } 
	{ msgNumStrm1_i_i_full_n sc_in sc_logic 1 signal 5 } 
	{ msgNumStrm1_i_i_write sc_out sc_logic 1 signal 5 } 
	{ taskNumStrm_din sc_out sc_lv 64 signal 6 } 
	{ taskNumStrm_full_n sc_in sc_logic 1 signal 6 } 
	{ taskNumStrm_write sc_out sc_logic 1 signal 6 } 
	{ taskNumStrm1_i_i_din sc_out sc_lv 64 signal 7 } 
	{ taskNumStrm1_i_i_full_n sc_in sc_logic 1 signal 7 } 
	{ taskNumStrm1_i_i_write sc_out sc_logic 1 signal 7 } 
	{ taskNumStrm2_din sc_out sc_lv 64 signal 8 } 
	{ taskNumStrm2_full_n sc_in sc_logic 1 signal 8 } 
	{ taskNumStrm2_write sc_out sc_logic 1 signal 8 } 
	{ IVInStrm_i_i_din sc_out sc_lv 128 signal 9 } 
	{ IVInStrm_i_i_full_n sc_in sc_logic 1 signal 9 } 
	{ IVInStrm_i_i_write sc_out sc_logic 1 signal 9 } 
	{ cipherkeyInStrm_i_i_din sc_out sc_lv 256 signal 10 } 
	{ cipherkeyInStrm_i_i_full_n sc_in sc_logic 1 signal 10 } 
	{ cipherkeyInStrm_i_i_write sc_out sc_logic 1 signal 10 } 
	{ ptr sc_in sc_lv 64 signal 11 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "outputData", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputData", "role": "default" }} , 
 	{ "name": "outputData_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputData_out", "role": "din" }} , 
 	{ "name": "outputData_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputData_out", "role": "full_n" }} , 
 	{ "name": "outputData_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputData_out", "role": "write" }} , 
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
 	{ "name": "textBlkStrm_i_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "textBlkStrm_i_i", "role": "din" }} , 
 	{ "name": "textBlkStrm_i_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textBlkStrm_i_i", "role": "full_n" }} , 
 	{ "name": "textBlkStrm_i_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textBlkStrm_i_i", "role": "write" }} , 
 	{ "name": "msgNumStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "din" }} , 
 	{ "name": "msgNumStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "full_n" }} , 
 	{ "name": "msgNumStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "write" }} , 
 	{ "name": "msgNumStrm1_i_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgNumStrm1_i_i", "role": "din" }} , 
 	{ "name": "msgNumStrm1_i_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm1_i_i", "role": "full_n" }} , 
 	{ "name": "msgNumStrm1_i_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm1_i_i", "role": "write" }} , 
 	{ "name": "taskNumStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "din" }} , 
 	{ "name": "taskNumStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "full_n" }} , 
 	{ "name": "taskNumStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "write" }} , 
 	{ "name": "taskNumStrm1_i_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm1_i_i", "role": "din" }} , 
 	{ "name": "taskNumStrm1_i_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm1_i_i", "role": "full_n" }} , 
 	{ "name": "taskNumStrm1_i_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm1_i_i", "role": "write" }} , 
 	{ "name": "taskNumStrm2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "din" }} , 
 	{ "name": "taskNumStrm2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "full_n" }} , 
 	{ "name": "taskNumStrm2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm2", "role": "write" }} , 
 	{ "name": "IVInStrm_i_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVInStrm_i_i", "role": "din" }} , 
 	{ "name": "IVInStrm_i_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVInStrm_i_i", "role": "full_n" }} , 
 	{ "name": "IVInStrm_i_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVInStrm_i_i", "role": "write" }} , 
 	{ "name": "cipherkeyInStrm_i_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyInStrm_i_i", "role": "din" }} , 
 	{ "name": "cipherkeyInStrm_i_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyInStrm_i_i", "role": "full_n" }} , 
 	{ "name": "cipherkeyInStrm_i_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyInStrm_i_i", "role": "write" }} , 
 	{ "name": "ptr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ptr", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
			{"Name" : "textBlkStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_5_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		ptr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	outputData { ap_none {  { outputData in_data 0 64 } } }
	outputData_out { ap_fifo {  { outputData_out_din fifo_data 1 64 }  { outputData_out_full_n fifo_status 0 1 }  { outputData_out_write fifo_update 1 1 } } }
	gmem0_0 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN LEN 1 32 }  { m_axi_gmem0_0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_0_AWBURST BURST 1 2 }  { m_axi_gmem0_0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_0_AWPROT PROT 1 3 }  { m_axi_gmem0_0_AWQOS QOS 1 4 }  { m_axi_gmem0_0_AWREGION REGION 1 4 }  { m_axi_gmem0_0_AWUSER USER 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA DATA 1 512 }  { m_axi_gmem0_0_WSTRB STRB 1 64 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER USER 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN LEN 1 32 }  { m_axi_gmem0_0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_0_ARBURST BURST 1 2 }  { m_axi_gmem0_0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_0_ARPROT PROT 1 3 }  { m_axi_gmem0_0_ARQOS QOS 1 4 }  { m_axi_gmem0_0_ARREGION REGION 1 4 }  { m_axi_gmem0_0_ARUSER USER 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA DATA 0 512 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RUSER USER 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER USER 0 1 } } }
	textBlkStrm_i_i { ap_fifo {  { textBlkStrm_i_i_din fifo_data 1 512 }  { textBlkStrm_i_i_full_n fifo_status 0 1 }  { textBlkStrm_i_i_write fifo_update 1 1 } } }
	msgNumStrm { ap_fifo {  { msgNumStrm_din fifo_data 1 64 }  { msgNumStrm_full_n fifo_status 0 1 }  { msgNumStrm_write fifo_update 1 1 } } }
	msgNumStrm1_i_i { ap_fifo {  { msgNumStrm1_i_i_din fifo_data 1 64 }  { msgNumStrm1_i_i_full_n fifo_status 0 1 }  { msgNumStrm1_i_i_write fifo_update 1 1 } } }
	taskNumStrm { ap_fifo {  { taskNumStrm_din fifo_data 1 64 }  { taskNumStrm_full_n fifo_status 0 1 }  { taskNumStrm_write fifo_update 1 1 } } }
	taskNumStrm1_i_i { ap_fifo {  { taskNumStrm1_i_i_din fifo_data 1 64 }  { taskNumStrm1_i_i_full_n fifo_status 0 1 }  { taskNumStrm1_i_i_write fifo_update 1 1 } } }
	taskNumStrm2 { ap_fifo {  { taskNumStrm2_din fifo_data 1 64 }  { taskNumStrm2_full_n fifo_status 0 1 }  { taskNumStrm2_write fifo_update 1 1 } } }
	IVInStrm_i_i { ap_fifo {  { IVInStrm_i_i_din fifo_data 1 128 }  { IVInStrm_i_i_full_n fifo_status 0 1 }  { IVInStrm_i_i_write fifo_update 1 1 } } }
	cipherkeyInStrm_i_i { ap_fifo {  { cipherkeyInStrm_i_i_din fifo_data 1 256 }  { cipherkeyInStrm_i_i_full_n fifo_status 0 1 }  { cipherkeyInStrm_i_i_write fifo_update 1 1 } } }
	ptr { ap_none {  { ptr in_data 0 64 } } }
}
