v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 490 -840 490 -720 { lab=#net1}
N 680 -840 680 -720 { lab=#net2}
N 680 -780 800 -780 { lab=#net2}
N 370 -780 490 -780 { lab=#net1}
N 490 -950 490 -900 { lab=VDD}
N 490 -950 680 -950 { lab=VDD}
N 680 -950 680 -900 { lab=VDD}
N 530 -870 640 -870 { lab=Vb}
N 330 -950 330 -810 { lab=VDD}
N 330 -950 490 -950 { lab=VDD}
N 680 -950 840 -950 { lab=VDD}
N 840 -950 840 -810 { lab=VDD}
N 490 -660 490 -630 { lab=#net3}
N 490 -630 680 -630 { lab=#net3}
N 680 -660 680 -630 { lab=#net3}
N 570 -630 570 -600 { lab=#net3}
N 370 -370 800 -370 { lab=#net4}
N 330 -750 330 -400 { lab=#net4}
N 840 -750 840 -400 { lab=Vout}
N 330 -450 420 -450 { lab=#net4}
N 420 -450 420 -370 { lab=#net4}
N 330 -340 330 -300 { lab=GND}
N 840 -340 840 -300 { lab=GND}
N 570 -540 570 -510 { lab=GND}
N 590 -1040 590 -950 { lab=VDD}
N 230 -690 450 -690 { lab=Vin1}
N 720 -690 960 -690 { lab=Vin2}
N 840 -570 960 -570 { lab=Vout}
N 590 -870 590 -810 { lab=Vb}
N 1210 -630 1210 -580 { lab=GND}
N 1350 -630 1350 -580 { lab=GND}
N 1350 -760 1350 -690 { lab=Vb}
N 1210 -750 1210 -690 { lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 470 -690 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 700 -690 2 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 350 -370 2 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 820 -370 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 660 -870 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 510 -870 2 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 820 -780 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 350 -780 2 0 {name=M8
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
C {devices/isource.sym} 570 -570 0 0 {name=I0 value=1m}
C {devices/gnd.sym} 570 -510 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 840 -300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 330 -300 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 590 -1040 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 230 -690 0 0 {name=l5 sig_type=std_logic lab=Vin1}
C {devices/lab_pin.sym} 960 -690 2 0 {name=l6 sig_type=std_logic lab=Vin2
}
C {devices/lab_pin.sym} 960 -570 2 0 {name=l7 sig_type=std_logic lab=Vout
}
C {devices/lab_pin.sym} 590 -810 2 0 {name=l8 sig_type=std_logic lab=Vb
}
C {devices/vsource.sym} 1210 -660 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 1350 -660 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} 1210 -580 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1350 -580 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 1350 -760 2 0 {name=l12 sig_type=std_logic lab=Vb
}
C {devices/vdd.sym} 1210 -750 0 0 {name=l11 lab=VDD}
C {devices/code.sym} 1300 -460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 1060 -450 0 0 {name=s1 only_toplevel=false value=".ac dec 20 1 1e12
.control
run
plot db(Vout)
.endc
.save all"}
