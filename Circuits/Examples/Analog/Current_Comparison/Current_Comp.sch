v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1450 -1340 1450 -1310 { lab=GND}
N 1450 -1440 1450 -1400 { lab=VDD}
N 1760 -1660 1760 -1610 { lab=VDD}
N 1760 -1470 1760 -1390 { lab=VGS_N}
N 1740 -1360 1760 -1360 { lab=GND}
N 1740 -1360 1740 -1330 { lab=GND}
N 1740 -1330 1760 -1330 { lab=GND}
N 1760 -1330 1760 -1300 { lab=GND}
N 1800 -1360 1960 -1360 { lab=VGS_N}
N 1760 -1430 1860 -1430 { lab=VGS_N}
N 1860 -1430 1860 -1360 { lab=VGS_N}
N 2000 -1330 2000 -1300 { lab=GND}
N 2000 -1360 2010 -1360 { lab=GND}
N 2010 -1360 2010 -1330 { lab=GND}
N 2000 -1330 2010 -1330 { lab=GND}
N 2000 -1540 2000 -1390 { lab=VOUT}
N 2000 -1650 2000 -1600 { lab=VDD}
N 1980 -1570 2000 -1570 { lab=VDD}
N 1980 -1600 1980 -1570 { lab=VDD}
N 1980 -1600 2000 -1600 { lab=VDD}
N 2040 -1570 2060 -1570 { lab=VGS_P}
N 1760 -1610 1760 -1570 { lab=VDD}
N 1760 -1510 1760 -1470 { lab=VGS_N}
N 2210 -1340 2210 -1300 { lab=GND}
N 2210 -1540 2210 -1400 { lab=VGS_P}
N 2060 -1570 2170 -1570 { lab=VGS_P}
N 2210 -1650 2210 -1600 { lab=VDD}
N 2130 -1570 2130 -1510 { lab=VGS_P}
N 2130 -1510 2210 -1510 { lab=VGS_P}
N 2210 -1570 2230 -1570 { lab=VDD}
N 2230 -1610 2230 -1570 { lab=VDD}
N 2210 -1610 2230 -1610 { lab=VDD}
C {devices/vsource.sym} 1450 -1370 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 1450 -1310 0 0 {name=l1 lab=GND}
C {devices/code.sym} 1190 -1630 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/vdd.sym} 1450 -1440 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 1780 -1360 0 1 {name=M1
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
C {devices/gnd.sym} 1760 -1300 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 1760 -1660 0 0 {name=l5 lab=VDD}
C {devices/code_shown.sym} 1200 -1470 0 0 {name=SPICE only_toplevel=false value=".tran 1u 1m
.save all
.control
run 
plot v(VOUT)
plot v(VGS_N)
plot v(VGS_P)
.endc
"}
C {devices/lab_pin.sym} 1890 -1360 1 0 {name=l8 sig_type=std_logic lab=VGS_N}
C {sky130_fd_pr/nfet_01v8.sym} 1980 -1360 0 0 {name=M3
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
C {devices/gnd.sym} 2000 -1300 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2020 -1570 0 1 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 2000 -1650 0 0 {name=l10 lab=VDD}
C {devices/isource.sym} 1760 -1540 0 0 {name=I0 value=10u}
C {devices/isource.sym} 2210 -1370 0 0 {name=I1 value=15u}
C {devices/gnd.sym} 2210 -1300 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2190 -1570 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 2210 -1650 0 0 {name=l6 lab=VDD}
C {devices/lab_pin.sym} 2110 -1570 1 0 {name=l7 sig_type=std_logic lab=VGS_P}
C {devices/lab_pin.sym} 2000 -1460 2 0 {name=l11 sig_type=std_logic lab=VOUT}
