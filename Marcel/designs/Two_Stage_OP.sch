v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 140 160 140 {lab=#net1}
N -150 140 40 140 {lab=#net1}
N 160 90 160 140 {lab=#net1}
N -170 140 -150 140 {lab=#net1}
N -170 -40 -170 30 {lab=#net2}
N 160 -40 160 30 {lab=VG6}
N 280 120 330 120 {lab=out}
N -230 60 -210 60 {lab=in-}
N 200 60 220 60 {lab=in+}
N -170 60 -150 60 {lab=#net1}
N -150 60 -150 90 {lab=#net1}
N -170 90 -150 90 {lab=#net1}
N 140 60 160 60 {lab=#net1}
N 140 90 160 90 {lab=#net1}
N 140 60 140 90 {lab=#net1}
N 160 -70 180 -70 {lab=vdd}
N 160 -100 180 -100 {lab=vdd}
N -190 -70 -170 -70 {lab=vdd}
N -190 -100 -170 -100 {lab=vdd}
N -310 0 -290 0 {lab=vdd}
N -310 -30 -310 0 {lab=vdd}
N -310 -30 -290 -30 {lab=vdd}
N 280 0 300 0 {lab=vdd}
N 280 -30 300 -30 {lab=vdd}
N 300 -30 300 0 {lab=vdd}
N -310 300 -290 300 {lab=vss}
N -310 330 -290 330 {lab=vss}
N -310 300 -310 330 {lab=vss}
N 280 300 300 300 {lab=vss}
N 300 300 300 330 {lab=vss}
N 280 330 300 330 {lab=vss}
N 160 -180 280 -180 {lab=vdd}
N -250 300 -190 300 {lab=#net3}
N -290 250 -250 250 {lab=#net3}
N -190 300 240 300 {lab=#net3}
N -290 360 -270 360 {lab=vss}
N 280 330 280 360 {lab=vss}
N -250 0 -170 0 {lab=#net2}
N 160 0 240 0 {lab=VG6}
N -230 210 -210 210 {lab=vss}
N -230 240 -210 240 {lab=vss}
N -230 210 -230 240 {lab=vss}
N -210 240 -210 270 {lab=vss}
N 0 240 20 240 {lab=vss}
N -170 210 -60 210 {lab=iref}
N -140 160 -140 210 {lab=iref}
N -210 160 -140 160 {lab=iref}
N -210 140 -210 180 {lab=iref}
N 0 140 0 180 {lab=#net1}
N -290 -180 -290 -30 {lab=vdd}
N 280 -180 280 -30 {lab=vdd}
N -190 -100 -190 -70 {lab=vdd}
N 160 -180 160 -100 {lab=vdd}
N 180 -100 180 -70 {lab=vdd}
N 0 -230 0 -180 {lab=vdd}
N -250 250 -250 300 {lab=#net3}
N 0 360 0 380 {lab=vss}
N -270 360 280 360 {lab=vss}
N 40 -70 120 -70 {lab=VG12}
N -170 90 -170 140 {lab=#net1}
N -290 330 -290 360 {lab=vss}
N 0 240 0 270 {lab=vss}
N -170 -180 -170 -100 {lab=vdd}
N -290 -180 -170 -180 {lab=vdd}
N -170 -180 160 -180 {lab=vdd}
N -60 210 -40 210 {lab=iref}
N 20 210 20 240 {lab=vss}
N 0 210 20 210 {lab=vss}
N 280 30 280 270 {lab=out}
N -290 30 -290 270 {lab=#net3}
N -20 -100 -20 -70 {lab=vdd}
N -20 -70 0 -70 {lab=vdd}
N -20 -100 0 -100 {lab=vdd}
N -80 150 -80 210 {lab=iref}
N -80 40 -80 150 {lab=iref}
N 0 70 20 70 {lab=vss}
N 0 70 0 100 {lab=vss}
N 20 40 20 70 {lab=vss}
N 0 40 20 40 {lab=vss}
N -130 -70 -130 -20 {lab=VG12}
N -80 40 -40 40 {lab=iref}
N 0 -40 0 10 {lab=VG12}
N 0 -180 0 -100 {lab=vdd}
N 0 -20 80 -20 {lab=VG12}
N 80 -70 80 -20 {lab=VG12}
N -130 -20 -0 -20 {lab=VG12}
C {symbols/nfet_03v3.sym} -190 60 0 0 {name=M1
L=1u
W=40u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 180 60 0 1 {name=M2
L=1u
W=40u
u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -150 -70 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 140 -70 0 0 {name=M4
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
C {opin.sym} 330 120 0 0 {name=p5 lab=out}
C {ipin.sym} -230 60 0 0 {name=p4 lab=in-}
C {ipin.sym} 220 60 2 0 {name=p1 lab=in+}
C {iopin.sym} 0 -230 3 0 {name=p3 lab=vdd
}
C {iopin.sym} 0 380 1 0 {name=p6 lab=vss}
C {symbols/pfet_03v3.sym} -270 0 0 1 {name=M5
L=1u
W=80u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 0 0 0 {name=M6
L=1u
W=80u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -270 300 0 1 {name=M7
L=1u
W=60u
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
C {symbols/nfet_03v3.sym} 260 300 0 0 {name=M8
L=1u
W=60u
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
C {symbols/nfet_03v3.sym} -190 210 0 1 {name=M9
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
C {lab_wire.sym} -210 270 2 0 {name=p2 sig_type=std_logic lab=vss
}
C {symbols/nfet_03v3.sym} -20 210 0 0 {name=M10
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
C {lab_wire.sym} 0 270 2 0 {name=p7 sig_type=std_logic lab=vss
}
C {iopin.sym} -210 140 3 0 {name=p8 lab=iref

}
C {symbols/pfet_03v3.sym} 20 -70 0 1 {name=M12
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
C {symbols/nfet_03v3.sym} -20 40 0 0 {name=M14
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
C {lab_wire.sym} 0 100 2 0 {name=p9 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 190 0 2 0 {name=p10 sig_type=std_logic lab=VG6
}
C {lab_wire.sym} 10 -20 2 0 {name=p11 sig_type=std_logic lab=VG12
}
