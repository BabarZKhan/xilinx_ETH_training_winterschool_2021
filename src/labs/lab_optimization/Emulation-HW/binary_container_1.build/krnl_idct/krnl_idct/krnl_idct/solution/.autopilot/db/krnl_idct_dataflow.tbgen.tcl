set moduleName krnl_idct_dataflow
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
set C_modelName {krnl_idct_dataflow}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 512 regular {axi_master 0}  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ block_r int 64 regular  }
	{ q int 64 regular  }
	{ voutp int 64 regular  }
	{ ignore_dc int 32 regular  }
	{ blocks int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "block_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "voutp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ignore_dc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "blocks", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ block_r sc_in sc_lv 64 signal 3 } 
	{ q sc_in sc_lv 64 signal 4 } 
	{ voutp sc_in sc_lv 64 signal 5 } 
	{ ignore_dc sc_in sc_lv 32 signal 6 } 
	{ blocks sc_in sc_lv 32 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ block_r_ap_vld sc_in sc_logic 1 invld 3 } 
	{ q_ap_vld sc_in sc_logic 1 invld 4 } 
	{ voutp_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ignore_dc_ap_vld sc_in sc_logic 1 invld 6 } 
	{ blocks_ap_vld sc_in sc_logic 1 invld 7 } 
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
	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "block_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "block_r", "role": "default" }} , 
 	{ "name": "q", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "default" }} , 
 	{ "name": "voutp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "voutp", "role": "default" }} , 
 	{ "name": "ignore_dc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ignore_dc", "role": "default" }} , 
 	{ "name": "blocks", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blocks", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "block_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "block_r", "role": "ap_vld" }} , 
 	{ "name": "q_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "q", "role": "ap_vld" }} , 
 	{ "name": "voutp_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "voutp", "role": "ap_vld" }} , 
 	{ "name": "ignore_dc_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ignore_dc", "role": "ap_vld" }} , 
 	{ "name": "blocks_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "blocks", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259"],
		"CDFG" : "krnl_idct_dataflow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2144", "EstimateLatencyMax" : "2214",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "krnl_idct_dataflow_entry6_U0"},
			{"ID" : "2", "Name" : "read_blocks_ap_uint_512_U0"},
			{"ID" : "3", "Name" : "read_blocks_ap_int_512_U0"}],
		"OutputProcess" : [
			{"ID" : "246", "Name" : "write_blocks_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "read_blocks_ap_int_512_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_blocks_ap_uint_512_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "write_blocks_U0", "Port" : "gmem2"}]},
			{"Name" : "block_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "None", "Direction" : "I"},
			{"Name" : "voutp", "Type" : "None", "Direction" : "I"},
			{"Name" : "ignore_dc", "Type" : "None", "Direction" : "I"},
			{"Name" : "blocks", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_idct_dataflow_entry6_U0", "Parent" : "0",
		"CDFG" : "krnl_idct_dataflow_entry6",
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
			{"Name" : "block_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "None", "Direction" : "I"},
			{"Name" : "voutp", "Type" : "None", "Direction" : "I"},
			{"Name" : "ignore_dc", "Type" : "None", "Direction" : "I"},
			{"Name" : "blocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "247", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "block_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "248", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "q_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voutp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "249", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "voutp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ignore_dc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "250", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ignore_dc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "251", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "blocks_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "252", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "blocks_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_blocks_ap_uint_512_U0", "Parent" : "0",
		"CDFG" : "read_blocks_ap_uint_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "iq4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "253", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "iq4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "248", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_blocks_ap_int_512_U0", "Parent" : "0",
		"CDFG" : "read_blocks_ap_int_512_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "254", "DependentChanDepth" : "512",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "block_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "247", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "block_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "251", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "blocks_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_idct_dataflow_Block_split25_proc_U0", "Parent" : "0",
		"CDFG" : "krnl_idct_dataflow_Block_split25_proc",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_krnl_idct_dataflow_Block_split25_proc_U0_U",
		"Port" : [
			{"Name" : "ignore_dc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "250", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ignore_dc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.execute_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2071", "EstimateLatencyMax" : "2071",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "iblock", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "254", "DependentChanDepth" : "512",
				"BlockSignal" : [
					{"Name" : "iblock_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iq", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "253", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "iq_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ivoutp", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "256", "DependentChanDepth" : "512",
				"BlockSignal" : [
					{"Name" : "ivoutp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ignore_dc", "Type" : "None", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "255", "DependentChanDepth" : "2"},
			{"Name" : "blocks", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "252", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "blocks_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "246", "DependentChan" : "257", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "blocks_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U20", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U21", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U22", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U23", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U24", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U25", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U26", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U27", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U28", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U29", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U30", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U31", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U32", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U33", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U34", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U35", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U36", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U37", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U38", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U39", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U40", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U41", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U42", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U43", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U44", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U45", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U46", "Parent" : "5"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U47", "Parent" : "5"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U48", "Parent" : "5"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U49", "Parent" : "5"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U50", "Parent" : "5"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U51", "Parent" : "5"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U52", "Parent" : "5"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U53", "Parent" : "5"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U54", "Parent" : "5"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U55", "Parent" : "5"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U56", "Parent" : "5"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U57", "Parent" : "5"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U58", "Parent" : "5"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U59", "Parent" : "5"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U60", "Parent" : "5"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U61", "Parent" : "5"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U62", "Parent" : "5"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U63", "Parent" : "5"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U64", "Parent" : "5"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U65", "Parent" : "5"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U66", "Parent" : "5"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U67", "Parent" : "5"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U68", "Parent" : "5"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U69", "Parent" : "5"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U70", "Parent" : "5"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U71", "Parent" : "5"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U72", "Parent" : "5"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U73", "Parent" : "5"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U74", "Parent" : "5"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U75", "Parent" : "5"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U76", "Parent" : "5"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11ns_32s_32_2_1_U77", "Parent" : "5"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U78", "Parent" : "5"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U79", "Parent" : "5"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13ns_32s_32_2_1_U80", "Parent" : "5"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_11s_32s_32_2_1_U81", "Parent" : "5"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U82", "Parent" : "5"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U83", "Parent" : "5"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_13s_32s_32_2_1_U84", "Parent" : "5"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_12ns_32s_32_2_1_U85", "Parent" : "5"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U86", "Parent" : "5"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U87", "Parent" : "5"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U88", "Parent" : "5"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U89", "Parent" : "5"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U90", "Parent" : "5"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U91", "Parent" : "5"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U92", "Parent" : "5"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U93", "Parent" : "5"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U94", "Parent" : "5"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U95", "Parent" : "5"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U96", "Parent" : "5"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U97", "Parent" : "5"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U98", "Parent" : "5"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U99", "Parent" : "5"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U100", "Parent" : "5"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_32s_32_2_1_U101", "Parent" : "5"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U102", "Parent" : "5"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U103", "Parent" : "5"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U104", "Parent" : "5"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U105", "Parent" : "5"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U106", "Parent" : "5"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U107", "Parent" : "5"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U108", "Parent" : "5"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U109", "Parent" : "5"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U110", "Parent" : "5"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U111", "Parent" : "5"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U112", "Parent" : "5"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U113", "Parent" : "5"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U114", "Parent" : "5"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U115", "Parent" : "5"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U116", "Parent" : "5"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_9ns_31s_32_2_1_U117", "Parent" : "5"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16s_16s_16_4_1_U118", "Parent" : "5"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U119", "Parent" : "5"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U120", "Parent" : "5"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U121", "Parent" : "5"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U122", "Parent" : "5"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U123", "Parent" : "5"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U124", "Parent" : "5"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U125", "Parent" : "5"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U126", "Parent" : "5"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U127", "Parent" : "5"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U128", "Parent" : "5"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U129", "Parent" : "5"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U130", "Parent" : "5"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U131", "Parent" : "5"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U132", "Parent" : "5"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U133", "Parent" : "5"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U134", "Parent" : "5"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U135", "Parent" : "5"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U136", "Parent" : "5"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U137", "Parent" : "5"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U138", "Parent" : "5"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U139", "Parent" : "5"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U140", "Parent" : "5"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U141", "Parent" : "5"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U142", "Parent" : "5"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U143", "Parent" : "5"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U144", "Parent" : "5"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U145", "Parent" : "5"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U146", "Parent" : "5"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U147", "Parent" : "5"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U148", "Parent" : "5"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U149", "Parent" : "5"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16s_16s_16_4_1_U150", "Parent" : "5"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U151", "Parent" : "5"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U152", "Parent" : "5"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U153", "Parent" : "5"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U154", "Parent" : "5"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U155", "Parent" : "5"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U156", "Parent" : "5"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U157", "Parent" : "5"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U158", "Parent" : "5"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U159", "Parent" : "5"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U160", "Parent" : "5"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U161", "Parent" : "5"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U162", "Parent" : "5"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U163", "Parent" : "5"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U164", "Parent" : "5"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U165", "Parent" : "5"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U166", "Parent" : "5"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U167", "Parent" : "5"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U168", "Parent" : "5"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U169", "Parent" : "5"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U170", "Parent" : "5"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U171", "Parent" : "5"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U172", "Parent" : "5"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U173", "Parent" : "5"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U174", "Parent" : "5"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_21_4_1_U175", "Parent" : "5"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U176", "Parent" : "5"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U177", "Parent" : "5"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U178", "Parent" : "5"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U179", "Parent" : "5"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U180", "Parent" : "5"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mul_mul_16ns_16s_32_4_1_U181", "Parent" : "5"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_27s_27s_12ns_27_4_1_U182", "Parent" : "5"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_27s_27s_27_4_1_U183", "Parent" : "5"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_27s_27s_27_4_1_U184", "Parent" : "5"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_27s_27s_12ns_27_4_1_U185", "Parent" : "5"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_27s_27s_27_4_1_U186", "Parent" : "5"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_27s_27s_27_4_1_U187", "Parent" : "5"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U188", "Parent" : "5"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U189", "Parent" : "5"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U190", "Parent" : "5"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U191", "Parent" : "5"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U192", "Parent" : "5"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U193", "Parent" : "5"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U194", "Parent" : "5"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U195", "Parent" : "5"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U196", "Parent" : "5"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U197", "Parent" : "5"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U198", "Parent" : "5"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U199", "Parent" : "5"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U200", "Parent" : "5"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U201", "Parent" : "5"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U202", "Parent" : "5"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U203", "Parent" : "5"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U204", "Parent" : "5"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U205", "Parent" : "5"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U206", "Parent" : "5"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U207", "Parent" : "5"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U208", "Parent" : "5"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U209", "Parent" : "5"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U210", "Parent" : "5"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U211", "Parent" : "5"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U212", "Parent" : "5"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U213", "Parent" : "5"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U214", "Parent" : "5"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U215", "Parent" : "5"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U216", "Parent" : "5"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U217", "Parent" : "5"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U218", "Parent" : "5"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U219", "Parent" : "5"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U220", "Parent" : "5"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U221", "Parent" : "5"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U222", "Parent" : "5"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U223", "Parent" : "5"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U224", "Parent" : "5"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U225", "Parent" : "5"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U226", "Parent" : "5"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U227", "Parent" : "5"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U228", "Parent" : "5"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U229", "Parent" : "5"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U230", "Parent" : "5"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_11ns_4ns_32_4_1_U231", "Parent" : "5"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.am_addmul_24s_24s_13ns_32_4_1_U232", "Parent" : "5"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.ama_addmuladd_24s_24s_12ns_4ns_30_4_1_U233", "Parent" : "5"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U234", "Parent" : "5"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U235", "Parent" : "5"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U236", "Parent" : "5"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U237", "Parent" : "5"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U238", "Parent" : "5"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U239", "Parent" : "5"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U240", "Parent" : "5"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U241", "Parent" : "5"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U242", "Parent" : "5"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U243", "Parent" : "5"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U244", "Parent" : "5"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U245", "Parent" : "5"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U246", "Parent" : "5"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U247", "Parent" : "5"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13ns_24s_32s_32_4_1_U248", "Parent" : "5"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32s_32_4_1_U249", "Parent" : "5"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_11s_24s_32ns_32_4_1_U250", "Parent" : "5"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_32ns_32_4_1_U251", "Parent" : "5"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U252", "Parent" : "5"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U253", "Parent" : "5"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U254", "Parent" : "5"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U255", "Parent" : "5"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U256", "Parent" : "5"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U257", "Parent" : "5"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_13s_24s_30s_30_4_1_U258", "Parent" : "5"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.execute_U0.mac_muladd_12ns_24s_30s_30_4_1_U259", "Parent" : "5"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_blocks_U0", "Parent" : "0",
		"CDFG" : "write_blocks",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2119",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_write_blocks_U0_U",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "256", "DependentChanDepth" : "512",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voutp", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "249", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "voutp_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "257", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "blocks_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_c_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_c_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.voutp_c_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ignore_dc_c_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blocks_c_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blocks_c13_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iq_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iblock_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.icmp_ln331_loc_channel_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ivoutp_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blocks_c14_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_krnl_idct_dataflow_Block_split25_proc_U0_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_blocks_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_idct_dataflow {
		gmem0 {Type I LastRead 72 FirstWrite -1}
		gmem1 {Type I LastRead 72 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 4}
		block_r {Type I LastRead 0 FirstWrite -1}
		q {Type I LastRead 0 FirstWrite -1}
		voutp {Type I LastRead 0 FirstWrite -1}
		ignore_dc {Type I LastRead 0 FirstWrite -1}
		blocks {Type I LastRead 0 FirstWrite -1}}
	krnl_idct_dataflow_entry6 {
		block_r {Type I LastRead 0 FirstWrite -1}
		q {Type I LastRead 0 FirstWrite -1}
		voutp {Type I LastRead 0 FirstWrite -1}
		ignore_dc {Type I LastRead 0 FirstWrite -1}
		blocks {Type I LastRead 0 FirstWrite -1}
		block_out {Type O LastRead -1 FirstWrite 0}
		q_out {Type O LastRead -1 FirstWrite 0}
		voutp_out {Type O LastRead -1 FirstWrite 0}
		ignore_dc_out {Type O LastRead -1 FirstWrite 0}
		blocks_out {Type O LastRead -1 FirstWrite 0}
		blocks_out1 {Type O LastRead -1 FirstWrite 0}}
	read_blocks_ap_uint_512_s {
		gmem1 {Type I LastRead 72 FirstWrite -1}
		iq4 {Type O LastRead -1 FirstWrite 73}
		in_r {Type I LastRead 0 FirstWrite -1}}
	read_blocks_ap_int_512_s {
		gmem0 {Type I LastRead 72 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 73}
		block_r {Type I LastRead 0 FirstWrite -1}
		blocks {Type I LastRead 0 FirstWrite -1}}
	krnl_idct_dataflow_Block_split25_proc {
		ignore_dc {Type I LastRead 0 FirstWrite -1}}
	execute {
		iblock {Type I LastRead 4 FirstWrite -1}
		iq {Type I LastRead 3 FirstWrite -1}
		ivoutp {Type O LastRead -1 FirstWrite 23}
		ignore_dc {Type I LastRead 0 FirstWrite -1}
		blocks {Type I LastRead 0 FirstWrite -1}
		blocks_out {Type O LastRead -1 FirstWrite 0}}
	write_blocks {
		gmem2 {Type O LastRead 3 FirstWrite 4}
		in_r {Type I LastRead 3 FirstWrite -1}
		voutp {Type I LastRead 0 FirstWrite -1}
		blocks {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2144", "Max" : "2214"}
	, {"Name" : "Interval", "Min" : "2072", "Max" : "2122"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 32 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 32 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 32 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 32 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN LEN 1 32 }  { m_axi_gmem2_AWSIZE SIZE 1 3 }  { m_axi_gmem2_AWBURST BURST 1 2 }  { m_axi_gmem2_AWLOCK LOCK 1 2 }  { m_axi_gmem2_AWCACHE CACHE 1 4 }  { m_axi_gmem2_AWPROT PROT 1 3 }  { m_axi_gmem2_AWQOS QOS 1 4 }  { m_axi_gmem2_AWREGION REGION 1 4 }  { m_axi_gmem2_AWUSER USER 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA DATA 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER USER 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN LEN 1 32 }  { m_axi_gmem2_ARSIZE SIZE 1 3 }  { m_axi_gmem2_ARBURST BURST 1 2 }  { m_axi_gmem2_ARLOCK LOCK 1 2 }  { m_axi_gmem2_ARCACHE CACHE 1 4 }  { m_axi_gmem2_ARPROT PROT 1 3 }  { m_axi_gmem2_ARQOS QOS 1 4 }  { m_axi_gmem2_ARREGION REGION 1 4 }  { m_axi_gmem2_ARUSER USER 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA DATA 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER USER 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER USER 0 1 } } }
	block_r { ap_none {  { block_r in_data 0 64 }  { block_r_ap_vld in_vld 0 1 } } }
	q { ap_none {  { q in_data 0 64 }  { q_ap_vld in_vld 0 1 } } }
	voutp { ap_none {  { voutp in_data 0 64 }  { voutp_ap_vld in_vld 0 1 } } }
	ignore_dc { ap_none {  { ignore_dc in_data 0 32 }  { ignore_dc_ap_vld in_vld 0 1 } } }
	blocks { ap_none {  { blocks in_data 0 32 }  { blocks_ap_vld in_vld 0 1 } } }
}
