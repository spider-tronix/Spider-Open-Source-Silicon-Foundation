v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2080 -1210 2080 -1150 { lab=VOUT}
N 2080 -1120 2100 -1120 { lab=GND}
N 2100 -1120 2100 -1070 { lab=GND}
N 2080 -1430 2080 -1380 { lab=VDD}
N 2080 -1320 2080 -1270 { lab=#net1}
N 2080 -1350 2100 -1350 { lab=VDD}
N 2100 -1400 2100 -1350 { lab=VDD}
N 2080 -1400 2100 -1400 { lab=VDD}
N 2080 -1240 2100 -1240 { lab=#net1}
N 2100 -1290 2100 -1240 { lab=#net1}
N 2080 -1090 2080 -1040 { lab=GND}
N 2000 -1040 2080 -1040 { lab=GND}
N 2000 -1040 2000 -1010 { lab=GND}
N 1910 -1090 1910 -1040 { lab=GND}
N 1910 -1040 2000 -1040 { lab=GND}
N 2080 -1070 2100 -1070 { lab=GND}
N 1910 -1120 1930 -1120 { lab=GND}
N 1930 -1120 1930 -1070 { lab=GND}
N 1910 -1070 1930 -1070 { lab=GND}
N 1780 -1350 2040 -1350 { lab=A}
N 1780 -1240 2040 -1240 { lab=B}
N 2010 -1120 2040 -1120 { lab=A}
N 2010 -1350 2010 -1120 { lab=A}
N 1840 -1120 1870 -1120 { lab=B}
N 1840 -1240 1840 -1120 { lab=B}
N 1910 -1180 1910 -1150 { lab=VOUT}
N 1910 -1180 2080 -1180 { lab=VOUT}
N 2080 -1180 2160 -1180 { lab=VOUT}
N 2100 -1350 2100 -1290 {}
C {sky130_fd_pr/nfet_01v8.sym} 1890 -1120 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 2060 -1120 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 2060 -1240 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 2060 -1350 0 0 {name=M4
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
C {devices/iopin.sym} 2080 -1430 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 2000 -1010 1 0 {name=p2 lab=GND}
C {devices/iopin.sym} 2160 -1180 0 0 {name=p3 lab=VOUT}
C {devices/iopin.sym} 1780 -1240 0 1 {name=p4 lab=B}
C {devices/iopin.sym} 1780 -1350 0 1 {name=p5 lab=A}
