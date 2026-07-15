v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 790 -170 790 -130 {lab=0}
N 580 -270 580 -230 {lab=v_out}
N 580 -170 580 -130 {lab=0}
N 580 -390 580 -330 {lab=VDD}
N 790 -250 790 -230 {lab=v_out}
N 580 -250 790 -250 {lab=v_out}
N 490 -300 540 -300 {lab=v_in}
N 490 -300 490 -200 {lab=v_in}
N 490 -200 540 -200 {lab=v_in}
N 390 -250 390 -240 {lab=v_in}
N 390 -250 490 -250 {lab=v_in}
N 390 -180 390 -130 {lab=0}
N 220 -390 220 -300 {lab=VDD}
N 220 -240 220 -130 {lab=0}
N 580 -300 620 -300 {lab=VDD}
N 620 -350 620 -300 {lab=VDD}
N 580 -350 620 -350 {lab=VDD}
N 580 -200 620 -200 {lab=0}
N 620 -200 620 -150 {lab=0}
N 580 -150 620 -150 {lab=0}
C {title.sym} 160 -30 0 0 {name=l1 author="Felix Radtke"}
C {symbols/nfet_03v3.sym} 560 -200 0 0 {name=M1
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 560 -300 0 0 {name=M2
L=1u
W=21u
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
C {vdd.sym} 580 -390 0 0 {name=l2 lab=VDD}
C {vdd.sym} 220 -390 0 0 {name=l3 lab=VDD}
C {gnd.sym} 580 -130 0 0 {name=l5 lab=0}
C {gnd.sym} 220 -130 0 0 {name=l6 lab=0}
C {vsource.sym} 220 -270 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 390 -210 0 0 {name=vin value="dc 0 pulse(\{1.5-(vdiff/2)\} \{1.5+(vdiff/2)\} 0 \{tfr\} \{tfr\} \{ton\} \{tper\})" savecurrent=false}
C {capa.sym} 790 -200 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 390 -130 0 0 {name=l8 lab=0}
C {gnd.sym} 790 -130 0 0 {name=l9 lab=0}
C {devices/code_shown.sym} 950 -790 0 0 {name=SIMULATIONS
only_toplevel=true
value="
* --- 1. Define Variables ---
.param fsig = 16Meg
.param fclk =32Meg
.param tper = \{1/fsig\}
.param t_clk_per = \{1/fclk\}
.param tfr = \{0.01*tper\}
.param ton = \{0.5*tper-2*tfr\}
.param tfr_clk = \{0.01*t_clk_per\}
.param ton_clk = \{0.5*t_clk_per-2*tfr_clk\}
.param tstop = \{30*t_clk_per\}
.param tstep = \{0.001*tper\}
.param vdiff = 0.5
.param num_fingers = 1

* --- 2. Analyses ---
.op
.dc vin 0 3.3 0.01
.tran \{tstep\} \{tstop\}




*.save @m.xm1.m0[gm] all
*.save @m.xm1.m0[gds] all
*.save @m.xm1.m0[id] all
*.save @m.xm1.m0[cgg] @m.xm1.m0[cgs] @m.xm1.m0[cgd] @m.xm1.m0[cdb] all



* --- 3. Outputs ---
.control
run
setplot dc1
plot v_in v_out
.endc

*.save all
"}
C {devices/code_shown.sym} 170 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 720 -250 0 0 {name=p1 sig_type=std_logic lab=v_out}
C {lab_wire.sym} 450 -250 0 0 {name=p2 sig_type=std_logic lab=v_in}
