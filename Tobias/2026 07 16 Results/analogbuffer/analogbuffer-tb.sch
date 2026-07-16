v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -80 90 -60 {lab=#net1}
N 90 -160 90 -140 {lab=0}
N -160 -20 -160 0 {lab=vdd}
N -160 60 -160 80 {lab=0}
N 70 20 70 40 {lab=0}
N 70 -80 70 -60 {lab=vdd}
N -40 -20 -40 -0 {lab=vin}
N -40 -20 30 -20 {lab=vin}
N -40 60 -40 80 {lab=0}
N 130 -20 160 -20 {lab=vout}
N 160 -20 160 -0 {lab=vout}
C {analogbuffer/analogbuffer.sym} 170 -20 0 0 {name=x1}
C {isource.sym} 90 -110 0 0 {name=I0 value=1u}
C {gnd.sym} 90 -160 2 0 {name=l1 lab=0}
C {vsource.sym} -160 30 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -160 80 0 0 {name=l2 lab=0}
C {gnd.sym} 70 40 0 0 {name=l3 lab=0}
C {lab_wire.sym} -160 -20 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 70 -80 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} -40 30 0 0 {name=V2 value="PULSE 0.5 2.7 10n 1n 1n 1u 2u" savecurrent=false}
C {gnd.sym} -40 80 0 0 {name=l4 lab=0}
C {capa.sym} 160 30 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 60 0 0 {name=l5 lab=0}
C {title.sym} -330 250 0 0 {name=l6 author="Tobias Huber"}
C {devices/code_shown.sym} 310 -450 0 0 {name=NGSPICE only_toplevel=true
only_toplevel=true
value="
* --- 1. Define Variables ---
.param tstop = \{10u\}
.param tstep = \{500p\}
.param ustep = \{0.01\}

* --- 2. Analyses ---
.op
.dc V2 0 3.3 \{ustep\}
*.tran \{tstep\} \{tstop\}
*.noise v(vout) Vin dec 10 100k 80Meg

*---Save transient OP---
*.save @m.x1.XM1.m0[gm]
*.save @m.x1.XM1.m0[id]
*.save @m.x1.XM3.m0[gds]
.options savecurrents

* --- 3. Outputs ---
.control
run 
setplot dc1
plot vout-vin
* Create a new custom math vector
plot @m.x1.x1.XM4PS.m0[id] @m.x1.x1.XM5ns.m0[id] @m.x1.x1.XM4ns.m0[id]
plot @m.x1.x1.XM5P.m0[id]+@m.x1.x1.xm5pr.m0[id] @m.x1.x1.XM5n.m0[id]+@m.x1.x1.xm5nr.m0[id]

*setplot tran1
*plot vout-vin


.endc

.save all
"}
C {lab_wire.sym} 0 -20 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_wire.sym} 160 -20 0 0 {name=p4 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 290 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
