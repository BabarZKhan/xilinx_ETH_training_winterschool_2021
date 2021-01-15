set moduleName mergeResult_128u_4u_s
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
set C_modelName {mergeResult<128u, 4u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ msgNumStrm int 64 regular {fifo 0 volatile }  }
	{ taskNumStrm int 64 regular {fifo 0 volatile }  }
	{ outStrm int 512 regular {fifo 1 volatile }  }
	{ burstLenStrm int 32 regular {fifo 1 volatile }  }
	{ textStrm_V_V int 128 regular {fifo 0 volatile }  }
	{ textStrm_1_V_V int 128 regular {fifo 0 volatile }  }
	{ textStrm_2_V_V int 128 regular {fifo 0 volatile }  }
	{ textStrm_3_V_V int 128 regular {fifo 0 volatile }  }
	{ endTextStrm_V int 1 regular {fifo 0 volatile }  }
	{ endTextStrm_1_V int 1 regular {fifo 0 volatile }  }
	{ endTextStrm_2_V int 1 regular {fifo 0 volatile }  }
	{ endTextStrm_3_V int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "msgNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taskNumStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "burstLenStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "textStrm_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textStrm_1_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textStrm_2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "textStrm_3_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endTextStrm_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextStrm_1_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextStrm_2_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "endTextStrm_3_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ msgNumStrm_dout sc_in sc_lv 64 signal 0 } 
	{ msgNumStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ msgNumStrm_read sc_out sc_logic 1 signal 0 } 
	{ taskNumStrm_dout sc_in sc_lv 64 signal 1 } 
	{ taskNumStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ taskNumStrm_read sc_out sc_logic 1 signal 1 } 
	{ outStrm_din sc_out sc_lv 512 signal 2 } 
	{ outStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ outStrm_write sc_out sc_logic 1 signal 2 } 
	{ burstLenStrm_din sc_out sc_lv 32 signal 3 } 
	{ burstLenStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ burstLenStrm_write sc_out sc_logic 1 signal 3 } 
	{ textStrm_V_V_dout sc_in sc_lv 128 signal 4 } 
	{ textStrm_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ textStrm_V_V_read sc_out sc_logic 1 signal 4 } 
	{ textStrm_1_V_V_dout sc_in sc_lv 128 signal 5 } 
	{ textStrm_1_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ textStrm_1_V_V_read sc_out sc_logic 1 signal 5 } 
	{ textStrm_2_V_V_dout sc_in sc_lv 128 signal 6 } 
	{ textStrm_2_V_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ textStrm_2_V_V_read sc_out sc_logic 1 signal 6 } 
	{ textStrm_3_V_V_dout sc_in sc_lv 128 signal 7 } 
	{ textStrm_3_V_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ textStrm_3_V_V_read sc_out sc_logic 1 signal 7 } 
	{ endTextStrm_V_dout sc_in sc_logic 1 signal 8 } 
	{ endTextStrm_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ endTextStrm_V_read sc_out sc_logic 1 signal 8 } 
	{ endTextStrm_1_V_dout sc_in sc_logic 1 signal 9 } 
	{ endTextStrm_1_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ endTextStrm_1_V_read sc_out sc_logic 1 signal 9 } 
	{ endTextStrm_2_V_dout sc_in sc_logic 1 signal 10 } 
	{ endTextStrm_2_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ endTextStrm_2_V_read sc_out sc_logic 1 signal 10 } 
	{ endTextStrm_3_V_dout sc_in sc_logic 1 signal 11 } 
	{ endTextStrm_3_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ endTextStrm_3_V_read sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "msgNumStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "dout" }} , 
 	{ "name": "msgNumStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "empty_n" }} , 
 	{ "name": "msgNumStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgNumStrm", "role": "read" }} , 
 	{ "name": "taskNumStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "dout" }} , 
 	{ "name": "taskNumStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "empty_n" }} , 
 	{ "name": "taskNumStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNumStrm", "role": "read" }} , 
 	{ "name": "outStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "outStrm", "role": "din" }} , 
 	{ "name": "outStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStrm", "role": "full_n" }} , 
 	{ "name": "outStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStrm", "role": "write" }} , 
 	{ "name": "burstLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "din" }} , 
 	{ "name": "burstLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "full_n" }} , 
 	{ "name": "burstLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "burstLenStrm", "role": "write" }} , 
 	{ "name": "textStrm_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "dout" }} , 
 	{ "name": "textStrm_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "empty_n" }} , 
 	{ "name": "textStrm_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_V_V", "role": "read" }} , 
 	{ "name": "textStrm_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "dout" }} , 
 	{ "name": "textStrm_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "empty_n" }} , 
 	{ "name": "textStrm_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_1_V_V", "role": "read" }} , 
 	{ "name": "textStrm_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "dout" }} , 
 	{ "name": "textStrm_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "empty_n" }} , 
 	{ "name": "textStrm_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_2_V_V", "role": "read" }} , 
 	{ "name": "textStrm_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "dout" }} , 
 	{ "name": "textStrm_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "empty_n" }} , 
 	{ "name": "textStrm_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textStrm_3_V_V", "role": "read" }} , 
 	{ "name": "endTextStrm_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "dout" }} , 
 	{ "name": "endTextStrm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "empty_n" }} , 
 	{ "name": "endTextStrm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_V", "role": "read" }} , 
 	{ "name": "endTextStrm_1_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "dout" }} , 
 	{ "name": "endTextStrm_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "empty_n" }} , 
 	{ "name": "endTextStrm_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_1_V", "role": "read" }} , 
 	{ "name": "endTextStrm_2_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "dout" }} , 
 	{ "name": "endTextStrm_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "empty_n" }} , 
 	{ "name": "endTextStrm_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_2_V", "role": "read" }} , 
 	{ "name": "endTextStrm_3_V_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "dout" }} , 
 	{ "name": "endTextStrm_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "empty_n" }} , 
 	{ "name": "endTextStrm_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextStrm_3_V", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "msgNumStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "msgNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "taskNumStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "taskNumStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256",
				"BlockSignal" : [
					{"Name" : "outStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "burstLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "burstLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "textStrm_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "textStrm_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "endTextStrm_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "128",
				"BlockSignal" : [
					{"Name" : "endTextStrm_3_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		endTextStrm_3_V {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	msgNumStrm { ap_fifo {  { msgNumStrm_dout fifo_data 0 64 }  { msgNumStrm_empty_n fifo_status 0 1 }  { msgNumStrm_read fifo_update 1 1 } } }
	taskNumStrm { ap_fifo {  { taskNumStrm_dout fifo_data 0 64 }  { taskNumStrm_empty_n fifo_status 0 1 }  { taskNumStrm_read fifo_update 1 1 } } }
	outStrm { ap_fifo {  { outStrm_din fifo_data 1 512 }  { outStrm_full_n fifo_status 0 1 }  { outStrm_write fifo_update 1 1 } } }
	burstLenStrm { ap_fifo {  { burstLenStrm_din fifo_data 1 32 }  { burstLenStrm_full_n fifo_status 0 1 }  { burstLenStrm_write fifo_update 1 1 } } }
	textStrm_V_V { ap_fifo {  { textStrm_V_V_dout fifo_data 0 128 }  { textStrm_V_V_empty_n fifo_status 0 1 }  { textStrm_V_V_read fifo_update 1 1 } } }
	textStrm_1_V_V { ap_fifo {  { textStrm_1_V_V_dout fifo_data 0 128 }  { textStrm_1_V_V_empty_n fifo_status 0 1 }  { textStrm_1_V_V_read fifo_update 1 1 } } }
	textStrm_2_V_V { ap_fifo {  { textStrm_2_V_V_dout fifo_data 0 128 }  { textStrm_2_V_V_empty_n fifo_status 0 1 }  { textStrm_2_V_V_read fifo_update 1 1 } } }
	textStrm_3_V_V { ap_fifo {  { textStrm_3_V_V_dout fifo_data 0 128 }  { textStrm_3_V_V_empty_n fifo_status 0 1 }  { textStrm_3_V_V_read fifo_update 1 1 } } }
	endTextStrm_V { ap_fifo {  { endTextStrm_V_dout fifo_data 0 1 }  { endTextStrm_V_empty_n fifo_status 0 1 }  { endTextStrm_V_read fifo_update 1 1 } } }
	endTextStrm_1_V { ap_fifo {  { endTextStrm_1_V_dout fifo_data 0 1 }  { endTextStrm_1_V_empty_n fifo_status 0 1 }  { endTextStrm_1_V_read fifo_update 1 1 } } }
	endTextStrm_2_V { ap_fifo {  { endTextStrm_2_V_dout fifo_data 0 1 }  { endTextStrm_2_V_empty_n fifo_status 0 1 }  { endTextStrm_2_V_read fifo_update 1 1 } } }
	endTextStrm_3_V { ap_fifo {  { endTextStrm_3_V_dout fifo_data 0 1 }  { endTextStrm_3_V_empty_n fifo_status 0 1 }  { endTextStrm_3_V_read fifo_update 1 1 } } }
}
