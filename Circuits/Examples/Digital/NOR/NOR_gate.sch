v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 790 -300 790 -240 { lab=Vout}
N 790 -210 810 -210 { lab=GND}
N 810 -210 810 -160 { lab=GND}
N 790 -520 790 -470 { lab=VDD}
N 790 -410 790 -360 { lab=#net1}
N 790 -440 810 -440 { lab=VDD}
N 810 -490 810 -440 { lab=VDD}
N 790 -490 810 -490 { lab=VDD}
N 790 -330 810 -330 { lab=#net1}
N 810 -380 810 -330 { lab=#net1}
N 790 -380 810 -380 { lab=#net1}
N 790 -180 790 -130 { lab=GND}
N 710 -130 790 -130 { lab=GND}
N 710 -130 710 -100 { lab=GND}
N 620 -180 620 -130 { lab=GND}
N 620 -130 710 -130 { lab=GND}
N 790 -160 810 -160 { lab=GND}
N 620 -210 640 -210 { lab=GND}
N 640 -210 640 -160 { lab=GND}
N 620 -160 640 -160 { lab=GND}
N 490 -440 750 -440 { lab=A}
N 490 -330 750 -330 { lab=B}
N 720 -210 750 -210 { lab=A}
N 720 -440 720 -210 { lab=A}
N 550 -210 580 -210 { lab=B}
N 550 -330 550 -210 { lab=B}
N 220 -370 220 -330 { lab=VDD}
N 220 -270 220 -230 { lab=GND}
N 330 -280 330 -250 { lab=GND}
N 90 -280 90 -250 { lab=GND}
N 90 -380 90 -340 { lab=A}
N 330 -380 330 -340 { lab=B}
N 620 -270 620 -240 { lab=Vout}
N 620 -270 790 -270 { lab=Vout}
N 790 -270 870 -270 { lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} 600 -210 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 770 -210 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 770 -330 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 770 -440 0 0 {name=M4
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
C {devices/gnd.sym} 710 -100 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 790 -520 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 490 -330 0 0 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 490 -440 0 0 {name=l4 sig_type=std_logic lab=A}
C {devices/vsource.sym} 220 -300 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 220 -230 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 220 -370 0 0 {name=l6 lab=VDD}
C {devices/sqwsource.sym} 90 -310 0 0 {name=v1 vhi=1.8 freq=10}
C {devices/sqwsource.sym} 330 -310 0 0 {name=v2 vhi=1.8 freq=5}
C {devices/gnd.sym} 90 -250 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 330 -250 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 90 -380 2 0 {name=l9 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 330 -380 2 0 {name=l10 sig_type=std_logic lab=B}
C {devices/code.sym} 950 -460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 960 -270 0 0 {name=SPICE only_toplevel=false value=".tran 1us 1s
.control
run
plot v(Vout)
.endc
.save all"}
C {devices/lab_pin.sym} 870 -270 2 0 {name=l11 sig_type=std_logic lab=Vout}
