# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/dynamic_region/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName wide_vadd_1]
log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v1_rd_proc5_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/wide_vadd_1/$hierName/grp_dataflow_in_loop_VITIS_LOOP_88_1_fu_142/v2_rd_add_proc_U0/ap_str_blocking_n -time 0 -quiet 

