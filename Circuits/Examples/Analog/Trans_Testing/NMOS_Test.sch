v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1930 -970 1930 -940 { lab=GND}
N 1930 -1060 1930 -1030 { lab=Vout}
N 1930 -1230 1930 -1180 { lab=VDD}
N 1910 -1000 1930 -1000 { lab=GND}
N 1910 -1000 1910 -960 { lab=GND}
N 1910 -960 1930 -960 { lab=GND}
N 1970 -1000 1980 -1000 { lab=Vout}
N 1980 -1050 1980 -1000 { lab=Vout}
N 1930 -1050 1980 -1050 { lab=Vout}
N 1930 -1120 1930 -1060 { lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} 1950 -1000 0 1 {name=Mb1
L=1
W=1
nf=1 
mult=400
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1930 -940 0 0 {name=l6 lab=GND}
C {devices/isource.sym} 1930 -1150 0 0 {name=I2 value=1.5m}
C {devices/vdd.sym} 1930 -1230 0 0 {name=l9 lab=VDD}
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
C {devices/code_shown.sym} 1210 -1140 0 0 {name=s1 only_toplevel=false value=".tran 1u 1
.control
run
plot v(Vout)
.endc
.save all"}
C {devices/lab_pin.sym} 1930 -1090 0 0 {name=l1 sig_type=std_logic lab=Vout}
