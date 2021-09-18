v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 650 -460 650 -430 { lab=GND}
N 650 -560 650 -520 { lab=VDD}
N 1200 -450 1200 -420 { lab=GND}
N 960 -450 960 -420 { lab=GND}
N 1200 -710 1200 -660 { lab=VDD}
N 1200 -600 1200 -510 { lab=#net1}
N 1000 -480 1160 -480 { lab=#net1}
N 1130 -550 1200 -550 { lab=#net1}
N 1130 -550 1130 -480 { lab=#net1}
N 960 -920 960 -510 { lab=#net2}
N 960 -1100 960 -980 { lab=#net3}
N 960 -1100 1080 -1100 { lab=#net3}
N 1080 -1100 1080 -1070 { lab=#net3}
N 1080 -1010 1080 -970 { lab=#net4}
N 960 -790 1060 -790 { lab=#net2}
N 1080 -910 1080 -880 {}
C {devices/vsource.sym} 650 -490 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 650 -430 0 0 {name=l1 lab=GND}
C {devices/code.sym} 320 -620 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/vdd.sym} 650 -560 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 980 -480 0 1 {name=M1
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
C {devices/gnd.sym} 960 -420 0 1 {name=l3 lab=GND}
C {devices/gnd.sym} 1200 -420 0 1 {name=l4 lab=GND}
C {devices/vdd.sym} 1200 -710 0 1 {name=l6 lab=VDD}
C {devices/isource.sym} 1200 -630 0 1 {name=I0 value=1u}
C {devices/code_shown.sym} 270 -410 0 0 {name=SPICE only_toplevel=false value=".tran 1u 1m
.save all
.control
run 
plot v(VOUT)
plot v(VGS)
plot i(Vmeas)
.endc
"}
C {devices/lab_pin.sym} 1380 -570 2 1 {name=l7 sig_type=std_logic lab=VOUT
}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -480 0 0 {name=M2
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
C {devices/res.sym} 960 -950 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1090 -790 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1080 -1040 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1080 -940 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1080 -880 0 1 {name=l5 lab=GND}
