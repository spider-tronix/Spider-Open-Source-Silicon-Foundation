v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 570 -390 570 -330 { lab=#net1}
N 570 -270 570 -220 { lab=#net2}
N 480 -300 530 -300 { lab=#net3}
N 570 -360 620 -360 { lab=#net1}
N 640 -250 640 -220 { lab=#net2}
N 570 -250 640 -250 { lab=#net2}
N 340 -300 340 -250 { lab=Vin}
N 340 -250 340 -220 { lab=Vin}
N 440 -300 480 -300 { lab=#net3}
N 340 -300 380 -300 { lab=Vin}
N 570 -160 570 -110 { lab=GND}
N 640 -160 640 -130 { lab=GND}
N 570 -130 640 -130 { lab=GND}
N 340 -160 340 -130 { lab=GND}
N 570 -480 570 -450 { lab=VDD}
N 180 -160 180 -130 { lab=GND}
N 180 -270 180 -220 { lab=VDD}
N 680 -360 700 -360 { lab=Vout}
N 570 -300 590 -300 { lab=#net2}
N 590 -300 590 -250 { lab=#net2}
C {sky130_fd_pr/nfet_01v8.sym} 550 -300 0 0 {name=M1
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
C {devices/res.sym} 570 -190 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 570 -420 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 650 -360 3 0 {name=C1
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 640 -190 0 0 {name=C2
m=1
value=40u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 410 -300 1 0 {name=C3
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 340 -190 0 0 {name=V1 value="0.9 AC 1"}
C {devices/gnd.sym} 340 -130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 570 -110 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 570 -480 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 340 -300 0 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 700 -360 2 0 {name=l5 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 180 -190 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 180 -130 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 180 -270 0 0 {name=l7 lab=VDD}
C {devices/code.sym} 830 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 840 -250 0 0 {name=SPICE only_toplevel=false value=".ac dec 20 1 1e12
.control
run 
plot db(Vout)
.endc
.save all"}
