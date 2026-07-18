v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 -350 440 -310 {lab=#net1}
N 600 -400 600 -260 {lab=#net1}
N 440 -330 600 -330 {lab=#net1}
N 600 -380 720 -380 {lab=#net1}
N 600 -280 720 -280 {lab=#net1}
N 760 -350 760 -310 {lab=#net2}
N 760 -250 760 -180 {lab=vss}
N 340 -180 760 -180 {lab=vss}
N 570 -220 570 -180 {lab=vss}
N 600 -220 600 -180 {lab=vss}
N 630 -220 630 -180 {lab=vss}
N 340 -460 760 -460 {lab=vdd}
N 760 -460 760 -410 {lab=vdd}
N 630 -460 630 -440 {lab=vdd}
N 600 -460 600 -440 {lab=vdd}
N 570 -460 570 -440 {lab=vdd}
N 440 -460 440 -410 {lab=vdd}
N 440 -380 460 -380 {lab=vdd}
N 460 -460 460 -380 {lab=vdd}
N 440 -280 460 -280 {lab=vss}
N 460 -280 460 -180 {lab=vss}
N 440 -250 440 -180 {lab=vss}
N 760 -380 780 -380 {lab=vdd}
N 780 -460 780 -380 {lab=vdd}
N 760 -460 780 -460 {lab=vdd}
N 1440 -330 1550 -330 {lab=Y}
N 760 -280 790 -280 {lab=vss}
N 790 -280 790 -180 {lab=vss}
N 760 -180 790 -180 {lab=vss}
N 380 -380 400 -380 {lab=A}
N 380 -380 380 -280 {lab=A}
N 380 -280 400 -280 {lab=A}
N 340 -330 380 -330 {lab=A}
N 1120 -350 1120 -310 {lab=#net3}
N 940 -400 940 -260 {lab=#net2}
N 1120 -330 1280 -330 {lab=#net3}
N 1280 -380 1400 -380 {lab=#net3}
N 1280 -280 1400 -280 {lab=#net3}
N 1440 -350 1440 -310 {lab=Y}
N 1440 -250 1440 -180 {lab=vss}
N 910 -220 910 -180 {lab=vss}
N 940 -220 940 -180 {lab=vss}
N 970 -220 970 -180 {lab=vss}
N 1440 -460 1440 -410 {lab=vdd}
N 970 -460 970 -440 {lab=vdd}
N 940 -460 940 -440 {lab=vdd}
N 910 -460 910 -440 {lab=vdd}
N 1120 -460 1120 -410 {lab=vdd}
N 1120 -380 1140 -380 {lab=vdd}
N 1140 -460 1140 -380 {lab=vdd}
N 1120 -280 1140 -280 {lab=vss}
N 1140 -280 1140 -180 {lab=vss}
N 1120 -250 1120 -180 {lab=vss}
N 1440 -380 1460 -380 {lab=vdd}
N 1460 -460 1460 -380 {lab=vdd}
N 1440 -460 1460 -460 {lab=vdd}
N 1440 -280 1470 -280 {lab=vss}
N 1470 -280 1470 -180 {lab=vss}
N 1440 -180 1470 -180 {lab=vss}
N 1060 -380 1080 -380 {lab=#net2}
N 1060 -380 1060 -280 {lab=#net2}
N 1060 -280 1080 -280 {lab=#net2}
N 780 -460 1440 -460 {lab=vdd}
N 790 -180 1440 -180 {lab=vss}
N 760 -330 940 -330 {lab=#net2}
N 940 -330 1060 -330 {lab=#net2}
N 1280 -400 1280 -260 {lab=#net3}
N 1250 -220 1250 -180 {lab=vss}
N 1280 -220 1280 -180 {lab=vss}
N 1310 -220 1310 -180 {lab=vss}
N 1310 -460 1310 -440 {lab=vdd}
N 1280 -460 1280 -440 {lab=vdd}
N 1250 -460 1250 -440 {lab=vdd}
C {title.sym} 160 0 0 0 {name=l1 author="Tobias Huber"}
C {symbols/nfet_03v3.sym} 420 -280 0 0 {name=M1
L=5u
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
C {symbols/pfet_03v3.sym} 420 -380 0 0 {name=M3
L=5u
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
C {symbols/pfet_03v3.sym} 600 -420 3 0 {name=M5
L=8u
W=8u
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
C {symbols/nfet_03v3.sym} 600 -240 1 0 {name=M6
L=8u
W=8u
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
C {ipin.sym} 340 -330 0 0 {name=p1 lab=A}
C {opin.sym} 1550 -330 0 0 {name=p2 lab=Y}
C {iopin.sym} 340 -460 0 1 {name=p3 lab=vdd}
C {iopin.sym} 340 -180 0 1 {name=p4 lab=vss}
C {symbols/nfet_03v3.sym} 1100 -280 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 1420 -280 0 0 {name=M8
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
C {symbols/pfet_03v3.sym} 1100 -380 0 0 {name=M9
L=2u
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
C {symbols/pfet_03v3.sym} 1420 -380 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 940 -420 3 0 {name=M11
L=8u
W=8u
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
C {symbols/nfet_03v3.sym} 940 -240 1 0 {name=M12
L=8u
W=8u
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
C {symbols/pfet_03v3.sym} 1280 -420 3 0 {name=M13
L=8u
W=8u
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
C {symbols/nfet_03v3.sym} 1280 -240 1 0 {name=M14
L=8u
W=8u
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
C {symbols/nfet_03v3.sym} 740 -280 0 0 {name=M2
L=5u
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
C {symbols/pfet_03v3.sym} 740 -380 0 0 {name=M4
L=5u
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
