if { [info exists ::env(USER_PRE_SIM_SCRIPT) ] } {
  source $::env(USER_PRE_SIM_SCRIPT)
}
if { [info exists ::env(VITIS_WAVEFORM) ] } {
  if {[file exists $::env(VITIS_WAVEFORM)] == 1} {
    open_wave_config $::env(VITIS_WAVEFORM)
  }
}
if { [file exists preprocess_profile.tcl] } {
  source -notrace preprocess_profile.tcl
}
puts "We are running Simulator for infinite time. Added some default signals in the waveform. You can pause simulation and add signals and then resume the simulaion again."
puts ""
puts "Stopping at breakpoint in simulator also stops the host code execution"
puts ""
if { [info exists ::env(VITIS_LAUNCH_WAVEFORM_GUI) ] } {
  run 1ns
} else {
  run all
}
if { [file exists profile.tcl] } {
  source -notrace profile.tcl
}
if { [info exists ::env(VITIS_LAUNCH_WAVEFORM_BATCH) ] } {
  if { [info exists ::env(USER_POST_SIM_SCRIPT) ] } {
    source $::env(USER_POST_SIM_SCRIPT)
  }
  quit
}
