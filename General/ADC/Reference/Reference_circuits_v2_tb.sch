v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -420 260 -410 {lab=#net1}
N 260 -420 340 -420 {lab=#net1}
N 200 -450 200 -410 {lab=#net2}
N 200 -450 340 -450 {lab=#net2}
N 130 -600 130 -410 {lab=vdd}
N 130 -350 130 -330 {lab=0}
N 200 -350 200 -330 {lab=0}
N 260 -350 260 -330 {lab=0}
N 400 -600 460 -600 {lab=vdd}
N 540 -460 610 -460 {lab=vadd}
N 540 -440 610 -440 {lab=vmid}
N 540 -420 610 -420 {lab=vsub}
N 260 -600 260 -580 {lab=vdd}
N 260 -520 260 -500 {lab=0}
N 130 -600 260 -600 {lab=vdd}
N 260 -600 400 -600 {lab=vdd}
N 400 -380 400 -350 {lab=0}
N 400 -600 400 -500 {lab=vdd}
N 460 -520 460 -500 {lab=#net3}
N 460 -600 460 -580 {lab=vdd}
C {title.sym} 170 -60 0 0 {name=l1 author="Tobias Huber"}
C {vsource.sym} 200 -380 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 260 -380 0 0 {name=V2 value=0.3 savecurrent=false}
C {vsource.sym} 130 -380 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 130 -330 0 0 {name=l2 lab=0}
C {gnd.sym} 200 -330 0 0 {name=l3 lab=0}
C {gnd.sym} 260 -330 0 0 {name=l4 lab=0}
C {gnd.sym} 400 -350 0 0 {name=l5 lab=0}
C {noconn.sym} 610 -460 2 0 {name=l6}
C {noconn.sym} 610 -440 2 0 {name=l7}
C {noconn.sym} 610 -420 2 0 {name=l8}
C {lab_wire.sym} 590 -460 0 0 {name=p1 sig_type=std_logic lab=vadd}
C {lab_wire.sym} 590 -440 0 0 {name=p2 sig_type=std_logic lab=vmid}
C {lab_wire.sym} 590 -420 0 0 {name=p3 sig_type=std_logic lab=vsub}
C {code_shown.sym} 710 -690 0 0 {name=SImulation only_toplevel=false value=
"
.op

.control
run
echo "Iref:"
print V4#branch
echo "Vmid:"
print vmid
echo "Vadd:"
print vadd
echo "Vsub:"
print vsub
.endc
"}
C {devices/code_shown.sym} 700 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {res.sym} 260 -550 0 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 260 -500 0 0 {name=l9 lab=0}
C {ADC/Reference/Reference_circuits_v2.sym} 340 -420 0 0 {name=x1}
C {lab_wire.sym} 330 -600 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {vsource.sym} 460 -550 0 0 {name=V4 value=0 savecurrent=false}
