v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 850 -370 850 -290 {lab=0}
N 950 -370 950 -300 {lab=0}
N 950 -300 950 -290 {lab=0}
N 950 -520 950 -430 {lab=vout_m}
N 710 -520 950 -520 {lab=vout_m}
N 850 -460 850 -430 {lab=vout_p}
N 710 -460 850 -460 {lab=vout_p}
N 600 -720 600 -580 {lab=VDD}
N 590 -390 590 -290 {lab=0}
N 460 -410 520 -410 {lab=clk}
N 460 -410 460 -380 {lab=clk}
N 460 -320 460 -290 {lab=0}
N 390 -360 390 -290 {lab=0}
N 390 -430 390 -420 {lab=v_in_m}
N 390 -430 520 -430 {lab=v_in_m}
N 320 -550 320 -470 {lab=v_in_p}
N 320 -550 520 -550 {lab=v_in_p}
N 80 -720 80 -520 {lab=VDD}
N 80 -460 80 -280 {lab=0}
N 320 -410 320 -380 {lab=#net1}
N 320 -320 320 -290 {lab=0}
C {title.sym} 160 -40 0 0 {name=l1 author="Felix Radtke"}
C {ADC/Comparator/Comparator.sym} 670 -490 0 0 {name=x1}
C {vsource.sym} 80 -490 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 320 -440 0 0 {name=vin2 value="pulse(\{1.5-(vdiff/2)\} \{1.5+(vdiff/2)\} 0 \{tfr\} \{tfr\} \{ton\} \{tper\})" savecurrent=false}
C {vsource.sym} 390 -390 0 0 {name=vin1 value="dc 1.5 trnoise(1m 10p)"  savecurrent=false}
C {vsource.sym} 460 -350 0 0 {name=Vclk value="dc 0 pulse(0 3.3 0 \{tfr_clk\} \{tfr_clk\} \{ton_clk\} \{t_clk_per\})" savecurrent=false}
C {gnd.sym} 80 -280 0 0 {name=l2 lab=0}
C {gnd.sym} 320 -290 0 0 {name=l3 lab=0}
C {gnd.sym} 390 -290 0 0 {name=l4 lab=0}
C {gnd.sym} 460 -290 0 0 {name=l5 lab=0}
C {vdd.sym} 80 -720 0 0 {name=l7 lab=VDD}
C {vdd.sym} 600 -720 0 0 {name=l10 lab=VDD}
C {capa.sym} 850 -400 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 -290 0 0 {name=l8 lab=0}
C {gnd.sym} 850 -290 0 0 {name=l9 lab=0}
C {capa.sym} 950 -400 0 0 {name=C2
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 950 -290 0 0 {name=l11 lab=0}
C {devices/code_shown.sym} 1080 -940 0 0 {name=SIMULATIONS
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
.param vdiff = 0.1

* --- 2. Analyses ---
.op
.tran \{tstep\} \{tstop\}




*.save @m.xm1.m0[gm] all
*.save @m.xm1.m0[gds] all
*.save @m.xm1.m0[id] all
*.save @m.xm1.m0[cgg] @m.xm1.m0[cgs] @m.xm1.m0[cgd] @m.xm1.m0[cdb] all



* --- 3. Outputs ---
.control
run
setplot tran1 
plot vout_m vout_p clk
plot v_in_p v_in_m
.endc

*.save all
"}
C {devices/code_shown.sym} 20 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 860 -520 0 0 {name=p1 sig_type=std_logic lab=vout_m}
C {lab_wire.sym} 830 -460 0 0 {name=p2 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 500 -410 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 400 -550 0 0 {name=p4 sig_type=std_logic lab=v_in_p}
C {lab_wire.sym} 440 -430 0 0 {name=p5 sig_type=std_logic lab=v_in_m}
C {vsource.sym} 320 -350 0 0 {name=vin3 value="trnoise(3m 10p)" savecurrent=false}
