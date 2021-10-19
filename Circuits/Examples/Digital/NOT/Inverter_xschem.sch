v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1490 -1490 1490 -1460 { lab=VDD}
N 1490 -1400 1490 -1370 { lab=VOUT}
N 1490 -1340 1505 -1340 { lab=GND}
N 1505 -1340 1505 -1310 { lab=GND}
N 1490 -1310 1505 -1310 { lab=GND}
N 1490 -1430 1510 -1430 { lab=VDD}
N 1510 -1460 1510 -1430 { lab=VDD}
N 1490 -1460 1510 -1460 { lab=VDD}
N 1430 -1430 1450 -1430 { lab=VIN}
N 1430 -1430 1430 -1340 { lab=VIN}
N 1430 -1340 1450 -1340 { lab=VIN}
N 1490 -1380 1610 -1380 { lab=VOUT}
N 1380 -1380 1430 -1380 { lab=VIN}
N 1490 -1310 1490 -1280 { lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1470 -1340 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 1470 -1430 0 0 {name=M2
L=0.15
W=2
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
C {devices/opin.sym} 1610 -1380 0 0 {name=p1 lab=VOUT}
C {devices/ipin.sym} 1380 -1380 0 0 {name=p2 lab=VIN}
C {devices/iopin.sym} 1490 -1490 3 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 1490 -1280 1 0 {name=p4 lab=GND}
