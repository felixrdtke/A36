v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -180 280 -160 {lab=vss}
N 140 -160 280 -160 {lab=vss}
N 280 -160 470 -160 {lab=vss}
N 470 -220 470 -160 {lab=vss}
N 470 -250 490 -250 {lab=vss}
N 490 -250 490 -160 {lab=vss}
N 470 -160 490 -160 {lab=vss}
N 410 -410 430 -410 {lab=#net1}
N 410 -410 410 -250 {lab=#net1}
N 410 -250 430 -250 {lab=#net1}
N 470 -380 470 -280 {lab=Y}
N 470 -340 590 -340 {lab=Y}
N 140 -530 470 -530 {lab=vdd}
N 470 -530 470 -440 {lab=vdd}
N 470 -530 500 -530 {lab=vdd}
N 500 -530 500 -410 {lab=vdd}
N 470 -410 500 -410 {lab=vdd}
N 250 -470 270 -470 {lab=vdd}
N 250 -390 270 -390 {lab=vdd}
N 230 -340 230 -320 {lab=#net1}
N 230 -340 410 -340 {lab=#net1}
N 280 -340 280 -240 {lab=#net1}
N 280 -210 310 -210 {lab=vss}
N 310 -210 310 -160 {lab=vss}
N 310 -290 310 -210 {lab=vss}
N 230 -290 310 -290 {lab=vss}
N 230 -260 230 -160 {lab=vss}
N 270 -530 270 -470 {lab=vdd}
N 250 -530 250 -500 {lab=vdd}
N 250 -440 250 -420 {lab=#net2}
N 270 -470 270 -390 {lab=vdd}
N 130 -470 210 -470 {lab=A}
N 150 -470 150 -290 {lab=A}
N 150 -290 190 -290 {lab=A}
N 130 -390 210 -390 {lab=B}
N 130 -390 130 -210 {lab=B}
N 130 -210 240 -210 {lab=B}
N 250 -360 250 -340 {lab=#net1}
C {title.sym} 160 0 0 0 {name=l1 author="Stefan Schippers"}
C {iopin.sym} 140 -530 0 1 {name=p1 lab=vdd}
C {iopin.sym} 140 -160 0 1 {name=p2 lab=vss}
C {symbols/nfet_03v3.sym} 260 -210 0 0 {name=M1
L=0.28u
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
C {symbols/nfet_03v3.sym} 210 -290 0 0 {name=M2
L=0.28u
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
C {symbols/nfet_03v3.sym} 450 -250 0 0 {name=M3
L=0.28u
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
C {symbols/pfet_03v3.sym} 230 -470 0 0 {name=M4
L=0.28u
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
C {symbols/pfet_03v3.sym} 230 -390 0 0 {name=M5
L=0.28u
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
C {symbols/pfet_03v3.sym} 450 -410 0 0 {name=M6
L=0.28u
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
C {ipin.sym} 130 -470 0 0 {name=p3 lab=A}
C {ipin.sym} 130 -390 0 0 {name=p5 lab=B}
C {opin.sym} 590 -340 0 0 {name=p4 lab=Y}
