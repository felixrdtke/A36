v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -400 10 -380 {lab=A}
N 10 -320 10 -290 {lab=C}
N 10 -230 10 -200 {lab=B}
N -30 -330 -30 -260 {lab=SEL}
N -30 -340 -30 -330 {lab=SEL}
N -30 -350 -30 -340 {lab=SEL}
N -70 -170 -30 -170 {lab=SEL_N}
N -70 -430 -70 -170 {lab=SEL_N}
N -70 -430 -30 -430 {lab=SEL_N}
N -210 -370 -190 -370 {lab=SEL}
N -210 -330 -100 -330 {lab=A}
N -100 -390 -30 -390 {lab=A}
N -30 -390 -10 -390 {lab=A}
N -10 -390 0 -390 {lab=A}
N 0 -390 10 -390 {lab=A}
N -210 -290 -110 -290 {lab=B}
N -110 -290 -110 -210 {lab=B}
N -110 -210 10 -210 {lab=B}
N -190 -310 -30 -310 {lab=SEL}
N 10 -310 110 -310 {lab=C}
N 10 -140 120 -140 {lab=C}
N 110 -310 120 -310 {lab=C}
N 120 -310 160 -310 {lab=C}
N 10 -470 10 -460 {lab=C}
N 10 -470 130 -470 {lab=C}
N 130 -470 130 -310 {lab=C}
N 130 -310 130 -140 {lab=C}
N 120 -140 130 -140 {lab=C}
N -190 -370 -190 -310 {lab=SEL}
N -210 -410 -70 -410 {lab=SEL_N}
N 10 -430 40 -430 {lab=vdd}
N 10 -350 40 -350 {lab=vss}
N 10 -260 40 -260 {lab=vdd}
N 10 -170 40 -170 {lab=vss}
N -100 -390 -100 -330 {lab=A}
C {symbols/nfet_03v3.sym} -10 -350 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -10 -430 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -10 -260 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} -10 -170 0 0 {name=M4
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
C {ipin.sym} -210 -330 0 0 {name=p1 lab=A}
C {ipin.sym} -210 -290 0 0 {name=p2 lab=B}
C {ipin.sym} -210 -370 0 0 {name=p3 lab=SEL
}
C {opin.sym} 160 -310 0 0 {name=p4 lab=C}
C {ipin.sym} -210 -410 0 0 {name=p5 lab=SEL_N
}
C {title.sym} -450 20 0 0 {name=l1 author="Chandra"}
C {iopin.sym} -210 -500 0 1 {name=p6 lab=vdd}
C {iopin.sym} -210 -470 0 1 {name=p7 lab=vss}
C {lab_wire.sym} 40 -430 0 1 {name=p8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 40 -350 0 1 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 40 -260 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 40 -170 0 1 {name=p11 sig_type=std_logic lab=vss}
