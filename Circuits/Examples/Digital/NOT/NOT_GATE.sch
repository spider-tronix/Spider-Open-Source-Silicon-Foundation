v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 650 -970 650 -940 { lab=VDD}
N 650 -880 650 -850 { lab=VOUT}
N 650 -790 650 -765 { lab=GND}
N 650 -820 665 -820 { lab=GND}
N 665 -820 665 -790 { lab=GND}
N 650 -790 665 -790 { lab=GND}
N 650 -910 670 -910 { lab=VDD}
N 670 -940 670 -910 { lab=VDD}
N 650 -940 670 -940 { lab=VDD}
N 590 -910 610 -910 { lab=VIN}
N 590 -910 590 -820 { lab=VIN}
N 590 -820 610 -820 { lab=VIN}
N 560 -865 590 -865 { lab=VIN}
N 650 -860 770 -860 { lab=VOUT}
N 365 -920 365 -885 { lab=VDD}
N 365 -825 365 -790 { lab=GND}
N 265 -825 265 -805 { lab=GND}
N 265 -805 365 -805 { lab=GND}
N 265 -920 265 -885 { lab=VIN}
C {sky130_fd_pr/nfet_01v8.sym} 630 -820 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 630 -910 0 0 {name=M2
L=0.15
W=1
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 650 -970 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 650 -765 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 560 -865 0 0 {name=l3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 770 -860 2 0 {name=l4 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} 365 -855 0 0 {name=V1 value=1.8}
C {devices/vdd.sym} 365 -920 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 365 -790 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 265 -855 0 0 {name=VIN value=0}
C {devices/lab_pin.sym} 265 -920 1 0 {name=l7 sig_type=std_logic lab=VIN
}
C {devices/code.sym} 75 -1105 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"}
C {devices/code_shown.sym} 65 -850 0 0 {name=SPICE only_toplevel=false value=".dc VIN 0 1.8 0.1
.save all
.plot v(VIN)
.plot v(VOUT)"}
