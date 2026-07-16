v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -180 65 -180 {lab=#net1}
N -60 -60 -40 -60 {lab=NO}
N -40 -180 -20 -180 {lab=NO}
N -40 -60 60 -60 {lab=NO}
N 60 -60 65 -60 {lab=NO}
N 105 -120 105 -90 {lab=A}
N 106.25 -220 106.25 -211.25 {lab=#net2}
N 106.25 -220 240 -220 {lab=#net2}
N 240 -220 240 -121.25 {lab=#net2}
N 105 -30 240 -30 {lab=B}
N 240 -120 240 -30 {lab=B}
N -60 -120 105 -120 {lab=A}
N 105 -148.75 105 -120 {lab=A}
N -40 -180 -40 -60 {lab=NO}
C {symbols/nfet_03v3.sym} 85 -60 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 85 -180 0 0 {name=M2
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
C {ipin.sym} -60 -120 0 0 {name=p1 lab=A}
C {opin.sym} 240 -120 0 0 {name=p2 lab=B}
C {inv4switch.sym} 80 -180 0 0 {name=x1}
C {ipin.sym} -60 -60 0 0 {name=p3 lab=ON}
