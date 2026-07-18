v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 650 -380 680 -380 {lab=vout}
N 680 -380 680 -240 {lab=vout}
N 500 -240 680 -240 {lab=vout}
N 500 -360 500 -240 {lab=vout}
N 500 -360 530 -360 {lab=vout}
N 570 -460 570 -430 {lab=vdd}
N 570 -330 570 -310 {lab=vss}
N 600 -460 600 -420 {lab=irefn}
N 500 -400 530 -400 {lab=vin}
N 680 -380 700 -380 {lab=vout}
C {title.sym} 160 0 0 0 {name=l1 author="Tobias Huber"}
C {analogbuffer/analogbuffer-openloop.sym} 530 -360 0 0 {name=x1}
C {iopin.sym} 570 -460 3 0 {name=p1 lab=vdd}
C {iopin.sym} 570 -310 1 0 {name=p2 lab=vss}
C {ipin.sym} 600 -460 1 0 {name=p3 lab=irefn}
C {ipin.sym} 500 -400 0 0 {name=p4 lab=vin}
C {opin.sym} 700 -380 0 0 {name=p5 lab=vout}
