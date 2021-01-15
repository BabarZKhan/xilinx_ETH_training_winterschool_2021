set moduleName writeOut_128u_s
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
set C_modelName {writeOut<128u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ burstLenStrm int 32 regular {fifo 0 volatile }  }
	{ blockStrm int 512 regular {fifo 0 volatile }  }
	{ gmem0_1 int 512 regular {axi_master 1}  }
	{ ptr int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "burstLenStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "blockStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0_1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ptr", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ burstLenStrm_dout sc_in sc_lv 32 signal 0 } 
	{ burstLenStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ burstLenStrm_read sc_out sc_logic 1 signal 0 } 
	{ blockStrm_dout sc_in sc_lv 512 signal 1 } 
	{ blockStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ blockStrm_read sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem0_1_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem0_1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_1_BUSER sc_in sc_lv 1 signal 2 } 
	{ ptr_dout sc_in sc_lv 64 signal 3 } 
	{ ptr_empty_n sc_in sc_logic 1 signal 3 } 
	{ ptr_read sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "burstLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "dout" }} , 
 	{ "name": "burstLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "empty_n" }} , 
 	{ "name": "burstLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "read" }} , 
 	{ "name": "blockStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "blockStrm", "role": "dout" }} , 
 	{ "name": "blockStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockStrm", "role": "empty_n" }} , 
 	{ "name": "blockStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blockStrm", "role": "read" }} , 
 	{ "name": "m_axi_gmem0_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0_1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem0_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0_1", "role": "ARLEN" }} , 
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
 	{ "name": "ptr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ptr", "role": "dout" }} , 
 	{ "name": "ptr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "empty_n" }} , 
 	{ "name": "ptr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "burstLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "burstLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blockStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "blockStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0_1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ptr", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ptr_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	burstLenStrm { ap_fifo {  { burstLenStrm_dout fifo_data 0 32 }  { burstLenStrm_empty_n fifo_status 0 1 }  { burstLenStrm_read fifo_update 1 1 } } }
	blockStrm { ap_fifo {  { blockStrm_dout fifo_data 0 512 }  { blockStrm_empty_n fifo_status 0 1 }  { blockStrm_read fifo_update 1 1 } } }
	gmem0_1 { m_axi {  { m_axi_gmem0_1_AWVALID VALID 1 1 }  { m_axi_gmem0_1_AWREADY READY 0 1 }  { m_axi_gmem0_1_AWADDR ADDR 1 64 }  { m_axi_gmem0_1_AWID ID 1 1 }  { m_axi_gmem0_1_AWLEN LEN 1 32 }  { m_axi_gmem0_1_AWSIZE SIZE 1 3 }  { m_axi_gmem0_1_AWBURST BURST 1 2 }  { m_axi_gmem0_1_AWLOCK LOCK 1 2 }  { m_axi_gmem0_1_AWCACHE CACHE 1 4 }  { m_axi_gmem0_1_AWPROT PROT 1 3 }  { m_axi_gmem0_1_AWQOS QOS 1 4 }  { m_axi_gmem0_1_AWREGION REGION 1 4 }  { m_axi_gmem0_1_AWUSER USER 1 1 }  { m_axi_gmem0_1_WVALID VALID 1 1 }  { m_axi_gmem0_1_WREADY READY 0 1 }  { m_axi_gmem0_1_WDATA DATA 1 512 }  { m_axi_gmem0_1_WSTRB STRB 1 64 }  { m_axi_gmem0_1_WLAST LAST 1 1 }  { m_axi_gmem0_1_WID ID 1 1 }  { m_axi_gmem0_1_WUSER USER 1 1 }  { m_axi_gmem0_1_ARVALID VALID 1 1 }  { m_axi_gmem0_1_ARREADY READY 0 1 }  { m_axi_gmem0_1_ARADDR ADDR 1 64 }  { m_axi_gmem0_1_ARID ID 1 1 }  { m_axi_gmem0_1_ARLEN LEN 1 32 }  { m_axi_gmem0_1_ARSIZE SIZE 1 3 }  { m_axi_gmem0_1_ARBURST BURST 1 2 }  { m_axi_gmem0_1_ARLOCK LOCK 1 2 }  { m_axi_gmem0_1_ARCACHE CACHE 1 4 }  { m_axi_gmem0_1_ARPROT PROT 1 3 }  { m_axi_gmem0_1_ARQOS QOS 1 4 }  { m_axi_gmem0_1_ARREGION REGION 1 4 }  { m_axi_gmem0_1_ARUSER USER 1 1 }  { m_axi_gmem0_1_RVALID VALID 0 1 }  { m_axi_gmem0_1_RREADY READY 1 1 }  { m_axi_gmem0_1_RDATA DATA 0 512 }  { m_axi_gmem0_1_RLAST LAST 0 1 }  { m_axi_gmem0_1_RID ID 0 1 }  { m_axi_gmem0_1_RUSER USER 0 1 }  { m_axi_gmem0_1_RRESP RESP 0 2 }  { m_axi_gmem0_1_BVALID VALID 0 1 }  { m_axi_gmem0_1_BREADY READY 1 1 }  { m_axi_gmem0_1_BRESP RESP 0 2 }  { m_axi_gmem0_1_BID ID 0 1 }  { m_axi_gmem0_1_BUSER USER 0 1 } } }
	ptr { ap_fifo {  { ptr_dout fifo_data 0 64 }  { ptr_empty_n fifo_status 0 1 }  { ptr_read fifo_update 1 1 } } }
}