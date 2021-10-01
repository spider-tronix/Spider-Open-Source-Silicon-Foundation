v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1670 -1740 1670 -1670 { lab=#net1}
N 1670 -1710 1710 -1710 { lab=#net1}
N 1670 -1610 1670 -1560 { lab=#net2}
N 1590 -1640 1630 -1640 { lab=#net3}
N 1500 -1640 1530 -1640 { lab=Vin}
N 1670 -1820 1670 -1800 { lab=VDD}
N 1670 -1500 1670 -1470 { lab=GND}
N 1750 -1500 1750 -1470 { lab=GND}
N 1770 -1710 1800 -1710 { lab=Vout}
N 1340 -1650 1340 -1620 { lab=VDD}
N 1340 -1560 1340 -1530 { lab=GND}
N 1250 -1560 1250 -1530 { lab=GND}
N 1250 -1650 1250 -1620 { lab=Vin}
N 1670 -1640 1700 -1640 { lab=#net2}
N 1700 -1640 1700 -1600 { lab=#net2}
N 1670 -1600 1700 -1600 { lab=#net2}
N 1670 -1580 1750 -1580 { lab=#net2}
N 1750 -1580 1750 -1560 { lab=#net2}
C {sky130_fd_pr/nfet_01v8.sym} 1650 -1640 0 0 {name=M1
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
C {devices/res.sym} 1670 -1530 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1670 -1770 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1750 -1530 0 0 {name=C1
m=1
value=40u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1740 -1710 3 0 {name=C2
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1500 -1640 0 0 {name=l1 sig_type=std_logic lab=Vin}
C {devices/capa.sym} 1560 -1640 1 0 {name=C3
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1670 -1820 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1670 -1470 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1750 -1470 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1800 -1710 2 0 {name=l5 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} 1340 -1590 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 1340 -1650 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1340 -1530 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 1250 -1590 0 0 {name=V2 value="0.9 AC 1"}
C {devices/gnd.sym} 1250 -1530 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 1250 -1650 0 0 {name=l8 sig_type=std_logic lab=Vin}
C {devices/code.sym} 1930 -1760 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"
}
C {devices/code_shown.sym} 1940 -1580 0 0 {name=s2 only_toplevel=false value=".ac dec 20 1 1e12
.control
run
plot db(v(Vout))
plot v(Vin)
.endc
.save all"}
