set moduleName aes256CbcDecryptKernel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {aes256CbcDecryptKernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0_0 int 512 regular {axi_master 0}  }
	{ gmem0_1 int 512 regular {axi_master 1}  }
	{ inputData int 64 regular {axi_slave 0}  }
	{ outputData int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0_0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "inputData","cData": "int512","bit_use": { "low": 0,"up": 511},"offset": { "type": "dynamic","port_name": "inputData","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 1073741923,"step" : 1}]}]}]} , 
 	{ "Name" : "gmem0_1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "outputData","cData": "int512","bit_use": { "low": 0,"up": 511},"offset": { "type": "dynamic","port_name": "outputData","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 1073741823,"step" : 1}]}]}]} , 
 	{ "Name" : "inputData", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "outputData", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 118
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ event_done sc_out sc_logic 1 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ event_start sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem0_1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem0_1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem0_1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem0_1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem0_1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_1_BUSER sc_in sc_lv 1 signal 1 } 
	{ stall_start_ext sc_out sc_logic 1 signal -1 } 
	{ stall_done_ext sc_out sc_logic 1 signal -1 } 
	{ stall_start_str sc_out sc_logic 1 signal -1 } 
	{ stall_done_str sc_out sc_logic 1 signal -1 } 
	{ stall_start_int sc_out sc_logic 1 signal -1 } 
	{ stall_done_int sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"aes256CbcDecryptKernel","role":"start","value":"0","valid_bit":"0"},{"name":"aes256CbcDecryptKernel","role":"continue","value":"0","valid_bit":"4"},{"name":"aes256CbcDecryptKernel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"inputData","role":"data","value":"16"},{"name":"outputData","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"aes256CbcDecryptKernel","role":"start","value":"0","valid_bit":"0"},{"name":"aes256CbcDecryptKernel","role":"done","value":"0","valid_bit":"1"},{"name":"aes256CbcDecryptKernel","role":"idle","value":"0","valid_bit":"2"},{"name":"aes256CbcDecryptKernel","role":"ready","value":"0","valid_bit":"3"},{"name":"aes256CbcDecryptKernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "event_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_done", "role": "default" }} , 
 	{ "name": "event_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_start", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0_0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0_0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem0_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "BUSER" }} , 
 	{ "name": "stall_start_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_ext", "role": "default" }} , 
 	{ "name": "stall_done_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_ext", "role": "default" }} , 
 	{ "name": "stall_start_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_str", "role": "default" }} , 
 	{ "name": "stall_done_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_str", "role": "default" }} , 
 	{ "name": "stall_start_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_int", "role": "default" }} , 
 	{ "name": "stall_done_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_int", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "14", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83"],
		"CDFG" : "aes256CbcDecryptKernel",
		"Protocol" : "ap_ctrl_chain",
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
			{"ID" : "4", "Name" : "scanMultiChannel_4u_256u_128u_104_U0"}],
		"OutputProcess" : [
			{"ID" : "50", "Name" : "writeOut_128u_U0"}],
		"Port" : [
			{"Name" : "gmem0_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "scanMultiChannel_4u_256u_128u_104_U0", "Port" : "gmem0_0"}]},
			{"Name" : "gmem0_1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "writeOut_128u_U0", "Port" : "gmem0_1"}]},
			{"Name" : "inputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "cipherModeProcess_4u_256u_U0", "Port" : "decipher_0_4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0", "Parent" : "0", "Child" : ["5", "7", "8", "9", "10", "11", "12", "13"],
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
			{"ID" : "5", "Name" : "readBlock_128u_4u_256u_107_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "readBlock_128u_4u_256u_107_U0"},
			{"ID" : "7", "Name" : "splitText_4u_256u_U0"}],
		"Port" : [
			{"Name" : "gmem0_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "gmem0_0"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "51", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "msgNumStrm"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "52", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "taskNumStrm"}]},
			{"Name" : "taskNumStrm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "53", "DependentChanDepth" : "64",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "taskNumStrm2"}]},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "54", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_V_V"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "55", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_1_V_V"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "56", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_2_V_V"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "57", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "IVStrm_3_V_V"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "58", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_V_V"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "59", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_1_V_V"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "60", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_2_V_V"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "61", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "cipherkeyStrm_3_V_V"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "62", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_V_V"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "63", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_1_V_V"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "64", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_2_V_V"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "65", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "textStrm_3_V_V"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "66", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_V"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "67", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_1_V"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "68", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_2_V"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "69", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "splitText_4u_256u_U0", "Port" : "endTextStrm_3_V"}]},
			{"Name" : "outputData", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputData_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "70", "DependentChanDepth" : "4",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "readBlock_128u_4u_256u_107_U0", "Port" : "outputData_out"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.readBlock_128u_4u_256u_107_U0", "Parent" : "4", "Child" : ["6"],
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
			{"Name" : "outputData_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "70", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "outputData_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "textBlkStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "8", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "51", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "9", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "52", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm1_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "10", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm1_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "53", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "11", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm_i_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "12", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyInStrm_i_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ptr", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.readBlock_128u_4u_256u_107_U0.mul_64ns_64ns_128_5_1_U1", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.splitText_4u_256u_U0", "Parent" : "4",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_splitText_4u_256u_U0_U",
		"Port" : [
			{"Name" : "textBlkStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "8", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "textBlkStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "9", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "10", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "11", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyInStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "12", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyInStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "62", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "63", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "64", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "65", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "textStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "66", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "67", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "68", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "69", "DependentChanDepth" : "65",
				"BlockSignal" : [
					{"Name" : "endTextStrm_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "54", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "55", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "56", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "57", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "IVStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "58", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "59", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "60", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "61", "DependentChanDepth" : "32",
				"BlockSignal" : [
					{"Name" : "cipherkeyStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.textBlkStrm_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.msgNumStrm1_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.taskNumStrm1_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.IVInStrm_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.cipherkeyInStrm_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scanMultiChannel_4u_256u_128u_104_U0.start_for_splitText_4u_256u_U0_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0", "Parent" : "0", "Child" : ["15"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_cipherModeProcess_4u_256u_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98"}],
		"Port" : [
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "53", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "IVStrm_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "54", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm"}]},
			{"Name" : "IVStrm_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "55", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm1"}]},
			{"Name" : "IVStrm_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "56", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm2"}]},
			{"Name" : "IVStrm_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "57", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "IVStrm3"}]},
			{"Name" : "cipherkeyStrm_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "58", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm"}]},
			{"Name" : "cipherkeyStrm_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "59", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm4"}]},
			{"Name" : "cipherkeyStrm_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "60", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm5"}]},
			{"Name" : "cipherkeyStrm_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "61", "DependentChanDepth" : "32",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "cipherkeyStrm6"}]},
			{"Name" : "textInStrm_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "62", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm"}]},
			{"Name" : "textInStrm_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "63", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm7"}]},
			{"Name" : "textInStrm_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "64", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm8"}]},
			{"Name" : "textInStrm_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "65", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textInStrm9"}]},
			{"Name" : "endTextInStrm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "66", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm"}]},
			{"Name" : "endTextInStrm_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "67", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm10"}]},
			{"Name" : "endTextInStrm_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "68", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm11"}]},
			{"Name" : "endTextInStrm_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "69", "DependentChanDepth" : "65",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextInStrm12"}]},
			{"Name" : "textOutStrm_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "71", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm"}]},
			{"Name" : "textOutStrm_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "72", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm13"}]},
			{"Name" : "textOutStrm_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "73", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm14"}]},
			{"Name" : "textOutStrm_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "74", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "textOutStrm15"}]},
			{"Name" : "endTextOutStrm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "75", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm"}]},
			{"Name" : "endTextOutStrm_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "76", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm16"}]},
			{"Name" : "endTextOutStrm_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "77", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm17"}]},
			{"Name" : "endTextOutStrm_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "78", "DependentChanDepth" : "128",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "endTextOutStrm18"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_cipherModeParallel_4u_256u_s_fu_98", "Port" : "decipher_0_4"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98", "Parent" : "14", "Child" : ["16", "17", "24", "31", "38", "45", "46", "47", "48"],
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
			{"ID" : "16", "Name" : "cipherModeParallel_4u_256u_entry98_U0"},
			{"ID" : "17", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "24", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "31", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "38", "Name" : "singleCipherMode_256u_78_U0"}],
		"OutputProcess" : [
			{"ID" : "17", "Name" : "singleCipherMode_256u_75_U0"},
			{"ID" : "24", "Name" : "singleCipherMode_256u_76_U0"},
			{"ID" : "31", "Name" : "singleCipherMode_256u_77_U0"},
			{"ID" : "38", "Name" : "singleCipherMode_256u_78_U0"}],
		"Port" : [
			{"Name" : "taskNum", "Type" : "None", "Direction" : "I"},
			{"Name" : "IVStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "IVStrm"}]},
			{"Name" : "IVStrm1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "IVStrm1"}]},
			{"Name" : "IVStrm2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "IVStrm2"}]},
			{"Name" : "IVStrm3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "IVStrm3"}]},
			{"Name" : "cipherkeyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "cipherkeyStrm"}]},
			{"Name" : "cipherkeyStrm4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "cipherkeyStrm4"}]},
			{"Name" : "cipherkeyStrm5", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "cipherkeyStrm5"}]},
			{"Name" : "cipherkeyStrm6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "cipherkeyStrm6"}]},
			{"Name" : "textInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textInStrm"}]},
			{"Name" : "textInStrm7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textInStrm7"}]},
			{"Name" : "textInStrm8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textInStrm8"}]},
			{"Name" : "textInStrm9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textInStrm9"}]},
			{"Name" : "endTextInStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextInStrm"}]},
			{"Name" : "endTextInStrm10", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextInStrm10"}]},
			{"Name" : "endTextInStrm11", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextInStrm11"}]},
			{"Name" : "endTextInStrm12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextInStrm12"}]},
			{"Name" : "textOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "textOutStrm"}]},
			{"Name" : "textOutStrm13", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "textOutStrm13"}]},
			{"Name" : "textOutStrm14", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "textOutStrm14"}]},
			{"Name" : "textOutStrm15", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "textOutStrm15"}]},
			{"Name" : "endTextOutStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "endTextOutStrm"}]},
			{"Name" : "endTextOutStrm16", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "endTextOutStrm16"}]},
			{"Name" : "endTextOutStrm17", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "endTextOutStrm17"}]},
			{"Name" : "endTextOutStrm18", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "endTextOutStrm18"}]},
			{"Name" : "decipher_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_3"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_3"},
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_3"},
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_496"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_497"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_497"},
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_497"},
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "singleCipherMode_256u_75_U0", "Port" : "decipher_0_2"},
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_2"},
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_2"},
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_2"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "singleCipherMode_256u_76_U0", "Port" : "decipher_0_495"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "singleCipherMode_256u_77_U0", "Port" : "decipher_0_494"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "singleCipherMode_256u_78_U0", "Port" : "decipher_0_4"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.cipherModeParallel_4u_256u_entry98_U0", "Parent" : "15",
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
			{"Name" : "taskNum_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "45", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "46", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "47", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNum_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "48", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "taskNum_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0", "Parent" : "15", "Child" : ["18", "19", "22"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "45", "DependentChanDepth" : "2",
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
					{"ID" : "22", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.decipher_0_496_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167", "Parent" : "17", "Child" : ["20", "21"],
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
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_updateKey_fu_192", "Parent" : "17", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_75_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0", "Parent" : "15", "Child" : ["25", "26", "29"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "46", "DependentChanDepth" : "2",
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
					{"ID" : "29", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_495", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.decipher_0_495_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167", "Parent" : "24", "Child" : ["27", "28"],
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
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_updateKey_fu_192", "Parent" : "24", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_76_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0", "Parent" : "15", "Child" : ["32", "33", "36"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "47", "DependentChanDepth" : "2",
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
					{"ID" : "36", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.decipher_0_494_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167", "Parent" : "31", "Child" : ["34", "35"],
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
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_updateKey_fu_192", "Parent" : "31", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_77_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0", "Parent" : "15", "Child" : ["39", "40", "43"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "48", "DependentChanDepth" : "2",
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
					{"ID" : "43", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.decipher_0_4_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167", "Parent" : "38", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_updateKey_fu_192", "Parent" : "38", "Child" : ["44"],
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
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.singleCipherMode_256u_78_U0.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c_U", "Parent" : "15"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c77_U", "Parent" : "15"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c78_U", "Parent" : "15"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.cipherModeProcess_4u_256u_U0.grp_cipherModeParallel_4u_256u_s_fu_98.taskNum_c79_U", "Parent" : "15"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeResult_128u_4u_U0", "Parent" : "0",
		"CDFG" : "mergeResult_128u_4u_s",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_mergeResult_128u_4u_U0_U",
		"Port" : [
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "51", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "52", "DependentChanDepth" : "64",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "79", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "outStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "burstLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "80", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "burstLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "71", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "72", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "73", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "74", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "75", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "76", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "77", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "78", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.writeOut_128u_U0", "Parent" : "0",
		"CDFG" : "writeOut_128u_s",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_writeOut_128u_U0_U",
		"Port" : [
			{"Name" : "burstLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "80", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "burstLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blockStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "79", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "blockStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0_1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ptr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "70", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ptr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.msgNumStrm_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNumStrm_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taskNumStrm2_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVStrm_0_V_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVStrm_1_V_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVStrm_2_V_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IVStrm_3_V_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyStrm_0_V_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyStrm_1_V_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyStrm_2_V_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipherkeyStrm_3_V_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textInStrm_0_V_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textInStrm_1_V_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textInStrm_2_V_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textInStrm_3_V_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextInStrm_0_V_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextInStrm_1_V_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextInStrm_2_V_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextInStrm_3_V_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputData_c_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textOutStrm_0_V_V_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textOutStrm_1_V_V_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textOutStrm_2_V_V_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.textOutStrm_3_V_V_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextOutStrm_0_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextOutStrm_1_V_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextOutStrm_2_V_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.endTextOutStrm_3_V_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outStrm_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.burstLenStrm_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_cipherModeProcess_4u_256u_U0_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_mergeResult_128u_4u_U0_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_writeOut_128u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes256CbcDecryptKernel {
		gmem0_0 {Type I LastRead 149 FirstWrite -1}
		gmem0_1 {Type O LastRead 4 FirstWrite 5}
		inputData {Type I LastRead 0 FirstWrite -1}
		outputData {Type I LastRead 0 FirstWrite -1}
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}
		decipher_0_496 {Type I LastRead -1 FirstWrite -1}
		decipher_0_497 {Type I LastRead -1 FirstWrite -1}
		decipher_0_2 {Type I LastRead -1 FirstWrite -1}
		decipher_0_495 {Type I LastRead -1 FirstWrite -1}
		decipher_0_494 {Type I LastRead -1 FirstWrite -1}
		decipher_0_4 {Type I LastRead -1 FirstWrite -1}}
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
		cipherkeyStrm_3_V_V {Type O LastRead -1 FirstWrite 3}}
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
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}
	mergeResult_128u_4u_s {
		msgNumStrm {Type I LastRead 0 FirstWrite -1}
		taskNumStrm {Type I LastRead 0 FirstWrite -1}
		outStrm {Type O LastRead -1 FirstWrite 4}
		burstLenStrm {Type O LastRead -1 FirstWrite 2}
		textStrm_V_V {Type I LastRead 4 FirstWrite -1}
		textStrm_1_V_V {Type I LastRead 4 FirstWrite -1}
		textStrm_2_V_V {Type I LastRead 4 FirstWrite -1}
		textStrm_3_V_V {Type I LastRead 4 FirstWrite -1}
		endTextStrm_V {Type I LastRead 4 FirstWrite -1}
		endTextStrm_1_V {Type I LastRead 4 FirstWrite -1}
		endTextStrm_2_V {Type I LastRead 4 FirstWrite -1}
		endTextStrm_3_V {Type I LastRead 4 FirstWrite -1}}
	writeOut_128u_s {
		burstLenStrm {Type I LastRead 71 FirstWrite -1}
		blockStrm {Type I LastRead 4 FirstWrite -1}
		gmem0_1 {Type O LastRead 4 FirstWrite 5}
		ptr {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0_0 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN LEN 1 8 }  { m_axi_gmem0_0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_0_AWBURST BURST 1 2 }  { m_axi_gmem0_0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_0_AWPROT PROT 1 3 }  { m_axi_gmem0_0_AWQOS QOS 1 4 }  { m_axi_gmem0_0_AWREGION REGION 1 4 }  { m_axi_gmem0_0_AWUSER USER 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA DATA 1 512 }  { m_axi_gmem0_0_WSTRB STRB 1 64 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER USER 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN LEN 1 8 }  { m_axi_gmem0_0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_0_ARBURST BURST 1 2 }  { m_axi_gmem0_0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_0_ARPROT PROT 1 3 }  { m_axi_gmem0_0_ARQOS QOS 1 4 }  { m_axi_gmem0_0_ARREGION REGION 1 4 }  { m_axi_gmem0_0_ARUSER USER 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA DATA 0 512 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RUSER USER 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER USER 0 1 } } }
	gmem0_1 { m_axi {  { m_axi_gmem0_1_AWVALID VALID 1 1 }  { m_axi_gmem0_1_AWREADY READY 0 1 }  { m_axi_gmem0_1_AWADDR ADDR 1 64 }  { m_axi_gmem0_1_AWID ID 1 1 }  { m_axi_gmem0_1_AWLEN LEN 1 8 }  { m_axi_gmem0_1_AWSIZE SIZE 1 3 }  { m_axi_gmem0_1_AWBURST BURST 1 2 }  { m_axi_gmem0_1_AWLOCK LOCK 1 2 }  { m_axi_gmem0_1_AWCACHE CACHE 1 4 }  { m_axi_gmem0_1_AWPROT PROT 1 3 }  { m_axi_gmem0_1_AWQOS QOS 1 4 }  { m_axi_gmem0_1_AWREGION REGION 1 4 }  { m_axi_gmem0_1_AWUSER USER 1 1 }  { m_axi_gmem0_1_WVALID VALID 1 1 }  { m_axi_gmem0_1_WREADY READY 0 1 }  { m_axi_gmem0_1_WDATA DATA 1 512 }  { m_axi_gmem0_1_WSTRB STRB 1 64 }  { m_axi_gmem0_1_WLAST LAST 1 1 }  { m_axi_gmem0_1_WID ID 1 1 }  { m_axi_gmem0_1_WUSER USER 1 1 }  { m_axi_gmem0_1_ARVALID VALID 1 1 }  { m_axi_gmem0_1_ARREADY READY 0 1 }  { m_axi_gmem0_1_ARADDR ADDR 1 64 }  { m_axi_gmem0_1_ARID ID 1 1 }  { m_axi_gmem0_1_ARLEN LEN 1 8 }  { m_axi_gmem0_1_ARSIZE SIZE 1 3 }  { m_axi_gmem0_1_ARBURST BURST 1 2 }  { m_axi_gmem0_1_ARLOCK LOCK 1 2 }  { m_axi_gmem0_1_ARCACHE CACHE 1 4 }  { m_axi_gmem0_1_ARPROT PROT 1 3 }  { m_axi_gmem0_1_ARQOS QOS 1 4 }  { m_axi_gmem0_1_ARREGION REGION 1 4 }  { m_axi_gmem0_1_ARUSER USER 1 1 }  { m_axi_gmem0_1_RVALID VALID 0 1 }  { m_axi_gmem0_1_RREADY READY 1 1 }  { m_axi_gmem0_1_RDATA DATA 0 512 }  { m_axi_gmem0_1_RLAST LAST 0 1 }  { m_axi_gmem0_1_RID ID 0 1 }  { m_axi_gmem0_1_RUSER USER 0 1 }  { m_axi_gmem0_1_RRESP RESP 0 2 }  { m_axi_gmem0_1_BVALID VALID 0 1 }  { m_axi_gmem0_1_BREADY READY 1 1 }  { m_axi_gmem0_1_BRESP RESP 0 2 }  { m_axi_gmem0_1_BID ID 0 1 }  { m_axi_gmem0_1_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmem0_0 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 } } \
	{ gmem0_1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0_0 64 }
	{ gmem0_1 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0_0 64 }
	{ gmem0_1 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
