v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -290 10 -270 {lab=A}
N 10 -210 10 -180 {lab=C}
N 10 -120 10 -90 {lab=B}
N -30 -220 -30 -150 {lab=SEL}
N -30 -230 -30 -220 {lab=SEL}
N -30 -240 -30 -230 {lab=SEL}
N -70 -60 -30 -60 {lab=#net1}
N -70 -320 -70 -60 {lab=#net1}
N -70 -320 -30 -320 {lab=#net1}
N -210 -260 -190 -260 {lab=SEL}
N -210 -220 -100 -220 {lab=A}
N -100 -250 -100 -220 {lab=A}
N -100 -250 -30 -250 {lab=A}
N -30 -280 -30 -250 {lab=A}
N -30 -280 -10 -280 {lab=A}
N -10 -280 0 -280 {lab=A}
N 0 -280 10 -280 {lab=A}
N -210 -180 -110 -180 {lab=B}
N -110 -180 -110 -100 {lab=B}
N -110 -100 10 -100 {lab=B}
N -190 -200 -30 -200 {lab=SEL}
N 10 -200 110 -200 {lab=C}
N 10 -30 120 -30 {lab=C}
N 110 -200 120 -200 {lab=C}
N 120 -200 160 -200 {lab=C}
N 10 -360 10 -350 {lab=C}
N 10 -360 130 -360 {lab=C}
N 130 -360 130 -200 {lab=C}
N 130 -200 130 -30 {lab=C}
N 120 -30 130 -30 {lab=C}
N -190 -260 -190 -200 {lab=SEL}
N -100 -290 -70 -290 {lab=#net1}
N -190 -280 -190 -260 {lab=SEL}
N -190 -290 -190 -280 {lab=SEL}
N 10 -320 50 -320 {lab=vdd}
N 10 -240 50 -240 {lab=vss}
N 10 -150 50 -150 {lab=vdd}
N 10 -60 50 -60 {lab=vss}
N -150 -330 -150 -310 {lab=vdd}
N -150 -270 -150 -250 {lab=vss}
C {symbols/nfet_03v3.sym} -10 -240 0 0 {name=M1
L=0.28u
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
C {symbols/pfet_03v3.sym} -10 -320 0 0 {name=M2
L=0.28u
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
C {symbols/pfet_03v3.sym} -10 -150 0 0 {name=M3
L=0.28u
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
C {symbols/nfet_03v3.sym} -10 -60 0 0 {name=M4
L=0.28u
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
C {ipin.sym} -210 -220 0 0 {name=p1 lab=A}
C {ipin.sym} -210 -180 0 0 {name=p2 lab=B}
C {ipin.sym} -210 -260 0 0 {name=p3 lab=SEL
}
C {opin.sym} 160 -200 0 0 {name=p4 lab=C}
C {title.sym} -450 20 0 0 {name=l1 author="Chandra"}
C {adc/switching/inv4switch.sym} -70 -290 0 0 {name=x1}
C {iopin.sym} -220 -340 0 1 {name=p5 lab=vdd}
C {iopin.sym} -220 -320 0 1 {name=p6 lab=vss}
C {lab_wire.sym} 50 -320 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 50 -240 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 50 -150 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 50 -60 0 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_wire.sym} -150 -330 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -150 -250 0 0 {name=p12 sig_type=std_logic lab=vss}
