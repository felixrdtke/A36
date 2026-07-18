v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 850 -360 850 -280 {lab=0}
N 950 -360 950 -290 {lab=0}
N 950 -290 950 -280 {lab=0}
N 950 -510 950 -420 {lab=vout_m}
N 710 -510 950 -510 {lab=vout_m}
N 850 -450 850 -420 {lab=vout_p}
N 710 -450 850 -450 {lab=vout_p}
N 600 -710 600 -570 {lab=VDD}
N 590 -380 590 -280 {lab=0}
N 460 -400 520 -400 {lab=clk}
N 460 -400 460 -370 {lab=clk}
N 460 -310 460 -280 {lab=0}
N 290 -350 290 -280 {lab=0}
N 290 -420 290 -410 {lab=#net1}
N 180 -540 180 -460 {lab=#net2}
N 80 -710 80 -510 {lab=VDD}
N 80 -450 80 -270 {lab=0}
N 180 -400 180 -370 {lab=0}
N 180 -310 180 -280 {lab=0}
N 180 -600 180 -540 {lab=#net2}
N 490 -600 490 -540 {lab=v_in_p}
N 490 -540 520 -540 {lab=v_in_p}
N 290 -420 320 -420 {lab=#net1}
N 450 -420 520 -420 {lab=v_in_m}
N 180 -600 220 -600 {lab=#net2}
N 430 -600 490 -600 {lab=v_in_p}
N 390 -420 450 -420 {lab=v_in_m}
N 460 -220 460 -160 {lab=0}
N 360 -600 430 -600 {lab=v_in_p}
N 180 -370 180 -320 {lab=0}
N 180 -320 180 -310 {lab=0}
N 460 -280 460 -220 {lab=0}
N 300 -600 310 -600 {lab=v_in_p}
N 380 -420 390 -420 {lab=v_in_m}
N 220 -600 240 -600 {lab=#net2}
N 310 -600 360 -600 {lab=v_in_p}
C {title.sym} 160 -30 0 0 {name=l1 author="Felix Radtke"}
C {vsource.sym} 80 -480 0 0 {name=V1 value=2.9 savecurrent=false}
C {vsource.sym} 180 -430 0 0 {name=vin2 value="pulse(\{vdc-(vdiff/2)\} \{vdc+(vdiff/2)\} 0 \{tfr\} \{tfr\} \{ton\} \{tper\})" savecurrent=false}
C {vsource.sym} 290 -380 0 0 {name=vin1 value="dc \{vdc\}" savecurrent=false}
C {vsource.sym} 460 -340 0 0 {name=Vclk value="dc 0 pulse(0 3.1 0 \{tfr_clk\} \{tfr_clk\} \{ton_clk\} \{t_clk_per\})" savecurrent=false}
C {gnd.sym} 80 -270 0 0 {name=l2 lab=0}
C {gnd.sym} 180 -280 0 0 {name=l3 lab=0}
C {gnd.sym} 290 -280 0 0 {name=l4 lab=0}
C {vdd.sym} 80 -710 0 0 {name=l7 lab=VDD}
C {vdd.sym} 600 -710 0 0 {name=l10 lab=VDD}
C {capa.sym} 850 -390 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 -280 0 0 {name=l8 lab=0}
C {gnd.sym} 850 -280 0 0 {name=l9 lab=0}
C {capa.sym} 950 -390 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 950 -280 0 0 {name=l11 lab=0}
C {devices/code_shown.sym} 1080 -930 0 0 {name=SIMULATIONS
only_toplevel=true
value="
* --- 1. Define Variables ---
.param fsig = 200k
.param fclk = 1Meg
.param tper = \{1/fsig\}
.param t_clk_per = \{1/fclk\}
.param tfr = \{0.01*tper\}
.param ton = \{0.5*tper-2*tfr\}
.param tfr_clk = \{0.01*t_clk_per\}
.param ton_clk = \{0.5*t_clk_per-2*tfr_clk\}
.param tstop = \{10*t_clk_per\}
.param tstep = \{0.005*tper\}
.param vdiff = 0.001
.param vdc = 1.45

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
C {devices/code_shown.sym} 20 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {lab_wire.sym} 860 -510 0 0 {name=p1 sig_type=std_logic lab=vout_m}
C {lab_wire.sym} 830 -450 0 0 {name=p2 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 500 -400 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 480 -600 0 0 {name=p4 sig_type=std_logic lab=v_in_p}
C {lab_wire.sym} 440 -420 0 0 {name=p5 sig_type=std_logic lab=v_in_m}
C {gnd.sym} 460 -160 0 0 {name=l6 lab=0}
C {Comparator_v2.sym} 500 -350 0 0 {name=x1}
C {res.sym} 270 -600 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 310 -570 0 0 {name=C3
m=1
value=15pF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 310 -540 0 0 {name=l12 lab=0}
C {res.sym} 350 -420 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 390 -390 0 0 {name=C4
m=1
value=15pF
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 390 -360 0 0 {name=l5 lab=0}
