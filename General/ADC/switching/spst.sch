v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -120 240 -30 {lab=B}
N -0 -220 -0 -200 {lab=vdd}
N 0 -160 0 -140 {lab=vss}
N 240 -120 280 -120 {lab=B}
N 240 -230 240 -120 {lab=B}
N -60 -60 60 -60 {lab=ON}
N -40 -180 -40 -60 {lab=ON}
N -60 -120 100 -120 {lab=A}
N 100 -150 100 -90 {lab=A}
N 100 -180 140 -180 {lab=vdd}
N 100 -60 140 -60 {lab=vss}
N 100 -230 100 -210 {lab=B}
N 100 -230 240 -230 {lab=B}
N 50 -180 60 -180 {lab=#net1}
N 100 -30 240 -30 {lab=B}
C {symbols/nfet_03v3.sym} 80 -60 0 0 {name=M1
L=0.3u
W=5u
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
C {symbols/pfet_03v3.sym} 80 -180 0 0 {name=M2
L=0.3u
W=10u
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
C {adc/switching/inv4switch.sym} 80 -180 0 0 {name=x1}
C {ipin.sym} -60 -60 0 0 {name=p3 lab=ON}
C {iopin.sym} -90 -250 0 1 {name=p4 lab=vdd}
C {iopin.sym} -90 -220 0 1 {name=p5 lab=vss}
C {lab_wire.sym} 0 -220 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 0 -140 0 0 {name=p7 sig_type=std_logic lab=vss}
C {iopin.sym} -60 -120 0 1 {name=p1 lab=A}
C {iopin.sym} 280 -120 0 0 {name=p2 lab=B}
C {lab_wire.sym} 140 -180 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 140 -60 0 0 {name=p9 sig_type=std_logic lab=vss}
