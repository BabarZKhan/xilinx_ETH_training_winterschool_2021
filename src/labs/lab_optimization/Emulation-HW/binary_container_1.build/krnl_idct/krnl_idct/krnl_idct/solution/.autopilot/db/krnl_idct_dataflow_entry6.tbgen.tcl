set moduleName krnl_idct_dataflow_entry6
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {krnl_idct_dataflow.entry6}
set C_modelType { void 0 }
set C_modelArgList {
	{ block_r int 64 regular  }
	{ q int 64 regular  }
	{ voutp int 64 regular  }
	{ ignore_dc int 32 regular  }
	{ blocks int 32 regular  }
	{ block_out int 64 regular {fifo 1}  }
	{ q_out int 64 regular {fifo 1}  }
	{ voutp_out int 64 regular {fifo 1}  }
	{ ignore_dc_out int 32 regular {fifo 1}  }
	{ blocks_out int 31 regular {fifo 1}  }
	{ blocks_out1 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "block_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "voutp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ignore_dc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "blocks", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "q_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "voutp_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ignore_dc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blocks_out", "interface" : "fifo", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blocks_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
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
	{ block_r sc_in sc_lv 64 signal 0 } 
	{ q sc_in sc_lv 64 signal 1 } 
	{ voutp sc_in sc_lv 64 signal 2 } 
	{ ignore_dc sc_in sc_lv 32 signal 3 } 
	{ blocks sc_in sc_lv 32 signal 4 } 
	{ block_out_din sc_out sc_lv 64 signal 5 } 
	{ block_out_full_n sc_in sc_logic 1 signal 5 } 
	{ block_out_write sc_out sc_logic 1 signal 5 } 
	{ q_out_din sc_out sc_lv 64 signal 6 } 
	{ q_out_full_n sc_in sc_logic 1 signal 6 } 
	{ q_out_write sc_out sc_logic 1 signal 6 } 
	{ voutp_out_din sc_out sc_lv 64 signal 7 } 
	{ voutp_out_full_n sc_in sc_logic 1 signal 7 } 
	{ voutp_out_write sc_out sc_logic 1 signal 7 } 
	{ ignore_dc_out_din sc_out sc_lv 32 signal 8 } 
	{ ignore_dc_out_full_n sc_in sc_logic 1 signal 8 } 
	{ ignore_dc_out_write sc_out sc_logic 1 signal 8 } 
	{ blocks_out_din sc_out sc_lv 31 signal 9 } 
	{ blocks_out_full_n sc_in sc_logic 1 signal 9 } 
	{ blocks_out_write sc_out sc_logic 1 signal 9 } 
	{ blocks_out1_din sc_out sc_lv 32 signal 10 } 
	{ blocks_out1_full_n sc_in sc_logic 1 signal 10 } 
	{ blocks_out1_write sc_out sc_logic 1 signal 10 } 
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
 	{ "name": "block_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "block_r", "role": "default" }} , 
 	{ "name": "q", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "default" }} , 
 	{ "name": "voutp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "voutp", "role": "default" }} , 
 	{ "name": "ignore_dc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ignore_dc", "role": "default" }} , 
 	{ "name": "blocks", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blocks", "role": "default" }} , 
 	{ "name": "block_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "block_out", "role": "din" }} , 
 	{ "name": "block_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_out", "role": "full_n" }} , 
 	{ "name": "block_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_out", "role": "write" }} , 
 	{ "name": "q_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q_out", "role": "din" }} , 
 	{ "name": "q_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_out", "role": "full_n" }} , 
 	{ "name": "q_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_out", "role": "write" }} , 
 	{ "name": "voutp_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "voutp_out", "role": "din" }} , 
 	{ "name": "voutp_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voutp_out", "role": "full_n" }} , 
 	{ "name": "voutp_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "voutp_out", "role": "write" }} , 
 	{ "name": "ignore_dc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ignore_dc_out", "role": "din" }} , 
 	{ "name": "ignore_dc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ignore_dc_out", "role": "full_n" }} , 
 	{ "name": "ignore_dc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ignore_dc_out", "role": "write" }} , 
 	{ "name": "blocks_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "blocks_out", "role": "din" }} , 
 	{ "name": "blocks_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_out", "role": "full_n" }} , 
 	{ "name": "blocks_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_out", "role": "write" }} , 
 	{ "name": "blocks_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "blocks_out1", "role": "din" }} , 
 	{ "name": "blocks_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_out1", "role": "full_n" }} , 
 	{ "name": "blocks_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blocks_out1", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "block_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "block_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "q_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "voutp_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "voutp_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ignore_dc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ignore_dc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "blocks_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blocks_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "blocks_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		blocks_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	block_r { ap_none {  { block_r in_data 0 64 } } }
	q { ap_none {  { q in_data 0 64 } } }
	voutp { ap_none {  { voutp in_data 0 64 } } }
	ignore_dc { ap_none {  { ignore_dc in_data 0 32 } } }
	blocks { ap_none {  { blocks in_data 0 32 } } }
	block_out { ap_fifo {  { block_out_din fifo_data 1 64 }  { block_out_full_n fifo_status 0 1 }  { block_out_write fifo_update 1 1 } } }
	q_out { ap_fifo {  { q_out_din fifo_data 1 64 }  { q_out_full_n fifo_status 0 1 }  { q_out_write fifo_update 1 1 } } }
	voutp_out { ap_fifo {  { voutp_out_din fifo_data 1 64 }  { voutp_out_full_n fifo_status 0 1 }  { voutp_out_write fifo_update 1 1 } } }
	ignore_dc_out { ap_fifo {  { ignore_dc_out_din fifo_data 1 32 }  { ignore_dc_out_full_n fifo_status 0 1 }  { ignore_dc_out_write fifo_update 1 1 } } }
	blocks_out { ap_fifo {  { blocks_out_din fifo_data 1 31 }  { blocks_out_full_n fifo_status 0 1 }  { blocks_out_write fifo_update 1 1 } } }
	blocks_out1 { ap_fifo {  { blocks_out1_din fifo_data 1 32 }  { blocks_out1_full_n fifo_status 0 1 }  { blocks_out1_write fifo_update 1 1 } } }
}
