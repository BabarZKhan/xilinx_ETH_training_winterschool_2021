# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/dynamic_region/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName aes256CbcDecryptKernel_1]
log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/cipherModeProcess_4u_256u_U0/grp_cipherModeParallel_4u_256u_s_fu_98/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/readBlock_128u_4u_256u_107_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/scanMultiChannel_4u_256u_128u_104_U0/splitText_4u_256u_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/writeOut_128u_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/aes256CbcDecryptKernel_1/$hierName/mergeResult_128u_4u_U0/ap_str_blocking_n -time 0 -quiet 

