v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -200 500 -180 {lab=vout}
N 440 -200 500 -200 {lab=vout}
N 240 -200 240 -180 {lab=vin}
N 240 -200 360 -200 {lab=vin}
N 240 -120 240 -80 {lab=0}
N 500 -120 500 -80 {lab=0}
N 400 -170 400 -140 {lab=0}
N 180 -120 180 -80 {lab=0}
N 180 -270 400 -270 {lab=vdd}
N 180 -270 180 -180 {lab=vdd}
N 400 -270 400 -230 {lab=vdd}
C {title.sym} 160 0 0 0 {name=l1 author="Stefan Schippers"}
C {ADC/delay/delay.sym} 360 -200 0 0 {name=x1}
C {capa.sym} 500 -150 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 240 -150 0 0 {name=V1 value="PULSE 0.1 3.2 500n 10n 10n 500n 1u" savecurrent=false}
C {gnd.sym} 240 -80 0 0 {name=l2 lab=0}
C {gnd.sym} 500 -80 0 0 {name=l3 lab=0}
C {gnd.sym} 400 -140 0 0 {name=l4 lab=0}
C {vsource.sym} 180 -150 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 180 -80 0 0 {name=l5 lab=0}
C {devices/code_shown.sym} 680 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {code_shown.sym} 730 -520 0 0 {name=s1 only_toplevel=false value="

.tran 1n 3u

.control

run
plot vin vout

.endc

"}
C {lab_wire.sym} 320 -270 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 310 -200 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 490 -200 0 0 {name=p3 sig_type=std_logic lab=vout}
