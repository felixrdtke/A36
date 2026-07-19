v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 180 0 200 {lab=vss}
N 0 80 0 120 {lab=#net1}
N 0 80 120 80 {lab=#net1}
N -80 80 0 80 {lab=#net1}
N 120 30 120 80 {lab=#net1}
N -80 30 -80 80 {lab=#net1}
N -80 -100 -80 -30 {lab=#net2}
N 120 -100 120 -30 {lab=out}
N -80 -80 20 -80 {lab=#net2}
N -40 -130 80 -130 {lab=#net2}
N 20 -130 20 -80 {lab=#net2}
N 120 -190 120 -160 {lab=vdd}
N -80 -190 -80 -160 {lab=vdd}
N 120 -60 170 -60 {lab=out}
N -160 -0 -120 -0 {lab=in+}
N 160 0 200 0 {lab=in-}
N 20 -240 20 -190 {lab=vdd}
N -80 -190 20 -190 {lab=vdd}
N 20 -190 120 -190 {lab=vdd}
N -80 0 -60 0 {lab=#net1}
N -60 0 -60 30 {lab=#net1}
N -80 30 -60 30 {lab=#net1}
N 100 0 120 0 {lab=#net1}
N 100 30 120 30 {lab=#net1}
N 100 0 100 30 {lab=#net1}
N 120 -130 140 -130 {lab=vdd}
N 120 -160 140 -160 {lab=vdd}
N 140 -160 140 -130 {lab=vdd}
N -100 -130 -80 -130 {lab=vdd}
N -100 -160 -100 -130 {lab=vdd}
N -100 -160 -80 -160 {lab=vdd}
C {symbols/nfet_03v3.sym} -100 0 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 140 0 0 1 {name=M2
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
C {isource.sym} 0 150 0 0 {name=I0 value=0.1m}
C {symbols/pfet_03v3.sym} -60 -130 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 100 -130 0 0 {name=M4
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
C {opin.sym} 170 -60 0 0 {name=p5 lab=out}
C {ipin.sym} -160 0 0 0 {name=p4 lab=in+}
C {ipin.sym} 200 0 2 0 {name=p1 lab=in-}
C {iopin.sym} 20 -240 3 0 {name=p3 lab=vdd
}
C {iopin.sym} 0 200 1 0 {name=p6 lab=vss}
