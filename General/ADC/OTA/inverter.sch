v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -260 290 -200 {lab=vdd}
N 290 -50 290 -30 {lab=vss}
N 290 -130 290 -110 {lab=out}
N 290 -130 340 -130 {lab=out}
N 230 -170 250 -170 {lab=in}
N 230 -130 230 -80 {lab=in}
N 230 -80 250 -80 {lab=in}
N 210 -130 230 -130 {lab=in}
N 290 -80 350 -80 {lab=vss}
N 290 -170 340 -170 {lab=vdd}
N 290 -140 290 -130 {lab=out}
N 230 -170 230 -130 {lab=in}
C {symbols/nfet_03v3.sym} 270 -80 0 0 {name=M1
L=0.28u
W=0.5u
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
C {symbols/pfet_03v3.sym} 270 -170 0 0 {name=M2
L=0.4u
W=0.5u
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
C {iopin.sym} 290 -260 3 0 {name=p1 lab=vdd
}
C {iopin.sym} 290 -30 1 0 {name=p3 lab=vss
}
C {ipin.sym} 210 -130 0 0 {name=p4 lab=in}
C {opin.sym} 340 -130 0 0 {name=p5 lab=out}
C {lab_wire.sym} 350 -80 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 340 -170 0 0 {name=p6 sig_type=std_logic lab=vdd
}
C {launcher.sym} 440 -240 0 0 {name=h1
descr=Annotate 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
