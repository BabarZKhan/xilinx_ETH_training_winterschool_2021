# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/dynamic_region/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName krnl_idct_1]
log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/execute_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/write_blocks_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_int_512_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/read_blocks_ap_uint_512_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_Block_split25_proc_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/krnl_idct_1/$hierName/grp_krnl_idct_dataflow_fu_92/krnl_idct_dataflow_entry6_U0/ap_str_blocking_n -time 0 -quiet 

