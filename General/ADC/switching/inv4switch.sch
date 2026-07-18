v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -70 20 -50 {lab=B}
N -60 -60 -20 -60 {lab=A}
N -20 -100 -20 -60 {lab=A}
N -20 -60 -20 -20 {lab=A}
N 20 -60 90 -60 {lab=B}
N -80 -160 20 -160 {lab=vdd}
N 20 -160 20 -130 {lab=vdd}
N 20 -160 40 -160 {lab=vdd}
N 40 -160 40 -100 {lab=vdd}
N 20 -100 40 -100 {lab=vdd}
N 20 -20 40 -20 {lab=vss}
N 40 -20 40 40 {lab=vss}
N -80 40 40 40 {lab=vss}
N 20 10 20 40 {lab=vss}
C {symbols/nfet_03v3.sym} 0 -20 0 0 {name=M1
L=0.3u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 0 -100 0 0 {name=M2
L=0.3u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -60 -60 0 0 {name=p1 lab=A}
C {opin.sym} 90 -60 0 0 {name=p2 lab=B}
C {title.sym} -110 150 0 0 {name=l3 author="Chandra"}
C {iopin.sym} -80 -160 0 1 {name=p3 lab=vdd}
C {iopin.sym} -80 40 0 1 {name=p4 lab=vss}
