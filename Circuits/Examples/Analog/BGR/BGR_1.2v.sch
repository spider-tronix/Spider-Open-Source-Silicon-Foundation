v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 990 -2830 990 -2780 { lab=GND}
N 990 -2780 1110 -2780 { lab=GND}
N 1110 -2780 1220 -2780 { lab=GND}
N 1220 -2830 1220 -2780 { lab=GND}
N 1110 -2860 1110 -2780 { lab=GND}
N 990 -3120 990 -2960 { lab=#net1}
N 1030 -3150 1180 -3150 { lab=#net2}
N 990 -3210 1050 -3210 { lab=#net2}
N 1050 -3210 1050 -3150 { lab=#net2}
N 990 -3450 990 -3400 { lab=VDD}
N 990 -3450 1220 -3450 { lab=VDD}
N 1220 -3450 1220 -3400 { lab=VDD}
N 1030 -3370 1180 -3370 { lab=#net3}
N 990 -3340 990 -3210 { lab=#net2}
N 990 -3210 990 -3180 { lab=#net2}
N 1220 -3340 1220 -3180 { lab=#net3}
N 1120 -3370 1120 -3310 { lab=#net3}
N 1120 -3310 1220 -3310 { lab=#net3}
N 1520 -3450 1520 -3400 { lab=VDD}
N 1220 -3450 1520 -3450 { lab=VDD}
N 1220 -2780 1520 -2780 { lab=GND}
N 1520 -2830 1520 -2780 { lab=GND}
N 1520 -2950 1520 -2890 { lab=#net4}
N 1520 -3160 1710 -3160 { lab=VOUT}
N 510 -3080 510 -3050 { lab=GND}
N 510 -3180 510 -3140 { lab=VDD}
N 990 -2960 990 -2890 { lab=#net1}
N 1220 -2930 1220 -2890 { lab=#net5}
N 1220 -3120 1220 -3090 { lab=#net6}
N 1220 -3030 1220 -2990 { lab=#net7}
N 1520 -3340 1520 -3160 { lab=VOUT}
N 1520 -3160 1520 -3120 { lab=VOUT}
N 1520 -3060 1520 -3010 { lab=#net8}
N 960 -3370 990 -3370 { lab=VDD}
N 960 -3420 960 -3370 { lab=VDD}
N 960 -3420 990 -3420 { lab=VDD}
N 1220 -3370 1240 -3370 { lab=VDD}
N 1240 -3410 1240 -3370 { lab=VDD}
N 1220 -3410 1240 -3410 { lab=VDD}
N 1520 -3370 1550 -3370 { lab=VDD}
N 1550 -3420 1550 -3370 { lab=VDD}
N 1520 -3420 1550 -3420 { lab=VDD}
N 1220 -3310 1310 -3310 { lab=#net3}
N 1310 -3370 1310 -3310 { lab=#net3}
N 1310 -3370 1480 -3370 { lab=#net3}
N 970 -3150 990 -3150 { lab=#net1}
N 970 -3150 970 -3100 { lab=#net1}
N 970 -3100 990 -3100 { lab=#net1}
N 1220 -3150 1240 -3150 { lab=#net6}
N 1240 -3150 1240 -3110 { lab=#net6}
N 1220 -3110 1240 -3110 { lab=#net6}
N 1030 -2860 1110 -2860 { lab=GND}
N 1110 -2860 1180 -2860 { lab=GND}
N 970 -2860 990 -2860 { lab=#net1}
N 970 -2900 970 -2860 { lab=#net1}
N 970 -2900 990 -2900 { lab=#net1}
N 1220 -2860 1230 -2860 { lab=#net5}
N 1230 -2900 1230 -2860 { lab=#net5}
N 1220 -2900 1230 -2900 { lab=#net5}
N 1460 -2860 1480 -2860 { lab=GND}
N 1460 -2860 1460 -2780 { lab=GND}
N 1520 -2860 1540 -2860 { lab=#net4}
N 1540 -2900 1540 -2860 { lab=#net4}
N 1520 -2900 1540 -2900 { lab=#net4}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 1010 -3150 0 1 {name=M1
L=0.9
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 1200 -3150 0 0 {name=M2
L=0.9
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1010 -3370 0 1 {name=M4
L=1
W=1
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1200 -3370 0 0 {name=M5
L=1
W=1
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 1220 -2960 0 0 {name=R1
value=3334
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1110 -2780 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1500 -3370 0 0 {name=M3
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/res.sym} 1520 -2980 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1710 -3160 2 0 {name=l2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 510 -3110 0 0 {name=V1 value=5}
C {devices/gnd.sym} 510 -3050 0 0 {name=l3 lab=GND}
C {devices/code.sym} 170 -3200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/vdd.sym} 510 -3180 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} 190 -2970 0 0 {name=SPICE only_toplevel=false value=".tran 1u 1
.save all
.control
run 
plot v(VOUT)
plot i(Vmeas_I2)
plot i(Vmeas_I3)
.endc
"}
C {devices/vdd.sym} 1270 -3450 0 0 {name=l5 lab=VDD}
C {devices/vsource.sym} 1220 -3060 0 0 {name=Vmeas_I2 value=0}
C {devices/vsource.sym} 1520 -3090 0 0 {name=Vmeas_I3 value=0}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1010 -2860 0 1 {name=M6
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1200 -2860 0 0 {name=M7
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1500 -2860 0 0 {name=M8
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
