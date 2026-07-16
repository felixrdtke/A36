v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -10 0 10 {lab=B}
N -80 -0 -40 -0 {lab=A}
N -40 -40 -40 -0 {lab=A}
N -40 0 -40 40 {lab=A}
N 0 70 0 90 {lab=0}
N 0 -90 0 -70 {lab=VDD}
N 0 0 70 0 {lab=B}
C {symbols/nfet_03v3.sym} -20 40 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -20 -40 0 0 {name=M2
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
C {ipin.sym} -80 0 0 0 {name=p1 lab=A}
C {opin.sym} 70 0 0 0 {name=p2 lab=B}
C {gnd.sym} 0 90 0 0 {name=l1 lab=0}
C {vdd.sym} 0 -90 0 0 {name=l2 lab=VDD}
C {title.sym} -110 150 0 0 {name=l3 author="Chandra"}
