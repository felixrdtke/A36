v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1040 -610 1040 -570 {lab=#net1}
N 250 -740 420 -740 {lab=vimax}
N 1020 -660 1020 -610 {lab=#net1}
N 1020 -610 1040 -610 {lab=#net1}
N 1040 -490 1040 -460 {lab=#net2}
N 1020 -540 1020 -490 {lab=#net2}
N 1020 -490 1040 -490 {lab=#net2}
N 1040 -380 1040 -330 {lab=#net3}
N 1020 -430 1020 -380 {lab=#net3}
N 1020 -380 1040 -380 {lab=#net3}
N 1020 -300 1020 -250 {lab=vimin}
N 1040 -630 1040 -610 {lab=#net1}
N 1040 -510 1040 -490 {lab=#net2}
N 1040 -400 1040 -380 {lab=#net3}
N 1040 -270 1040 -250 {lab=vimin}
N 1040 -740 1040 -690 {lab=vimax}
N 490 -740 560 -740 {lab=vimax}
N 1020 -250 1040 -250 {lab=vimin}
N 420 -740 490 -740 {lab=vimax}
N 1040 -590 1260 -590 {lab=#net1}
N 1040 -470 1260 -470 {lab=#net2}
N 1040 -350 1260 -350 {lab=#net3}
N 410 -490 410 -350 {lab=#net4}
N 410 -740 410 -650 {lab=vimax}
N 390 -570 410 -570 {lab=#net4}
N 410 -590 410 -520 {lab=#net4}
N 410 -520 410 -490 {lab=#net4}
N 390 -620 390 -570 {lab=#net4}
N 250 -230 1040 -230 {lab=vimin}
N 1040 -250 1040 -230 {lab=vimin}
N 560 -740 1040 -740 {lab=vimax}
N 360 -320 410 -320 {lab=vss}
N 410 -290 410 -230 {lab=vimin}
N 530 -320 580 -320 {lab=vss}
N 530 -290 530 -230 {lab=vimin}
N 450 -320 490 -320 {lab=#net4}
N 470 -390 470 -320 {lab=#net4}
N 410 -390 470 -390 {lab=#net4}
N 530 -410 530 -350 {lab=iref}
N 250 -770 300 -770 {lab=vdd}
N 1300 -360 1370 -360 {lab=vsub}
N 1300 -480 1370 -480 {lab=vmid}
N 1300 -600 1370 -600 {lab=vadd}
N 1230 -520 1260 -520 {lab=vss}
N 1260 -550 1260 -520 {lab=vss}
N 1260 -520 1300 -520 {lab=vss}
N 1300 -540 1300 -520 {lab=vss}
N 1230 -400 1260 -400 {lab=vss}
N 1260 -430 1260 -400 {lab=vss}
N 1260 -400 1300 -400 {lab=vss}
N 1300 -420 1300 -400 {lab=vss}
N 1230 -280 1260 -280 {lab=vss}
N 1260 -310 1260 -280 {lab=vss}
N 1260 -280 1300 -280 {lab=vss}
N 1300 -300 1300 -280 {lab=vss}
C {title.sym} 160 -40 0 0 {name=l1 author="Felix Radtke"}
C {symbols/nplus_u.sym} 1040 -660 0 0 {name=R1
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/nplus_u.sym} 1040 -540 0 0 {name=R2
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/nplus_u.sym} 1040 -430 0 0 {name=R3
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/nplus_u.sym} 1040 -300 0 0 {name=R4
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {iopin.sym} 250 -740 2 0 {name=p5 lab=vimax}
C {iopin.sym} 250 -230 2 0 {name=p7 lab=vimin}
C {iopin.sym} 530 -410 3 0 {name=p1 lab=iref}
C {iopin.sym} 1370 -600 0 0 {name=p8 lab=vadd}
C {iopin.sym} 1370 -480 0 0 {name=p9 lab=vmid}
C {iopin.sym} 1370 -360 0 0 {name=p10 lab=vsub}
C {symbols/nfet_03v3.sym} 430 -320 0 1 {name=M2
L= 2u
W= 20u
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
C {symbols/ppolyf_u_2k.sym} 410 -620 0 0 {name=R5
W=5e-6
L=460e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {iopin.sym} 250 -200 0 1 {name=p2 lab=vss}
C {iopin.sym} 250 -770 0 1 {name=p3 lab=vdd}
C {lab_wire.sym} 360 -320 0 0 {name=p4 sig_type=std_logic lab=vss}
C {symbols/nfet_03v3.sym} 510 -320 0 0 {name=M1
L= 2u
W= 2u
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
C {lab_wire.sym} 580 -320 0 1 {name=p6 sig_type=std_logic lab=vss}
C {noconn.sym} 300 -770 2 0 {name=l2}
C {vcvs.sym} 1300 -570 0 0 {name=E1 value=1}
C {vcvs.sym} 1300 -450 0 0 {name=E2 value=1}
C {vcvs.sym} 1300 -330 0 0 {name=E3 value=1}
C {lab_wire.sym} 1230 -520 0 0 {name=p11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1230 -400 0 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1230 -280 0 0 {name=p13 sig_type=std_logic lab=vss}
