v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 730 -180 730 -160 {lab=phi6}
N 690 -180 730 -180 {lab=phi6}
N 800 -210 800 -160 {lab=phi4}
N 690 -210 800 -210 {lab=phi4}
N 890 -240 890 -160 {lab=phi2}
N 690 -240 890 -240 {lab=phi2}
N 890 -100 890 -80 {lab=0}
N 800 -100 800 -80 {lab=0}
N 730 -100 730 -80 {lab=0}
N 580 -140 580 -130 {lab=0}
N 390 -150 390 -130 {lab=0}
N 300 -150 300 -130 {lab=0}
N 390 -250 390 -210 {lab=clk}
N 390 -250 510 -250 {lab=clk}
N 580 -300 580 -280 {lab=vdd}
N 300 -300 580 -300 {lab=vdd}
N 300 -300 300 -210 {lab=vdd}
C {title.sym} 160 0 0 0 {name=l1 author="Tobias Huber"}
C {vsource.sym} 390 -180 0 0 {name=V1 value="PULSE 0.1 3.2 500n 10n 10n 500n 1u" savecurrent=false}
C {ADC/delay/phases.sym} 510 -250 0 0 {name=x1}
C {vsource.sym} 300 -180 0 0 {name=V2 value=3.3 savecurrent=false}
C {capa.sym} 730 -130 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 800 -130 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 890 -130 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 300 -130 0 0 {name=l3 lab=0}
C {gnd.sym} 390 -130 0 0 {name=l4 lab=0}
C {gnd.sym} 580 -130 0 0 {name=l5 lab=0}
C {gnd.sym} 730 -80 0 0 {name=l6 lab=0}
C {gnd.sym} 800 -80 0 0 {name=l7 lab=0}
C {gnd.sym} 890 -80 0 0 {name=l8 lab=0}
C {lab_wire.sym} 450 -250 0 0 {name=p1 sig_type=std_logic lab=clk}
C {lab_wire.sym} 460 -300 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 760 -240 0 0 {name=p3 sig_type=std_logic lab=phi2}
C {lab_wire.sym} 760 -210 0 0 {name=p4 sig_type=std_logic lab=phi4}
C {lab_wire.sym} 730 -180 0 0 {name=p5 sig_type=std_logic lab=phi6}
C {devices/code_shown.sym} 1010 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {code_shown.sym} 1020 -470 0 0 {name=s1 only_toplevel=false value="

.tran 1n 3u

.control
run
plot clk phi2 phi4 phi6

.endc

"}
