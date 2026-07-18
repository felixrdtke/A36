v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -510 540 -400 {lab=phi2}
N 470 -460 470 -430 {lab=vdd}
N 470 -370 470 -340 {lab=vss}
N 220 -300 360 -300 {lab=clk}
N 360 -400 360 -300 {lab=clk}
N 360 -400 430 -400 {lab=clk}
N 510 -400 540 -400 {lab=phi2}
N 640 -460 640 -430 {lab=vdd}
N 640 -370 640 -340 {lab=vss}
N 540 -400 600 -400 {lab=phi2}
N 360 -300 360 -200 {lab=clk}
N 540 -400 540 -220 {lab=phi2}
N 360 -200 600 -200 {lab=clk}
N 540 -220 600 -220 {lab=phi2}
N 640 -280 640 -260 {lab=vdd}
N 640 -160 640 -140 {lab=vss}
N 680 -400 770 -400 {lab=#net1}
N 770 -400 770 -320 {lab=#net1}
N 730 -300 770 -300 {lab=clk}
N 810 -380 810 -360 {lab=vdd}
N 810 -260 810 -240 {lab=vss}
N 860 -310 900 -310 {lab=phi4}
N 700 -210 740 -210 {lab=phi6}
C {title.sym} 160 0 0 0 {name=l1 author="Tobias Huber"}
C {ipin.sym} 220 -300 0 0 {name=p1 lab=clk}
C {ADC/delay/delay.sym} 430 -400 0 0 {name=x1}
C {opin.sym} 540 -510 0 0 {name=p2 lab=phi2}
C {iopin.sym} 230 -460 0 1 {name=p3 lab=vdd}
C {iopin.sym} 230 -140 0 1 {name=p4 lab=vss}
C {lab_wire.sym} 470 -460 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 470 -340 0 0 {name=p6 sig_type=std_logic lab=vss}
C {ADC/delay/and.sym} 770 -300 0 0 {name=x2}
C {ADC/delay/delay.sym} 600 -400 0 0 {name=x3}
C {lab_wire.sym} 640 -460 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 640 -340 0 0 {name=p8 sig_type=std_logic lab=vss}
C {ADC/delay/or.sym} 600 -200 0 0 {name=x4}
C {lab_wire.sym} 640 -280 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 640 -140 0 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_wire.sym} 730 -300 0 0 {name=p11 sig_type=std_logic lab=clk}
C {lab_wire.sym} 810 -380 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 810 -240 0 0 {name=p13 sig_type=std_logic lab=vss}
C {opin.sym} 900 -310 0 0 {name=p14 lab=phi4}
C {opin.sym} 740 -210 0 0 {name=p15 lab=phi6}
