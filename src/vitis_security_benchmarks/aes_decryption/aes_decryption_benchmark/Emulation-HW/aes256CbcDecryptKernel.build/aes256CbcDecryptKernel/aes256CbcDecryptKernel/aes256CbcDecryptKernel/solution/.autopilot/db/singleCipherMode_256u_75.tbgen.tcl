set moduleName singleCipherMode_256u_75
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
set C_modelName {singleCipherMode<256u>75}
set C_modelType { void 0 }
set C_modelArgList {
	{ taskNum int 64 regular {fifo 0}  }
	{ IVStrm int 128 regular {fifo 0 volatile }  }
	{ cipherkeyStrm int 256 regular {fifo 0 volatile }  }
	{ textInStrm int 128 regular {fifo 0 volatile }  }
	{ endTextInStrm int 1 regular {fifo 0 volatile }  }
	{ textOutStrm int 128 regular {fifo 1 volatile }  }
	{ endTextOutStrm int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "taskNum", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "textOutStrm", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ taskNum_dout sc_in sc_lv 64 signal 0 } 
	{ taskNum_empty_n sc_in sc_logic 1 signal 0 } 
	{ taskNum_read sc_out sc_logic 1 signal 0 } 
	{ IVStrm_dout sc_in sc_lv 128 signal 1 } 
	{ IVStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ IVStrm_read sc_out sc_logic 1 signal 1 } 
	{ cipherkeyStrm_dout sc_in sc_lv 256 signal 2 } 
	{ cipherkeyStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ cipherkeyStrm_read sc_out sc_logic 1 signal 2 } 
	{ textInStrm_dout sc_in sc_lv 128 signal 3 } 
	{ textInStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ textInStrm_read sc_out sc_logic 1 signal 3 } 
	{ endTextInStrm_dout sc_in sc_logic 1 signal 4 } 
	{ endTextInStrm_empty_n sc_in sc_logic 1 signal 4 } 
	{ endTextInStrm_read sc_out sc_logic 1 signal 4 } 
	{ textOutStrm_din sc_out sc_lv 128 signal 5 } 
	{ textOutStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ textOutStrm_write sc_out sc_logic 1 signal 5 } 
	{ endTextOutStrm_din sc_out sc_logic 1 signal 6 } 
	{ endTextOutStrm_full_n sc_in sc_logic 1 signal 6 } 
	{ endTextOutStrm_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "taskNum_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taskNum", "role": "dout" }} , 
 	{ "name": "taskNum_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNum", "role": "empty_n" }} , 
 	{ "name": "taskNum_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskNum", "role": "read" }} , 
 	{ "name": "IVStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm", "role": "dout" }} , 
 	{ "name": "IVStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "empty_n" }} , 
 	{ "name": "IVStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm", "role": "read" }} , 
 	{ "name": "cipherkeyStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm", "role": "read" }} , 
 	{ "name": "textInStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm", "role": "dout" }} , 
 	{ "name": "textInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm", "role": "empty_n" }} , 
 	{ "name": "textInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm", "role": "read" }} , 
 	{ "name": "endTextInStrm_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "dout" }} , 
 	{ "name": "endTextInStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm", "role": "read" }} , 
 	{ "name": "textOutStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm", "role": "din" }} , 
 	{ "name": "textOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm", "role": "full_n" }} , 
 	{ "name": "textOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm", "role": "write" }} , 
 	{ "name": "endTextOutStrm_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "din" }} , 
 	{ "name": "endTextOutStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
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
					{"ID" : "5", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_496", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decipher_0_496_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_r_fu_167", "Parent" : "0", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_r_fu_167.decipher_0_497_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_r_fu_167.decipher_0_2_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_updateKey_fu_192", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_updateKey_fu_192.decipher_0_3_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
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
		decipher_0_3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	taskNum { ap_fifo {  { taskNum_dout fifo_data 0 64 }  { taskNum_empty_n fifo_status 0 1 }  { taskNum_read fifo_update 1 1 } } }
	IVStrm { ap_fifo {  { IVStrm_dout fifo_data 0 128 }  { IVStrm_empty_n fifo_status 0 1 }  { IVStrm_read fifo_update 1 1 } } }
	cipherkeyStrm { ap_fifo {  { cipherkeyStrm_dout fifo_data 0 256 }  { cipherkeyStrm_empty_n fifo_status 0 1 }  { cipherkeyStrm_read fifo_update 1 1 } } }
	textInStrm { ap_fifo {  { textInStrm_dout fifo_data 0 128 }  { textInStrm_empty_n fifo_status 0 1 }  { textInStrm_read fifo_update 1 1 } } }
	endTextInStrm { ap_fifo {  { endTextInStrm_dout fifo_data 0 1 }  { endTextInStrm_empty_n fifo_status 0 1 }  { endTextInStrm_read fifo_update 1 1 } } }
	textOutStrm { ap_fifo {  { textOutStrm_din fifo_data 1 128 }  { textOutStrm_full_n fifo_status 0 1 }  { textOutStrm_write fifo_update 1 1 } } }
	endTextOutStrm { ap_fifo {  { endTextOutStrm_din fifo_data 1 1 }  { endTextOutStrm_full_n fifo_status 0 1 }  { endTextOutStrm_write fifo_update 1 1 } } }
}
