set moduleName singleCipherMode_256u_77
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
set C_modelName {singleCipherMode<256u>77}
set C_modelType { void 0 }
set C_modelArgList {
	{ taskNum int 64 regular {fifo 0}  }
	{ IVStrm2 int 128 regular {fifo 0 volatile }  }
	{ cipherkeyStrm5 int 256 regular {fifo 0 volatile }  }
	{ textInStrm8 int 128 regular {fifo 0 volatile }  }
	{ endTextInStrm11 int 1 regular {fifo 0 volatile }  }
	{ textOutStrm14 int 128 regular {fifo 1 volatile }  }
	{ endTextOutStrm17 int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "taskNum", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "IVStrm2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "cipherkeyStrm5", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "textInStrm8", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "endTextInStrm11", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "textOutStrm14", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "endTextOutStrm17", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ IVStrm2_dout sc_in sc_lv 128 signal 1 } 
	{ IVStrm2_empty_n sc_in sc_logic 1 signal 1 } 
	{ IVStrm2_read sc_out sc_logic 1 signal 1 } 
	{ cipherkeyStrm5_dout sc_in sc_lv 256 signal 2 } 
	{ cipherkeyStrm5_empty_n sc_in sc_logic 1 signal 2 } 
	{ cipherkeyStrm5_read sc_out sc_logic 1 signal 2 } 
	{ textInStrm8_dout sc_in sc_lv 128 signal 3 } 
	{ textInStrm8_empty_n sc_in sc_logic 1 signal 3 } 
	{ textInStrm8_read sc_out sc_logic 1 signal 3 } 
	{ endTextInStrm11_dout sc_in sc_logic 1 signal 4 } 
	{ endTextInStrm11_empty_n sc_in sc_logic 1 signal 4 } 
	{ endTextInStrm11_read sc_out sc_logic 1 signal 4 } 
	{ textOutStrm14_din sc_out sc_lv 128 signal 5 } 
	{ textOutStrm14_full_n sc_in sc_logic 1 signal 5 } 
	{ textOutStrm14_write sc_out sc_logic 1 signal 5 } 
	{ endTextOutStrm17_din sc_out sc_logic 1 signal 6 } 
	{ endTextOutStrm17_full_n sc_in sc_logic 1 signal 6 } 
	{ endTextOutStrm17_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "IVStrm2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "IVStrm2", "role": "dout" }} , 
 	{ "name": "IVStrm2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm2", "role": "empty_n" }} , 
 	{ "name": "IVStrm2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IVStrm2", "role": "read" }} , 
 	{ "name": "cipherkeyStrm5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "dout" }} , 
 	{ "name": "cipherkeyStrm5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "empty_n" }} , 
 	{ "name": "cipherkeyStrm5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cipherkeyStrm5", "role": "read" }} , 
 	{ "name": "textInStrm8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textInStrm8", "role": "dout" }} , 
 	{ "name": "textInStrm8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm8", "role": "empty_n" }} , 
 	{ "name": "textInStrm8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textInStrm8", "role": "read" }} , 
 	{ "name": "endTextInStrm11_dout", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "dout" }} , 
 	{ "name": "endTextInStrm11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "empty_n" }} , 
 	{ "name": "endTextInStrm11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextInStrm11", "role": "read" }} , 
 	{ "name": "textOutStrm14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "din" }} , 
 	{ "name": "textOutStrm14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "full_n" }} , 
 	{ "name": "textOutStrm14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "textOutStrm14", "role": "write" }} , 
 	{ "name": "endTextOutStrm17_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "din" }} , 
 	{ "name": "endTextOutStrm17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "full_n" }} , 
 	{ "name": "endTextOutStrm17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "endTextOutStrm17", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5"],
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
			{"Name" : "taskNum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
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
					{"ID" : "5", "SubInstance" : "grp_updateKey_fu_192", "Port" : "decipher_0_3"}]},
			{"Name" : "decipher_0_494", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_updateKey_fu_192", "Port" : "this_0_4"}]},
			{"Name" : "decipher_0_497", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_497"}]},
			{"Name" : "decipher_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_process_r_fu_167", "Port" : "decipher_0_2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decipher_0_494_U", "Parent" : "0"},
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
	IVStrm2 { ap_fifo {  { IVStrm2_dout fifo_data 0 128 }  { IVStrm2_empty_n fifo_status 0 1 }  { IVStrm2_read fifo_update 1 1 } } }
	cipherkeyStrm5 { ap_fifo {  { cipherkeyStrm5_dout fifo_data 0 256 }  { cipherkeyStrm5_empty_n fifo_status 0 1 }  { cipherkeyStrm5_read fifo_update 1 1 } } }
	textInStrm8 { ap_fifo {  { textInStrm8_dout fifo_data 0 128 }  { textInStrm8_empty_n fifo_status 0 1 }  { textInStrm8_read fifo_update 1 1 } } }
	endTextInStrm11 { ap_fifo {  { endTextInStrm11_dout fifo_data 0 1 }  { endTextInStrm11_empty_n fifo_status 0 1 }  { endTextInStrm11_read fifo_update 1 1 } } }
	textOutStrm14 { ap_fifo {  { textOutStrm14_din fifo_data 1 128 }  { textOutStrm14_full_n fifo_status 0 1 }  { textOutStrm14_write fifo_update 1 1 } } }
	endTextOutStrm17 { ap_fifo {  { endTextOutStrm17_din fifo_data 1 1 }  { endTextOutStrm17_full_n fifo_status 0 1 }  { endTextOutStrm17_write fifo_update 1 1 } } }
}
