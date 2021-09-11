v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -1690 -3650 -1690 -3620 { lab=A}
N -1530 -3650 -1530 -3620 { lab=VDD}
N -1610 -3650 -1610 -3620 { lab=B}
N -1690 -3560 -1690 -3520 { lab=GND}
N -1690 -3520 -1530 -3520 { lab=GND}
N -1610 -3560 -1610 -3520 { lab=GND}
N -1530 -3560 -1530 -3520 { lab=GND}
N -1180 -3680 -1180 -3660 { lab=VOUT}
N -1180 -3660 -1040 -3660 { lab=VOUT}
N -1040 -3680 -1040 -3660 { lab=VOUT}
N -1040 -3660 -1040 -3630 { lab=VOUT}
N -1040 -3600 -1030 -3600 { lab=#net1}
N -1030 -3600 -1030 -3570 { lab=#net1}
N -1040 -3570 -1030 -3570 { lab=#net1}
N -1040 -3520 -1030 -3520 { lab=GND}
N -1030 -3520 -1030 -3490 { lab=GND}
N -1040 -3490 -1030 -3490 { lab=GND}
N -1040 -3490 -1040 -3470 { lab=GND}
N -1220 -3710 -1220 -3520 { lab=B}
N -1220 -3520 -1080 -3520 { lab=B}
N -1100 -3600 -1080 -3600 { lab=A}
N -1100 -3710 -1100 -3600 { lab=A}
N -1100 -3710 -1080 -3710 { lab=A}
N -1280 -3620 -1100 -3620 { lab=A}
N -1040 -3710 -1030 -3710 { lab=VDD}
N -1030 -3740 -1030 -3710 { lab=VDD}
N -1040 -3740 -1030 -3740 { lab=VDD}
N -1180 -3710 -1170 -3710 { lab=VDD}
N -1170 -3740 -1170 -3710 { lab=VDD}
N -1180 -3740 -1170 -3740 { lab=VDD}
N -1180 -3770 -1180 -3740 { lab=VDD}
N -1180 -3770 -1040 -3770 { lab=VDD}
N -1040 -3770 -1040 -3740 { lab=VDD}
N -1110 -3800 -1110 -3770 { lab=VDD}
N -1040 -3660 -930 -3660 { lab=VOUT}
N -1040 -3570 -1040 -3550 { lab=#net1}
N -1280 -3600 -1220 -3600 { lab=B}
C {devices/code.sym} -1940 -3800 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} -2030 -3620 0 0 {name=SPICE only_toplevel=false value=".tran 1u 1
.save all"}
C {devices/vsource.sym} -1530 -3590 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} -1530 -3650 0 0 {name=l1 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -1060 -3600 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -1060 -3520 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -1060 -3710 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -1200 -3710 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} -1530 -3520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -1040 -3470 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -1110 -3800 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} -930 -3660 2 0 {name=l5 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -1690 -3650 0 0 {name=l6 sig_type=std_logic lab=A
}
C {devices/lab_pin.sym} -1610 -3650 0 0 {name=l7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -1280 -3620 0 0 {name=l8 sig_type=std_logic lab=A
}
C {devices/lab_pin.sym} -1280 -3600 0 0 {name=l9 sig_type=std_logic lab=B}
C {devices/sqwsource.sym} -1690 -3590 0 0 {name=V1 vhi=1.8 freq=1/4}
C {devices/sqwsource.sym} -1610 -3590 0 0 {name=V2 vhi=1.8 freq=1/2.1}
