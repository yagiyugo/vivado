set C_TypeInfoList {{ 
"lenet5_ap2" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"index": [[], {"scalar": "int"}] }],["0","1","2","3","4","5","6","7","8"],""],
 "0": [ "pool_dot", [[], {"array": ["9", [3,16,14,14]]}],""],
 "1": [ "in", [[], {"array": ["9", [32,32,10000]]}],""],
 "2": [ "fc_weight", [[], {"array": [ {"scalar": "int"}, [4,400,400,2]]}],""],
 "3": [ "fc_in", [[], {"array": ["9", [400]]}],""],
 "4": [ "fc_dot", [[], {"array": ["9", [3,120]]}],""],
 "5": [ "fc_bias", [[], {"array": ["9", [4,120]]}],""],
 "6": [ "conv_weight", [[], {"array": [ {"scalar": "int"}, [3,16,6,5,5,2]]}],""],
 "7": [ "conv_dot", [[], {"array": ["9", [3,16,28,28]]}],""],
 "8": [ "conv_bias", [[], {"array": ["9", [3,16]]}],""], 
"9": [ "ap_fixed<30, 10, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 30}}],[[], {"scalar": { "int": 10}}],[[], {"scalar": { "10": 5}}],[[], {"scalar": { "11": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"10": [ "sc_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"11": [ "sc_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}]
}}
set moduleName lenet5_ap2
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {lenet5_ap2}
set C_modelType { int 32 }
set C_modelArgList {
	{ index int 32 regular  }
	{ conv_bias_V int 30 regular {array 48 { 1 3 } 1 1 } {global 0}  }
	{ conv_dot_V int 30 regular {array 37632 { 2 3 } 1 1 } {global 2}  }
	{ conv_weight int 32 regular {array 14400 { 1 1 } 1 1 } {global 0}  }
	{ in_V int 30 regular {array 10240000 { 1 3 } 3 1 } {global 0}  }
	{ pool_dot_V int 30 regular {array 9408 { 2 3 } 1 1 } {global 2}  }
	{ fc_in_V int 30 regular {array 400 { 2 3 } 1 1 } {global 2}  }
	{ fc_dot_V int 0 regular {array 3 { 2 3 } 1 1 } {global 2}  }
	{ fc_weight int 32 regular {array 1280000 { 1 1 } 3 1 } {global 0}  }
	{ fc_bias_V int 30 regular {array 480 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "index", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "index","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "conv_bias_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READONLY", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "conv_bias.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "conv_dot_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "conv_dot.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 15,"step" : 1},{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "conv_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv_weight","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 15,"step" : 1},{"low" : 0,"up" : 5,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "in_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READONLY", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "in.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 9999,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "pool_dot_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "pool_dot.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 15,"step" : 1},{"low" : 0,"up" : 13,"step" : 1},{"low" : 0,"up" : 13,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "fc_in_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "fc_in.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 399,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "fc_dot_V", "interface" : "memory", "bitwidth" : 0, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "fc_dot.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "fc_weight", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc_weight","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 399,"step" : 1},{"low" : 0,"up" : 399,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "fc_bias_V", "interface" : "memory", "bitwidth" : 30, "direction" : "READONLY", "bitSlice":[{"low":0,"up":29,"cElement": [{"cName": "fc_bias.V","cData": "int30","bit_use": { "low": 0,"up": 29},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 119,"step" : 1}]}]}], "extern" : 1} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ index sc_in sc_lv 32 signal 0 } 
	{ conv_bias_V_address0 sc_out sc_lv 6 signal 1 } 
	{ conv_bias_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_bias_V_q0 sc_in sc_lv 30 signal 1 } 
	{ conv_dot_V_address0 sc_out sc_lv 16 signal 2 } 
	{ conv_dot_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_dot_V_we0 sc_out sc_logic 1 signal 2 } 
	{ conv_dot_V_d0 sc_out sc_lv 30 signal 2 } 
	{ conv_dot_V_q0 sc_in sc_lv 30 signal 2 } 
	{ conv_weight_address0 sc_out sc_lv 14 signal 3 } 
	{ conv_weight_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_weight_q0 sc_in sc_lv 32 signal 3 } 
	{ conv_weight_address1 sc_out sc_lv 14 signal 3 } 
	{ conv_weight_ce1 sc_out sc_logic 1 signal 3 } 
	{ conv_weight_q1 sc_in sc_lv 32 signal 3 } 
	{ in_V_address0 sc_out sc_lv 24 signal 4 } 
	{ in_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_V_q0 sc_in sc_lv 30 signal 4 } 
	{ pool_dot_V_address0 sc_out sc_lv 14 signal 5 } 
	{ pool_dot_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ pool_dot_V_we0 sc_out sc_logic 1 signal 5 } 
	{ pool_dot_V_d0 sc_out sc_lv 30 signal 5 } 
	{ pool_dot_V_q0 sc_in sc_lv 30 signal 5 } 
	{ fc_in_V_address0 sc_out sc_lv 9 signal 6 } 
	{ fc_in_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ fc_in_V_we0 sc_out sc_logic 1 signal 6 } 
	{ fc_in_V_d0 sc_out sc_lv 30 signal 6 } 
	{ fc_in_V_q0 sc_in sc_lv 30 signal 6 } 
	{ fc_dot_V_address0 sc_out sc_lv 2 signal 7 } 
	{ fc_dot_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ fc_dot_V_we0 sc_out sc_logic 1 signal 7 } 
	{ fc_dot_V_d0 sc_out sc_lv 0 signal 7 } 
	{ fc_dot_V_q0 sc_in sc_lv 0 signal 7 } 
	{ fc_weight_address0 sc_out sc_lv 21 signal 8 } 
	{ fc_weight_ce0 sc_out sc_logic 1 signal 8 } 
	{ fc_weight_q0 sc_in sc_lv 32 signal 8 } 
	{ fc_weight_address1 sc_out sc_lv 21 signal 8 } 
	{ fc_weight_ce1 sc_out sc_logic 1 signal 8 } 
	{ fc_weight_q1 sc_in sc_lv 32 signal 8 } 
	{ fc_bias_V_address0 sc_out sc_lv 9 signal 9 } 
	{ fc_bias_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ fc_bias_V_q0 sc_in sc_lv 30 signal 9 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "index", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index", "role": "default" }} , 
 	{ "name": "conv_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_bias_V", "role": "address0" }} , 
 	{ "name": "conv_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_bias_V", "role": "ce0" }} , 
 	{ "name": "conv_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "conv_bias_V", "role": "q0" }} , 
 	{ "name": "conv_dot_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_dot_V", "role": "address0" }} , 
 	{ "name": "conv_dot_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_dot_V", "role": "ce0" }} , 
 	{ "name": "conv_dot_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_dot_V", "role": "we0" }} , 
 	{ "name": "conv_dot_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "conv_dot_V", "role": "d0" }} , 
 	{ "name": "conv_dot_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "conv_dot_V", "role": "q0" }} , 
 	{ "name": "conv_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv_weight", "role": "address0" }} , 
 	{ "name": "conv_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weight", "role": "ce0" }} , 
 	{ "name": "conv_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weight", "role": "q0" }} , 
 	{ "name": "conv_weight_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "conv_weight", "role": "address1" }} , 
 	{ "name": "conv_weight_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_weight", "role": "ce1" }} , 
 	{ "name": "conv_weight_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_weight", "role": "q1" }} , 
 	{ "name": "in_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_V", "role": "address0" }} , 
 	{ "name": "in_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ce0" }} , 
 	{ "name": "in_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "in_V", "role": "q0" }} , 
 	{ "name": "pool_dot_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "pool_dot_V", "role": "address0" }} , 
 	{ "name": "pool_dot_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_dot_V", "role": "ce0" }} , 
 	{ "name": "pool_dot_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_dot_V", "role": "we0" }} , 
 	{ "name": "pool_dot_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "pool_dot_V", "role": "d0" }} , 
 	{ "name": "pool_dot_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "pool_dot_V", "role": "q0" }} , 
 	{ "name": "fc_in_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fc_in_V", "role": "address0" }} , 
 	{ "name": "fc_in_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_in_V", "role": "ce0" }} , 
 	{ "name": "fc_in_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_in_V", "role": "we0" }} , 
 	{ "name": "fc_in_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "fc_in_V", "role": "d0" }} , 
 	{ "name": "fc_in_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "fc_in_V", "role": "q0" }} , 
 	{ "name": "fc_dot_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fc_dot_V", "role": "address0" }} , 
 	{ "name": "fc_dot_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_dot_V", "role": "ce0" }} , 
 	{ "name": "fc_dot_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_dot_V", "role": "we0" }} , 
 	{ "name": "fc_dot_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "fc_dot_V", "role": "d0" }} , 
 	{ "name": "fc_dot_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "fc_dot_V", "role": "q0" }} , 
 	{ "name": "fc_weight_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "fc_weight", "role": "address0" }} , 
 	{ "name": "fc_weight_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_weight", "role": "ce0" }} , 
 	{ "name": "fc_weight_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc_weight", "role": "q0" }} , 
 	{ "name": "fc_weight_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "fc_weight", "role": "address1" }} , 
 	{ "name": "fc_weight_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_weight", "role": "ce1" }} , 
 	{ "name": "fc_weight_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc_weight", "role": "q1" }} , 
 	{ "name": "fc_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fc_bias_V", "role": "address0" }} , 
 	{ "name": "fc_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc_bias_V", "role": "ce0" }} , 
 	{ "name": "fc_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "fc_bias_V", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "lenet5_ap2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_dot_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_weight", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_dot_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fc_in_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fc_dot_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fc_weight", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet5_ap2_dcmp_6bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet5_ap2_sitodpcud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet5_ap2_mac_mudEe_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lenet5_ap2 {
		index {Type I LastRead 0 FirstWrite -1}
		conv_bias_V {Type I LastRead 3 FirstWrite -1}
		conv_dot_V {Type IO LastRead 16 FirstWrite 4}
		conv_weight {Type I LastRead 12 FirstWrite -1}
		in_V {Type I LastRead 7 FirstWrite -1}
		pool_dot_V {Type IO LastRead 12 FirstWrite 16}
		fc_in_V {Type IO LastRead 10 FirstWrite 8}
		fc_dot_V {Type IO LastRead 13 FirstWrite 7}
		fc_weight {Type I LastRead 12 FirstWrite -1}
		fc_bias_V {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2766552", "Max" : "2766552"}
	, {"Name" : "Interval", "Min" : "2766553", "Max" : "2766553"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	index { ap_none {  { index in_data 0 32 } } }
	conv_bias_V { ap_memory {  { conv_bias_V_address0 mem_address 1 6 }  { conv_bias_V_ce0 mem_ce 1 1 }  { conv_bias_V_q0 mem_dout 0 30 } } }
	conv_dot_V { ap_memory {  { conv_dot_V_address0 mem_address 1 16 }  { conv_dot_V_ce0 mem_ce 1 1 }  { conv_dot_V_we0 mem_we 1 1 }  { conv_dot_V_d0 mem_din 1 30 }  { conv_dot_V_q0 mem_dout 0 30 } } }
	conv_weight { ap_memory {  { conv_weight_address0 mem_address 1 14 }  { conv_weight_ce0 mem_ce 1 1 }  { conv_weight_q0 mem_dout 0 32 }  { conv_weight_address1 mem_address 1 14 }  { conv_weight_ce1 mem_ce 1 1 }  { conv_weight_q1 mem_dout 0 32 } } }
	in_V { ap_memory {  { in_V_address0 mem_address 1 24 }  { in_V_ce0 mem_ce 1 1 }  { in_V_q0 mem_dout 0 30 } } }
	pool_dot_V { ap_memory {  { pool_dot_V_address0 mem_address 1 14 }  { pool_dot_V_ce0 mem_ce 1 1 }  { pool_dot_V_we0 mem_we 1 1 }  { pool_dot_V_d0 mem_din 1 30 }  { pool_dot_V_q0 mem_dout 0 30 } } }
	fc_in_V { ap_memory {  { fc_in_V_address0 mem_address 1 9 }  { fc_in_V_ce0 mem_ce 1 1 }  { fc_in_V_we0 mem_we 1 1 }  { fc_in_V_d0 mem_din 1 30 }  { fc_in_V_q0 mem_dout 0 30 } } }
	fc_dot_V { ap_memory {  { fc_dot_V_address0 mem_address 1 2 }  { fc_dot_V_ce0 mem_ce 1 1 }  { fc_dot_V_we0 mem_we 1 1 }  { fc_dot_V_d0 mem_din 1 0 }  { fc_dot_V_q0 mem_dout 0 0 } } }
	fc_weight { ap_memory {  { fc_weight_address0 mem_address 1 21 }  { fc_weight_ce0 mem_ce 1 1 }  { fc_weight_q0 mem_dout 0 32 }  { fc_weight_address1 mem_address 1 21 }  { fc_weight_ce1 mem_ce 1 1 }  { fc_weight_q1 mem_dout 0 32 } } }
	fc_bias_V { ap_memory {  { fc_bias_V_address0 mem_address 1 9 }  { fc_bias_V_ce0 mem_ce 1 1 }  { fc_bias_V_q0 mem_dout 0 30 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
	{ in_V 3 }
	{ fc_weight 3 }
}
