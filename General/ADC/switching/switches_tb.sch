v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -200 100 -180 {lab=0}
N 230 -190 230 -160 {lab=0}
N 310 -170 310 -140 {lab=0}
N 380 -170 380 -140 {lab=0}
N 310 -260 310 -220 {lab=B}
N 380 -250 380 -220 {lab=A}
N 100 -430 100 -260 {lab=clk}
N 100 -430 330 -430 {lab=clk}
N 230 -290 230 -250 {lab=vdd}
N 580 -540 640 -540 {lab=vdd}
N 580 -460 640 -460 {lab=0}
N 590 -390 650 -390 {lab=vdd}
N 590 -310 650 -310 {lab=0}
N 580 -150 640 -150 {lab=vdd}
N 580 -110 640 -110 {lab=0}
N 570 -520 630 -520 {lab=A}
N 570 -480 630 -480 {lab=B}
N 570 -370 630 -370 {lab=A}
N 570 -330 630 -330 {lab=B}
N 370 -480 370 -450 {lab=vdd}
N 370 -410 370 -390 {lab=0}
N 420 -430 460 -430 {lab=clk_i}
N 660 -450 660 -430 {lab=clk}
N 660 -290 660 -270 {lab=clk}
N 670 -290 670 -270 {lab=clk_i}
N 550 -140 620 -140 {lab=A}
N 690 -500 760 -500 {lab=out1}
N 700 -350 780 -350 {lab=out2}
N 730 -140 800 -140 {lab=out3}
N 550 -120 620 -120 {lab=clk}
C {title.sym} 160 0 0 0 {name=l1 author="Tobias Huber"}
C {ADC/switching/inv4switch.sym} 450 -430 0 0 {name=x1}
C {ADC/switching/mux_2to1.sym} 620 -480 0 0 {name=x2}
C {ADC/switching/mux_2to1_wo_single_select.sym} 630 -330 0 0 {name=x3}
C {ADC/switching/spst.sym} 780 -120 0 0 {name=x4}
C {vsource.sym} 230 -220 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 100 -230 0 0 {name=V3 value="PULSE 0.1 3.2 200n 10n 10n 200n 400n" savecurrent=false}
C {gnd.sym} 230 -160 0 0 {name=l2 lab=0}
C {gnd.sym} 100 -180 0 0 {name=l4 lab=0}
C {vsource.sym} 310 -190 0 0 {name=V4 value=3.0 savecurrent=false}
C {gnd.sym} 310 -140 0 0 {name=l5 lab=0}
C {vsource.sym} 380 -190 0 0 {name=V5 value=0.3 savecurrent=false}
C {gnd.sym} 380 -140 0 0 {name=l6 lab=0}
C {lab_wire.sym} 380 -250 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} 310 -260 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} 250 -430 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 230 -290 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 580 -540 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} 580 -460 0 0 {name=l3 lab=0}
C {lab_wire.sym} 590 -390 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {gnd.sym} 590 -310 0 0 {name=l7 lab=0}
C {lab_wire.sym} 580 -150 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {gnd.sym} 580 -110 0 0 {name=l8 lab=0}
C {lab_wire.sym} 570 -520 0 0 {name=p8 sig_type=std_logic lab=A}
C {lab_wire.sym} 570 -480 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_wire.sym} 570 -370 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_wire.sym} 570 -330 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_wire.sym} 370 -480 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {gnd.sym} 370 -390 0 0 {name=l9 lab=0}
C {lab_wire.sym} 460 -430 0 0 {name=p13 sig_type=std_logic lab=clk_i}
C {lab_wire.sym} 550 -140 0 0 {name=p14 sig_type=std_logic lab=A}
C {lab_wire.sym} 760 -500 0 0 {name=p15 sig_type=std_logic lab=out1}
C {lab_wire.sym} 780 -350 0 0 {name=p16 sig_type=std_logic lab=out2}
C {lab_wire.sym} 800 -140 0 0 {name=p17 sig_type=std_logic lab=out3}
C {lab_wire.sym} 660 -270 2 1 {name=p18 sig_type=std_logic lab=clk}
C {lab_wire.sym} 660 -430 2 1 {name=p19 sig_type=std_logic lab=clk}
C {lab_wire.sym} 550 -120 2 1 {name=p20 sig_type=std_logic lab=clk}
C {lab_wire.sym} 670 -270 2 0 {name=p21 sig_type=std_logic lab=clk_i}
C {devices/code_shown.sym} 840 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {code_shown.sym} 840 -620 0 0 {name=s1 only_toplevel=false value="

.tran 1n 10u

.control

run
plot out1 out2 out3
plot clk

.endc

"}
