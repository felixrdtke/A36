v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Please add Analog buffer} 1270 -600 0 0 0.4 0.4 {}
T {Please add Analog buffer} 1270 -480 0 0 0.4 0.4 {}
T {Please add Analog buffer} 1270 -360 0 0 0.4 0.4 {}
N 1040 -610 1040 -570 {lab=V_ref_0_75}
N 250 -740 420 -740 {lab=v_ref_max}
N 1020 -660 1020 -610 {lab=V_ref_0_75}
N 1020 -610 1040 -610 {lab=V_ref_0_75}
N 1040 -490 1040 -460 {lab=V_ref_0_5}
N 1020 -540 1020 -490 {lab=V_ref_0_5}
N 1020 -490 1040 -490 {lab=V_ref_0_5}
N 1040 -380 1040 -330 {lab=V_ref_0_25}
N 1020 -430 1020 -380 {lab=V_ref_0_25}
N 1020 -380 1040 -380 {lab=V_ref_0_25}
N 1020 -300 1020 -250 {lab=v_ref_min}
N 1040 -630 1040 -610 {lab=V_ref_0_75}
N 1040 -510 1040 -490 {lab=V_ref_0_5}
N 1040 -400 1040 -380 {lab=V_ref_0_25}
N 1040 -270 1040 -250 {lab=v_ref_min}
N 1040 -740 1040 -690 {lab=#net1}
N 490 -740 560 -740 {lab=v_ref_max}
N 1020 -250 1040 -250 {lab=v_ref_min}
N 1040 -250 1040 -220 {lab=v_ref_min}
N 570 -740 1040 -740 {lab=#net1}
N 420 -740 490 -740 {lab=v_ref_max}
N 1040 -590 1260 -590 {lab=V_ref_0_75}
N 1040 -470 1260 -470 {lab=V_ref_0_5}
N 1040 -350 1260 -350 {lab=V_ref_0_25}
N 1260 -590 1700 -590 {lab=V_ref_0_75}
N 1260 -470 1700 -470 {lab=V_ref_0_5}
N 1260 -350 1700 -350 {lab=V_ref_0_25}
N 370 -490 370 -390 {lab=current_mirror}
N 370 -490 410 -490 {lab=current_mirror}
N 410 -390 450 -390 {lab=0}
N 450 -390 450 -320 {lab=0}
N 410 -320 450 -320 {lab=0}
N 410 -320 410 -270 {lab=0}
N 410 -490 410 -420 {lab=current_mirror}
N 410 -740 410 -650 {lab=v_ref_max}
N 390 -570 410 -570 {lab=current_mirror}
N 410 -590 410 -520 {lab=current_mirror}
N 410 -520 410 -490 {lab=current_mirror}
N 410 -360 410 -320 {lab=0}
N 410 -490 790 -490 {lab=current_mirror}
N 390 -620 390 -570 {lab=current_mirror}
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
C {iopin.sym} 250 -740 2 0 {name=p5 lab=v_ref_max}
C {iopin.sym} 1040 -220 1 0 {name=p7 lab=v_ref_min}
C {iopin.sym} 790 -490 0 0 {name=p1 lab=current_mirror}
C {iopin.sym} 1700 -590 0 0 {name=p8 lab=V_ref_0_75}
C {iopin.sym} 1700 -470 0 0 {name=p9 lab=V_ref_0_5}
C {iopin.sym} 1700 -350 0 0 {name=p10 lab=V_ref_0_25}
C {gnd.sym} 410 -270 0 0 {name=l4 lab=0}
C {symbols/nfet_03v3.sym} 390 -390 0 0 {name=M5
L= 25u
W= 25u
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
L=485e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
