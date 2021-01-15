set moduleName Adler32Kernel_entry3
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
set C_modelName {Adler32Kernel.entry3}
set C_modelType { void 0 }
set C_modelArgList {
	{ num int 32 regular  }
	{ size int 32 regular  }
	{ len int 64 regular  }
	{ adler int 64 regular  }
	{ inData int 64 regular  }
	{ adler32Result int 64 regular  }
	{ num_out int 32 regular {fifo 1}  }
	{ num_out1 int 32 regular {fifo 1}  }
	{ size_out int 32 regular {fifo 1}  }
	{ len_out int 64 regular {fifo 1}  }
	{ adler_out int 64 regular {fifo 1}  }
	{ inData_out int 64 regular {fifo 1}  }
	{ adler32Result_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "adler", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inData", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "adler32Result", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "num_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "len_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "adler_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inData_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "adler32Result_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ num sc_in sc_lv 32 signal 0 } 
	{ size sc_in sc_lv 32 signal 1 } 
	{ len sc_in sc_lv 64 signal 2 } 
	{ adler sc_in sc_lv 64 signal 3 } 
	{ inData sc_in sc_lv 64 signal 4 } 
	{ adler32Result sc_in sc_lv 64 signal 5 } 
	{ num_out_din sc_out sc_lv 32 signal 6 } 
	{ num_out_full_n sc_in sc_logic 1 signal 6 } 
	{ num_out_write sc_out sc_logic 1 signal 6 } 
	{ num_out1_din sc_out sc_lv 32 signal 7 } 
	{ num_out1_full_n sc_in sc_logic 1 signal 7 } 
	{ num_out1_write sc_out sc_logic 1 signal 7 } 
	{ size_out_din sc_out sc_lv 32 signal 8 } 
	{ size_out_full_n sc_in sc_logic 1 signal 8 } 
	{ size_out_write sc_out sc_logic 1 signal 8 } 
	{ len_out_din sc_out sc_lv 64 signal 9 } 
	{ len_out_full_n sc_in sc_logic 1 signal 9 } 
	{ len_out_write sc_out sc_logic 1 signal 9 } 
	{ adler_out_din sc_out sc_lv 64 signal 10 } 
	{ adler_out_full_n sc_in sc_logic 1 signal 10 } 
	{ adler_out_write sc_out sc_logic 1 signal 10 } 
	{ inData_out_din sc_out sc_lv 64 signal 11 } 
	{ inData_out_full_n sc_in sc_logic 1 signal 11 } 
	{ inData_out_write sc_out sc_logic 1 signal 11 } 
	{ adler32Result_out_din sc_out sc_lv 64 signal 12 } 
	{ adler32Result_out_full_n sc_in sc_logic 1 signal 12 } 
	{ adler32Result_out_write sc_out sc_logic 1 signal 12 } 
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
 	{ "name": "num", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "adler", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "adler", "role": "default" }} , 
 	{ "name": "inData", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inData", "role": "default" }} , 
 	{ "name": "adler32Result", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "adler32Result", "role": "default" }} , 
 	{ "name": "num_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_out", "role": "din" }} , 
 	{ "name": "num_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_out", "role": "full_n" }} , 
 	{ "name": "num_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_out", "role": "write" }} , 
 	{ "name": "num_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_out1", "role": "din" }} , 
 	{ "name": "num_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_out1", "role": "full_n" }} , 
 	{ "name": "num_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "num_out1", "role": "write" }} , 
 	{ "name": "size_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_out", "role": "din" }} , 
 	{ "name": "size_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_out", "role": "full_n" }} , 
 	{ "name": "size_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_out", "role": "write" }} , 
 	{ "name": "len_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "len_out", "role": "din" }} , 
 	{ "name": "len_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "len_out", "role": "full_n" }} , 
 	{ "name": "len_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "len_out", "role": "write" }} , 
 	{ "name": "adler_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "adler_out", "role": "din" }} , 
 	{ "name": "adler_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adler_out", "role": "full_n" }} , 
 	{ "name": "adler_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adler_out", "role": "write" }} , 
 	{ "name": "inData_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inData_out", "role": "din" }} , 
 	{ "name": "inData_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_out", "role": "full_n" }} , 
 	{ "name": "inData_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_out", "role": "write" }} , 
 	{ "name": "adler32Result_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "adler32Result_out", "role": "din" }} , 
 	{ "name": "adler32Result_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adler32Result_out", "role": "full_n" }} , 
 	{ "name": "adler32Result_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adler32Result_out", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Adler32Kernel_entry3",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "adler", "Type" : "None", "Direction" : "I"},
			{"Name" : "inData", "Type" : "None", "Direction" : "I"},
			{"Name" : "adler32Result", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "num_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5",
				"BlockSignal" : [
					{"Name" : "num_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "len_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adler_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "adler_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inData_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "inData_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "adler32Result_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5",
				"BlockSignal" : [
					{"Name" : "adler32Result_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Adler32Kernel_entry3 {
		num {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		adler {Type I LastRead 0 FirstWrite -1}
		inData {Type I LastRead 0 FirstWrite -1}
		adler32Result {Type I LastRead 0 FirstWrite -1}
		num_out {Type O LastRead -1 FirstWrite 0}
		num_out1 {Type O LastRead -1 FirstWrite 0}
		size_out {Type O LastRead -1 FirstWrite 0}
		len_out {Type O LastRead -1 FirstWrite 0}
		adler_out {Type O LastRead -1 FirstWrite 0}
		inData_out {Type O LastRead -1 FirstWrite 0}
		adler32Result_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num { ap_none {  { num in_data 0 32 } } }
	size { ap_none {  { size in_data 0 32 } } }
	len { ap_none {  { len in_data 0 64 } } }
	adler { ap_none {  { adler in_data 0 64 } } }
	inData { ap_none {  { inData in_data 0 64 } } }
	adler32Result { ap_none {  { adler32Result in_data 0 64 } } }
	num_out { ap_fifo {  { num_out_din fifo_data 1 32 }  { num_out_full_n fifo_status 0 1 }  { num_out_write fifo_update 1 1 } } }
	num_out1 { ap_fifo {  { num_out1_din fifo_data 1 32 }  { num_out1_full_n fifo_status 0 1 }  { num_out1_write fifo_update 1 1 } } }
	size_out { ap_fifo {  { size_out_din fifo_data 1 32 }  { size_out_full_n fifo_status 0 1 }  { size_out_write fifo_update 1 1 } } }
	len_out { ap_fifo {  { len_out_din fifo_data 1 64 }  { len_out_full_n fifo_status 0 1 }  { len_out_write fifo_update 1 1 } } }
	adler_out { ap_fifo {  { adler_out_din fifo_data 1 64 }  { adler_out_full_n fifo_status 0 1 }  { adler_out_write fifo_update 1 1 } } }
	inData_out { ap_fifo {  { inData_out_din fifo_data 1 64 }  { inData_out_full_n fifo_status 0 1 }  { inData_out_write fifo_update 1 1 } } }
	adler32Result_out { ap_fifo {  { adler32Result_out_din fifo_data 1 64 }  { adler32Result_out_full_n fifo_status 0 1 }  { adler32Result_out_write fifo_update 1 1 } } }
}
