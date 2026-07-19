v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -140 -150 -70 {lab=#net1}
N 50 -140 50 -70 {lab=out}
N -110 -170 10 -170 {lab=#net2}
N -50 -230 -50 -170 {lab=#net2}
N 50 -230 50 -200 {lab=#net3}
N 50 -100 100 -100 {lab=out}
N 50 -170 70 -170 {lab=#net3}
N 50 -200 70 -200 {lab=#net3}
N 70 -200 70 -170 {lab=#net3}
N -170 -170 -150 -170 {lab=#net4}
N -170 -200 -170 -170 {lab=#net4}
N -170 -200 -150 -200 {lab=#net4}
N -110 -310 10 -310 {lab=#net5}
N 50 -370 50 -340 {lab=vdd}
N -150 -370 -150 -340 {lab=vdd}
N -150 -370 -50 -370 {lab=vdd}
N -50 -370 50 -370 {lab=vdd}
N 50 -310 70 -310 {lab=vdd}
N 50 -340 70 -340 {lab=vdd}
N 70 -340 70 -310 {lab=vdd}
N -170 -310 -150 -310 {lab=vdd}
N -170 -340 -170 -310 {lab=vdd}
N -170 -340 -150 -340 {lab=vdd}
N 50 180 50 230 {lab=vss}
N -150 180 -150 230 {lab=vss}
N -640 -50 -620 -50 {lab=#net6}
N -620 -50 -620 -20 {lab=#net6}
N -640 -20 -620 -20 {lab=#net6}
N -460 -50 -440 -50 {lab=#net6}
N -460 -20 -440 -20 {lab=#net6}
N -460 -50 -460 -20 {lab=#net6}
N 50 -280 50 -230 {lab=#net3}
N -440 -250 -440 -80 {lab=#net3}
N -440 -250 50 -250 {lab=#net3}
N -640 -260 -640 -80 {lab=#net4}
N -640 -260 -150 -260 {lab=#net4}
N -530 10 -530 40 {lab=#net6}
N -640 10 -530 10 {lab=#net6}
N -640 -20 -640 10 {lab=#net6}
N -530 10 -440 10 {lab=#net6}
N -440 -20 -440 10 {lab=#net6}
N -530 70 -510 70 {lab=vss}
N -530 100 -510 100 {lab=vss}
N -510 70 -510 100 {lab=vss}
N -530 100 -530 120 {lab=vss}
N -740 -50 -680 -50 {lab=in+}
N -400 -50 -360 -50 {lab=in-}
N -810 70 -790 70 {lab=vss}
N -810 100 -790 100 {lab=vss}
N -810 70 -810 100 {lab=vss}
N -750 70 -570 70 {lab=#net7}
N -750 40 -750 70 {lab=#net7}
N -790 40 -750 40 {lab=#net7}
N -790 100 -790 110 {lab=vss}
N -790 110 -530 110 {lab=vss}
N -970 -120 -970 -100 {lab=vss}
N -530 110 -270 110 {lab=vss}
N -270 110 -270 220 {lab=vss}
N -270 230 -150 230 {lab=vss}
N -270 220 -270 230 {lab=vss}
N -150 230 50 230 {lab=vss}
N -270 30 -270 40 {lab=0}
N 50 -40 70 -40 {lab=#net8}
N 70 -40 70 -10 {lab=#net8}
N 50 -10 70 -10 {lab=#net8}
N -180 -10 -150 -10 {lab=#net9}
N -180 -40 -150 -40 {lab=#net9}
N -180 -40 -180 -10 {lab=#net9}
N -90 -100 -90 -40 {lab=#net10}
N -270 -100 -270 -30 {lab=#net10}
N -150 -10 -150 120 {lab=#net9}
N 50 -10 50 120 {lab=#net8}
N -300 -120 -300 -110 {lab=0}
N -300 -230 -300 -180 {lab=#net2}
N -300 -300 -300 -290 {lab=0}
N -300 -400 -300 -360 {lab=#net5}
N -300 -400 -60 -400 {lab=#net5}
N -60 -400 -60 -310 {lab=#net5}
N -50 -420 -50 -370 {lab=vdd}
N 50 150 70 150 {lab=vss}
N 70 150 70 180 {lab=vss}
N 50 180 70 180 {lab=vss}
N -180 180 -150 180 {lab=vss}
N -180 150 -150 150 {lab=vss}
N -180 150 -180 180 {lab=vss}
N -270 -100 -90 -100 {lab=#net10}
N -110 -40 10 -40 {lab=#net10}
N -110 150 10 150 {lab=#net4}
N -20 -240 -20 150 {lab=#net4}
N -150 -240 -20 -240 {lab=#net4}
N -150 -280 -150 -200 {lab=#net4}
N -300 -230 -50 -230 {lab=#net2}
N 160 0 200 0 {lab=in-}
C {symbols/nfet_03v3.sym} 30 -40 0 0 {name=M1
L=1u
W=20u
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
C {symbols/nfet_03v3.sym} -130 -40 0 1 {name=M2
L=1u
W=20u
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
C {symbols/pfet_03v3.sym} -130 -170 0 1 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 30 -170 0 0 {name=M4
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
model=pfet_03v3
spiceprefix=X
}
C {opin.sym} 100 -100 0 0 {name=p5 lab=out}
C {symbols/pfet_03v3.sym} -130 -310 0 1 {name=M5
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 30 -310 0 0 {name=M6
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -660 -50 0 0 {name=M9
L=1u
W=20u
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
C {symbols/nfet_03v3.sym} -420 -50 0 1 {name=M10
L=1u
W=20u
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
C {symbols/nfet_03v3.sym} -550 70 0 0 {name=M11
L=1u
W=20u
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
C {iopin.sym} -530 120 1 0 {name=p6 lab=vss}
C {ipin.sym} -740 -50 0 0 {name=p4 lab=in+}
C {ipin.sym} -360 -50 2 0 {name=p2 lab=in-}
C {symbols/nfet_03v3.sym} -770 70 0 1 {name=M12
L=1u
W=20u
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
C {isource.sym} -970 -150 0 0 {name=I0 value=0.1m}
C {iopin.sym} -970 -100 1 0 {name=p3 lab=vss}
C {vsource.sym} -270 0 0 0 {name=vin_neg value="dc 1.65" savecurrent=false}
C {gnd.sym} -270 40 0 0 {name=l2 lab=0}
C {vsource.sym} -300 -150 0 0 {name=vin_neg1 value="dc 1.65" savecurrent=false}
C {gnd.sym} -300 -110 0 0 {name=l1 lab=0}
C {vsource.sym} -300 -330 0 0 {name=vin_neg2 value="dc 1.65" savecurrent=false}
C {gnd.sym} -300 -290 0 0 {name=l3 lab=0}
C {iopin.sym} -50 -420 3 0 {name=p1 lab=vdd
}
C {symbols/nfet_03v3.sym} 30 150 0 0 {name=M7
L=1u
W=20u
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
C {symbols/nfet_03v3.sym} -130 150 0 1 {name=M8
L=1u
W=20u
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
C {ipin.sym} 200 0 2 0 {name=p7 lab=in-}
