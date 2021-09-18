v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 720 -400 720 -370 { lab=GND}
N 720 -500 720 -460 { lab=VDD}
N 1030 -640 1030 -590 { lab=VDD}
N 1030 -530 1030 -450 { lab=VGS}
N 1010 -420 1030 -420 { lab=GND}
N 1010 -420 1010 -390 { lab=GND}
N 1010 -390 1030 -390 { lab=GND}
N 1030 -390 1030 -360 { lab=GND}
N 1070 -420 1230 -420 { lab=VGS}
N 1270 -390 1270 -360 { lab=GND}
N 1270 -420 1290 -420 { lab=GND}
N 1290 -420 1290 -390 { lab=GND}
N 1270 -390 1290 -390 { lab=GND}
N 1030 -490 1130 -490 { lab=VGS}
N 1130 -490 1130 -420 { lab=VGS}
N 1270 -530 1270 -450 { lab=VOUT}
N 1270 -710 1270 -670 { lab=VDD}
N 1270 -480 1330 -480 { lab=VOUT}
N 1270 -610 1270 -590 { lab=#net1}
C {devices/vsource.sym} 720 -430 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 720 -370 0 0 {name=l1 lab=GND}
C {devices/code.sym} 390 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/vdd.sym} 720 -500 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -420 0 1 {name=M1
L=1
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
C {devices/gnd.sym} 1030 -360 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1270 -360 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 1030 -640 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 1270 -710 0 0 {name=l6 lab=VDD}
C {devices/isource.sym} 1030 -560 0 0 {name=I0 value=1u}
C {devices/code_shown.sym} 340 -350 0 0 {name=SPICE only_toplevel=false value=".tran 1u 1m
.save all
.control
run 
plot v(VOUT)
plot v(VGS)
plot i(Vmeas)
.endc
"}
C {devices/res_ac.sym} 1270 -640 0 0 {name=R1
value=1MEG
ac=1k
m=1}
C {devices/lab_pin.sym} 1330 -480 2 0 {name=l7 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 1160 -420 1 0 {name=l8 sig_type=std_logic lab=VGS}
C {sky130_fd_pr/nfet_01v8.sym} 1250 -420 0 0 {name=M2
L=1
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
C {devices/vsource.sym} 1270 -560 0 0 {name=Vmeas value=0}
