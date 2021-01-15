# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/dynamic_region/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName Adler32Kernel_1]
log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/adler32_16_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/splitStrm_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readDataM2S_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/readLenM2S_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/writeS2M_U0/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_idle
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/dynamic_region/Adler32Kernel_1/$hierName/Adler32Kernel_entry3_U0/ap_str_blocking_n -time 0 -quiet 

