v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 420 -610 420 -570 {lab=Vref_3_4}
N 250 -630 250 -590 {lab=0}
N 250 -740 250 -690 {lab=vin}
N 250 -740 420 -740 {lab=vin}
N 400 -660 400 -610 {lab=Vref_3_4}
N 400 -610 420 -610 {lab=Vref_3_4}
N 420 -490 420 -460 {lab=Vref_1_2}
N 400 -540 400 -490 {lab=Vref_1_2}
N 400 -490 420 -490 {lab=Vref_1_2}
N 420 -380 420 -330 {lab=Vref_1_4}
N 400 -430 400 -380 {lab=Vref_1_4}
N 400 -380 420 -380 {lab=Vref_1_4}
N 260 -120 260 -80 {lab=0}
N 570 -290 570 -270 {lab=0}
N 420 -250 420 -210 {lab=#net1}
N 400 -300 400 -250 {lab=#net1}
N 400 -250 420 -250 {lab=#net1}
N 260 -210 260 -180 {lab=#net1}
N 260 -210 420 -210 {lab=#net1}
N 420 -630 420 -610 {lab=Vref_3_4}
N 420 -510 420 -490 {lab=Vref_1_2}
N 420 -400 420 -380 {lab=Vref_1_4}
N 420 -270 420 -250 {lab=#net1}
N 560 -740 570 -740 {lab=vin}
N 530 -490 530 -390 {lab=V_mid}
N 530 -490 570 -490 {lab=V_mid}
N 570 -390 610 -390 {lab=0}
N 610 -390 610 -320 {lab=0}
N 570 -320 610 -320 {lab=0}
N 420 -740 420 -690 {lab=vin}
N 490 -740 560 -740 {lab=vin}
N 420 -740 490 -740 {lab=vin}
N 570 -360 570 -290 {lab=0}
N 530 -660 530 -560 {lab=vin}
N 530 -660 570 -660 {lab=vin}
N 570 -560 610 -560 {lab=V_mid}
N 610 -560 610 -490 {lab=V_mid}
N 570 -490 610 -490 {lab=V_mid}
N 570 -530 570 -420 {lab=V_mid}
N 570 -740 570 -590 {lab=vin}
C {title.sym} 160 -40 0 0 {name=l1 author="Felix Radtke"}
C {symbols/nplus_u.sym} 420 -660 0 0 {name=R1
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {vsource.sym} 250 -660 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 250 -590 0 0 {name=l2 lab=0}
C {lab_wire.sym} 350 -740 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 660 -780 0 0 {name=SIMULATIONS
only_toplevel=true
value="


* --- 2. Analyses ---
.op
*.dc v1 1 2 1 


* --- 3. Outputs ---
.control
run

*setplot dc1
*let res=-vin/v1#branch
*let res2=-vin2/v2#branch
plot res 
plot res2
setplot op1
print v1#branch 
print v2#branch
write Reference_voltages.raw
.save all
.endc


"}
C {devices/code_shown.sym} 560 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {symbols/nplus_u.sym} 420 -540 0 0 {name=R2
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/nplus_u.sym} 420 -430 0 0 {name=R3
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {vsource.sym} 260 -150 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 260 -80 0 0 {name=l3 lab=0}
C {gnd.sym} 570 -270 0 0 {name=l4 lab=0}
C {lab_wire.sym} 420 -470 0 0 {name=p2 sig_type=std_logic lab=Vref_1_2}
C {lab_wire.sym} 420 -590 0 0 {name=p3 sig_type=std_logic lab=Vref_3_4}
C {lab_wire.sym} 420 -350 0 0 {name=p4 sig_type=std_logic lab=Vref_1_4}
C {launcher.sym} 140 -460 0 0 {name=h1
descr="Annotate op"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {symbols/nplus_u.sym} 420 -300 0 0 {name=R4
W=4e-6
L=500e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 550 -390 0 0 {name=M5
L= 11.2u
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
C {symbols/nfet_03v3.sym} 550 -560 0 0 {name=M1
L= 11.2u
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
C {lab_wire.sym} 570 -460 0 0 {name=p5 sig_type=std_logic lab=V_mid}
