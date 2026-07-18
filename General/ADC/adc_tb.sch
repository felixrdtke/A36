v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -260 360 -210 {lab=clk}
N 360 -260 470 -260 {lab=clk}
N 270 -280 270 -210 {lab=sample}
N 270 -280 470 -280 {lab=sample}
N 140 -320 140 -210 {lab=vimax}
N 140 -320 470 -320 {lab=vimax}
N 200 -300 200 -210 {lab=vimin}
N 200 -300 470 -300 {lab=vimin}
N 70 -340 70 -210 {lab=vin}
N 70 -340 470 -340 {lab=vin}
N 360 -150 360 -130 {lab=0}
N 270 -150 270 -130 {lab=0}
N 200 -150 200 -130 {lab=0}
N 140 -150 140 -130 {lab=0}
N 0 -150 0 -130 {lab=0}
N 0 -390 0 -210 {lab=#net1}
N 0 -390 540 -390 {lab=#net1}
N 540 -390 540 -370 {lab=#net1}
N 540 -230 540 -200 {lab=0}
N 770 -300 830 -300 {lab=data}
N 70 -150 70 -130 {lab=0}
C {title.sym} 110 120 0 0 {name=l1 author="Tobias Huber"}
C {devices/code_shown.sym} 1070 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"}
C {code_shown.sym} 1070 -500 0 0 {name=s1 only_toplevel=false value="

.tran 1n 10u

.control

run
plot sample clock
plot data

.endc

"}
C {ADC/adc.sym} 620 -300 0 0 {name=x1}
C {vsource.sym} 360 -180 0 0 {name=V1 value="PULSE 0.1 3.2 600n 10n 10n 600n 1.2u" savecurrent=false}
C {vsource.sym} 270 -180 0 0 {name=V2 value="PULSE 3.2 0.1 600n 10n 10n 1 1" savecurrent=false}
C {vsource.sym} 200 -180 0 0 {name=V3 value=0.3 savecurrent=false}
C {vsource.sym} 140 -180 0 0 {name=V4 value=3.0 savecurrent=false}
C {vsource.sym} 70 -180 0 0 {name=V5 value=2.345 savecurrent=false}
C {gnd.sym} 0 -130 0 0 {name=l2 lab=0}
C {gnd.sym} 140 -130 0 0 {name=l3 lab=0}
C {gnd.sym} 200 -130 0 0 {name=l4 lab=0}
C {gnd.sym} 270 -130 0 0 {name=l5 lab=0}
C {gnd.sym} 360 -130 0 0 {name=l6 lab=0}
C {vsource.sym} 0 -180 0 0 {name=V6 value=3.3 savecurrent=false}
C {gnd.sym} 540 -200 0 0 {name=l7 lab=0}
C {noconn.sym} 830 -300 0 1 {name=l8}
C {lab_wire.sym} 810 -300 0 0 {name=p1 sig_type=std_logic lab=data}
C {lab_wire.sym} 440 -260 0 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_wire.sym} 440 -280 0 0 {name=p3 sig_type=std_logic lab=sample}
C {lab_wire.sym} 440 -300 0 0 {name=p4 sig_type=std_logic lab=vimin}
C {lab_wire.sym} 440 -320 0 0 {name=p5 sig_type=std_logic lab=vimax}
C {lab_wire.sym} 440 -340 0 0 {name=p6 sig_type=std_logic lab=vin}
C {gnd.sym} 70 -130 0 0 {name=l9 lab=0}
