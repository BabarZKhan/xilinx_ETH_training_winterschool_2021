set moduleName adler32_16_s
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
set C_modelName {adler32<16>}
set C_modelType { void 0 }
set C_modelArgList {
	{ adlerStrm int 32 regular {fifo 0 volatile }  }
	{ inStrm int 128 regular {fifo 0 volatile }  }
	{ inLenStrm int 32 regular {fifo 0 volatile }  }
	{ endInLenStrm int 1 regular {fifo 0 volatile }  }
	{ outStrm int 32 regular {fifo 1 volatile }  }
	{ endOutStrm int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adlerStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "inLenStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "endInLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "outStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endOutStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ adlerStrm_dout sc_in sc_lv 32 signal 0 } 
	{ adlerStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ adlerStrm_read sc_out sc_logic 1 signal 0 } 
	{ inStrm_dout sc_in sc_lv 128 signal 1 } 
	{ inStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ inStrm_read sc_out sc_logic 1 signal 1 } 
	{ inLenStrm_dout sc_in sc_lv 32 signal 2 } 
	{ inLenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ inLenStrm_read sc_out sc_logic 1 signal 2 } 
	{ endInLenStrm_dout sc_in sc_lv 1 signal 3 } 
	{ endInLenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ endInLenStrm_read sc_out sc_logic 1 signal 3 } 
	{ outStrm_din sc_out sc_lv 32 signal 4 } 
	{ outStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ outStrm_write sc_out sc_logic 1 signal 4 } 
	{ endOutStrm_din sc_out sc_lv 1 signal 5 } 
	{ endOutStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ endOutStrm_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "adlerStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "adlerStrm", "role": "dout" }} , 
 	{ "name": "adlerStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adlerStrm", "role": "empty_n" }} , 
 	{ "name": "adlerStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adlerStrm", "role": "read" }} , 
 	{ "name": "inStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "inStrm", "role": "dout" }} , 
 	{ "name": "inStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStrm", "role": "empty_n" }} , 
 	{ "name": "inStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStrm", "role": "read" }} , 
 	{ "name": "inLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inLenStrm", "role": "dout" }} , 
 	{ "name": "inLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inLenStrm", "role": "empty_n" }} , 
 	{ "name": "inLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inLenStrm", "role": "read" }} , 
 	{ "name": "endInLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endInLenStrm", "role": "dout" }} , 
 	{ "name": "endInLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endInLenStrm", "role": "empty_n" }} , 
 	{ "name": "endInLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endInLenStrm", "role": "read" }} , 
 	{ "name": "outStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outStrm", "role": "din" }} , 
 	{ "name": "outStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStrm", "role": "full_n" }} , 
 	{ "name": "outStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStrm", "role": "write" }} , 
 	{ "name": "endOutStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutStrm", "role": "din" }} , 
 	{ "name": "endOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutStrm", "role": "full_n" }} , 
 	{ "name": "endOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endOutStrm", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "adler32_16_s",
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
			{"Name" : "adlerStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "adlerStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "inStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "inLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endInLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "endInLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "outStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endOutStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16",
				"BlockSignal" : [
					{"Name" : "endOutStrm_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	adler32_16_s {
		adlerStrm {Type I LastRead 1 FirstWrite -1}
		inStrm {Type I LastRead 6 FirstWrite -1}
		inLenStrm {Type I LastRead 1 FirstWrite -1}
		endInLenStrm {Type I LastRead 1 FirstWrite -1}
		outStrm {Type O LastRead -1 FirstWrite 9}
		endOutStrm {Type O LastRead -1 FirstWrite 1}}}

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
	adlerStrm { ap_fifo {  { adlerStrm_dout fifo_data 0 32 }  { adlerStrm_empty_n fifo_status 0 1 }  { adlerStrm_read fifo_update 1 1 } } }
	inStrm { ap_fifo {  { inStrm_dout fifo_data 0 128 }  { inStrm_empty_n fifo_status 0 1 }  { inStrm_read fifo_update 1 1 } } }
	inLenStrm { ap_fifo {  { inLenStrm_dout fifo_data 0 32 }  { inLenStrm_empty_n fifo_status 0 1 }  { inLenStrm_read fifo_update 1 1 } } }
	endInLenStrm { ap_fifo {  { endInLenStrm_dout fifo_data 0 1 }  { endInLenStrm_empty_n fifo_status 0 1 }  { endInLenStrm_read fifo_update 1 1 } } }
	outStrm { ap_fifo {  { outStrm_din fifo_data 1 32 }  { outStrm_full_n fifo_status 0 1 }  { outStrm_write fifo_update 1 1 } } }
	endOutStrm { ap_fifo {  { endOutStrm_din fifo_data 1 1 }  { endOutStrm_full_n fifo_status 0 1 }  { endOutStrm_write fifo_update 1 1 } } }
}
