v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1440 -1050 1440 -1030 { lab=GND}
N 1440 -1140 1440 -1110 { lab=VDD}
N 1440 -1030 1440 -1000 { lab=GND}
N 1440 -1180 1440 -1140 { lab=VDD}
N 2210 -970 2230 -970 { lab=GND}
N 2230 -970 2230 -920 { lab=GND}
N 2210 -920 2230 -920 { lab=GND}
N 2210 -940 2210 -920 { lab=GND}
N 2210 -920 2210 -870 { lab=GND}
N 2210 -1050 2210 -1000 { lab=#net1}
N 2210 -1080 2230 -1080 { lab=#net1}
N 2230 -1080 2230 -1040 { lab=#net1}
N 2210 -1040 2230 -1040 { lab=#net1}
N 2130 -1080 2170 -1080 { lab=V2}
N 2210 -1150 2210 -1110 { lab=V1}
N 2210 -1340 2230 -1340 { lab=VDD}
N 2230 -1380 2230 -1340 { lab=VDD}
N 2210 -1380 2230 -1380 { lab=VDD}
N 2210 -1380 2210 -1370 { lab=VDD}
N 2210 -1430 2210 -1380 { lab=VDD}
N 2210 -1310 2210 -1230 { lab=#net2}
N 2150 -1340 2170 -1340 { lab=IB3}
N 2060 -1140 2060 -970 { lab=V1}
N 2060 -1140 2210 -1140 { lab=V1}
N 2450 -1340 2470 -1340 { lab=VDD}
N 2470 -1380 2470 -1340 { lab=VDD}
N 2450 -1380 2470 -1380 { lab=VDD}
N 2450 -1380 2450 -1370 { lab=VDD}
N 2390 -1340 2410 -1340 { lab=IB3}
N 2210 -1430 2450 -1430 { lab=VDD}
N 2450 -1430 2450 -1380 { lab=VDD}
N 2450 -1080 2470 -1080 { lab=#net3}
N 2470 -1080 2470 -1040 { lab=#net3}
N 2450 -1040 2470 -1040 { lab=#net3}
N 2450 -1310 2450 -1280 { lab=V2}
N 2450 -1280 2450 -1110 { lab=V2}
N 2450 -1050 2450 -1040 { lab=#net3}
N 2370 -1080 2410 -1080 { lab=V2}
N 2650 -1340 2670 -1340 { lab=VDD}
N 2670 -1380 2670 -1340 { lab=VDD}
N 2650 -1380 2670 -1380 { lab=VDD}
N 2650 -1380 2650 -1370 { lab=VDD}
N 2590 -1340 2610 -1340 { lab=IB3}
N 2590 -1340 2590 -1280 { lab=IB3}
N 2590 -1280 2650 -1280 { lab=IB3}
N 2650 -1430 2650 -1380 { lab=VDD}
N 2650 -1310 2650 -1280 { lab=IB3}
N 2450 -1430 2650 -1430 { lab=VDD}
N 2650 -1280 2650 -1170 { lab=IB3}
N 2150 -1400 2150 -1340 { lab=IB3}
N 2150 -1400 2390 -1400 { lab=IB3}
N 2390 -1400 2390 -1340 { lab=IB3}
N 2390 -1400 2590 -1400 { lab=IB3}
N 2590 -1400 2590 -1340 { lab=IB3}
N 2060 -970 2170 -970 { lab=V1}
N 1850 -1170 1850 -1120 { lab=IB3}
N 1850 -1060 1850 -1030 { lab=GND}
N 2130 -1080 2130 -1020 { lab=V2}
N 2130 -1020 2370 -1020 { lab=V2}
N 2370 -1080 2370 -1020 { lab=V2}
N 2370 -1150 2370 -1080 { lab=V2}
N 2370 -1150 2450 -1150 { lab=V2}
N 2210 -1230 2210 -1210 { lab=#net2}
N 2450 -1040 2450 -980 { lab=#net3}
N 2450 -920 2450 -870 { lab=GND}
C {devices/code.sym} 1570 -1150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 1210 -1140 0 0 {name=s1 only_toplevel=false value=".tran 10u 1
.control
run
plot v(V1)
plot v(V2)
plot v(IB3)
plot i(Vmeas1)
plot i(Vmeas2)
.endc
.save all"}
C {devices/vsource.sym} 1440 -1080 0 0 {name=V1 value=3}
C {devices/gnd.sym} 1440 -1000 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 1440 -1180 0 0 {name=l11 lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 2190 -970 0 0 {name=Mb4
L=1
W=1
nf=1 
mult=280
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 2210 -870 0 0 {name=l34 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 2190 -1080 0 0 {name=Mb7
L=1
W=1
nf=1 
mult=280
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2190 -1340 0 0 {name=Mb5
L=1
W=1
nf=1
mult=1500
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2430 -1340 0 0 {name=Mb3
L=1
W=1
nf=1
mult=1500
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2430 -1080 0 0 {name=Mb6
L=1
W=1
nf=1 
mult=70
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 2450 -870 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 2630 -1340 0 0 {name=Mb8
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
C {devices/lab_pin.sym} 2650 -1170 0 0 {name=l24 sig_type=std_logic lab=IB3}
C {devices/vdd.sym} 2430 -1430 0 0 {name=l1 lab=VDD}
C {devices/isource.sym} 1850 -1090 0 0 {name=I0 value=1u}
C {devices/lab_pin.sym} 1850 -1170 0 0 {name=l15 sig_type=std_logic lab=IB3}
C {devices/gnd.sym} 1850 -1030 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 2210 -1180 0 0 {name=Vmeas1 value=0}
C {devices/lab_pin.sym} 2060 -1030 0 0 {name=l3 sig_type=std_logic lab=V1}
C {devices/lab_pin.sym} 2130 -1070 0 0 {name=l4 sig_type=std_logic lab=V2}
C {devices/vsource.sym} 2450 -950 0 0 {name=Vmeas2 value=0}
