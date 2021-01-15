# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
num { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
size { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
len { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
adler { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
inData { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
adler32Result { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
event_start { }
}
dict set axilite_register_dict control $port_control


