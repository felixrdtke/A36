v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -260 -80 -260 {lab=in-}
N 320 -140 340 -140 {lab=in+}
N 160 -210 180 -210 {lab=#net1}
N 160 -240 180 -240 {lab=#net1}
N -190 -210 -170 -210 {lab=#net2}
N -190 -240 -170 -240 {lab=#net2}
N 260 -140 280 -140 {lab=#net1}
N 260 -170 260 -140 {lab=#net1}
N 260 -170 280 -170 {lab=#net1}
N -290 -140 -270 -140 {lab=#net2}
N -290 -170 -270 -170 {lab=#net2}
N -270 -170 -270 -140 {lab=#net2}
N -120 -90 -100 -90 {lab=vss}
N -120 -60 -100 -60 {lab=vss}
N -120 -90 -120 -60 {lab=vss}
N -100 -60 -100 -30 {lab=vss}
N 0 100 20 100 {lab=vss}
N -50 -140 -50 -90 {lab=iref}
N -100 -140 -50 -140 {lab=iref}
N -100 -160 -100 -120 {lab=iref}
N 0 0 0 40 {lab=out}
N -190 -240 -190 -210 {lab=#net2}
N 160 -320 160 -240 {lab=#net1}
N 180 -240 180 -210 {lab=#net1}
N 0 100 0 130 {lab=vss}
N -170 -320 -170 -240 {lab=#net2}
N 20 70 20 100 {lab=vss}
N 0 70 20 70 {lab=vss}
N -20 -300 -20 -270 {lab=vdd}
N -20 -270 0 -270 {lab=vdd}
N -20 -300 0 -300 {lab=vdd}
N 0 -60 20 -60 {lab=vss}
N 0 -60 0 -30 {lab=vss}
N 20 -90 20 -60 {lab=vss}
N 0 -90 20 -90 {lab=vss}
N 0 260 20 260 {lab=vss}
N 0 160 0 200 {lab=#net3}
N 0 260 0 290 {lab=vss}
N 20 230 20 260 {lab=vss}
N 0 230 20 230 {lab=vss}
N -290 -110 -290 160 {lab=#net3}
N -290 160 -0 160 {lab=#net3}
N -0 160 280 160 {lab=#net3}
N 280 -110 280 160 {lab=#net3}
N -80 230 -40 230 {lab=#net3}
N -80 160 -80 230 {lab=#net3}
N -60 70 -40 70 {lab=out}
N -60 0 -60 70 {lab=out}
N -100 70 -60 70 {lab=out}
N 160 -350 180 -350 {lab=vdd}
N 160 -380 180 -380 {lab=vdd}
N -190 -350 -170 -350 {lab=vdd}
N -190 -380 -170 -380 {lab=vdd}
N -190 -380 -190 -350 {lab=vdd}
N 180 -380 180 -350 {lab=vdd}
N -130 -350 120 -350 {lab=in-}
N -170 -410 -170 -380 {lab=vdd}
N -170 -410 0 -410 {lab=vdd}
N 0 -450 0 -410 {lab=vdd}
N 160 -410 160 -380 {lab=vdd}
N 0 -410 160 -410 {lab=vdd}
N -130 -210 120 -210 {lab=in-}
N 0 -240 0 -210 {lab=in-}
N 40 -270 40 -210 {lab=in-}
N -170 -180 -170 0 {lab=out}
N 160 -180 160 0 {lab=out}
N -170 0 160 0 {lab=out}
N 0 -210 0 -120 {lab=in-}
N -60 -90 -40 -90 {lab=iref}
N -360 -140 -330 -140 {lab=in+}
N -80 -260 -80 -210 {lab=in-}
N 0 -410 0 -300 {lab=vdd}
N 80 -350 80 -210 {lab=in-}
N -290 -280 -290 -170 {lab=#net2}
N -290 -280 -170 -280 {lab=#net2}
N 280 -280 280 -170 {lab=#net1}
N 160 -280 280 -280 {lab=#net1}
C {symbols/pfet_03v3.sym} -150 -210 0 1 {name=M3
L=2u
W=5u
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
C {symbols/pfet_03v3.sym} 140 -210 0 0 {name=M4
L=2u
W=5u
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
C {opin.sym} -100 70 2 0 {name=p5 lab=out}
C {ipin.sym} -100 -260 0 0 {name=p4 lab=in-}
C {ipin.sym} 340 -140 2 0 {name=p1 lab=in+}
C {iopin.sym} 0 -450 3 0 {name=p3 lab=vdd
}
C {iopin.sym} 0 290 1 0 {name=p6 lab=vss}
C {symbols/pfet_03v3.sym} 300 -140 0 1 {name=M5
L=1u
W=80u
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
C {symbols/pfet_03v3.sym} -310 -140 0 0 {name=M6
L=1u
W=80u
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
C {symbols/nfet_03v3.sym} -80 -90 0 1 {name=M9
L=2u
W=1u
u
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
C {lab_wire.sym} -100 -30 2 0 {name=p2 sig_type=std_logic lab=vss
}
C {symbols/nfet_03v3.sym} -20 70 0 0 {name=M10
L=2u
W=10u
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
C {lab_wire.sym} 0 130 2 0 {name=p7 sig_type=std_logic lab=vss
}
C {iopin.sym} -100 -160 3 0 {name=p8 lab=iref

}
C {symbols/pfet_03v3.sym} 20 -270 0 1 {name=M12
L=4u
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
C {symbols/nfet_03v3.sym} -20 -90 0 0 {name=M14
L=2u
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
C {lab_wire.sym} 0 -30 2 0 {name=p9 sig_type=std_logic lab=vss
}
C {symbols/nfet_03v3.sym} -20 230 0 0 {name=M7
L=2u
W=10u
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
C {symbols/pfet_03v3.sym} -150 -350 0 1 {name=M8
L=2u
W=5u
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
C {symbols/pfet_03v3.sym} 140 -350 0 0 {name=M11
L=2u
W=5u
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
C {lab_wire.sym} -360 -140 2 0 {name=p10 sig_type=std_logic lab=in+
}
