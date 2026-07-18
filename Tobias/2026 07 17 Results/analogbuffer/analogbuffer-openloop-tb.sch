v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -280 510 -280 {lab=vout}
N 510 -280 510 -250 {lab=vout}
N 420 -340 420 -320 {lab=#net1}
N 420 -420 420 -400 {lab=0}
N 170 -300 170 -230 {lab=vin}
N 170 -300 350 -300 {lab=vin}
N 290 -260 290 -230 {lab=vfb}
N 290 -260 350 -260 {lab=vfb}
N 510 -190 510 -150 {lab=0}
N 170 -170 170 -150 {lab=0}
N 290 -170 290 -150 {lab=0}
N 70 -170 70 -150 {lab=0}
N 70 -270 70 -230 {lab=vdd}
N 390 -230 390 -210 {lab=0}
N 390 -350 390 -330 {lab=vdd}
C {analogbuffer/analogbuffer-openloop.sym} 350 -260 0 0 {name=x1}
C {vsource.sym} 170 -200 0 0 {name=V1 value="dc \{voff\} ac 1" savecurrent=false}
C {vsource.sym} 290 -200 0 0 {name=V2 value="dc \{vcm\}" savecurrent=false}
C {capa.sym} 510 -220 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 510 -150 0 0 {name=l5 lab=0}
C {isource.sym} 420 -370 0 0 {name=I0 value=1u}
C {gnd.sym} 420 -420 2 0 {name=l1 lab=0}
C {lab_wire.sym} 390 -350 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {gnd.sym} 290 -150 0 0 {name=l2 lab=0}
C {gnd.sym} 170 -150 0 0 {name=l3 lab=0}
C {vsource.sym} 70 -200 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} 70 -150 0 0 {name=l4 lab=0}
C {lab_wire.sym} 70 -270 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} 390 -210 0 0 {name=l6 lab=0}
C {title.sym} 160 0 0 0 {name=l7 author="Tobias Huber"}
C {devices/code_shown.sym} 640 -660 0 0 {name=NGSPICE only_toplevel=true
only_toplevel=true
value="
* --- 1. Define Variables ---
.param vcm = \{1.5\}
.param voff = \{1.505\}
.param tstop = \{1\}
.param tstep = \{1\}
.param ustep = \{0.01\}

* --- 2. Analyses ---
.op
.ac dec 10 10 100Meg
.dc V1 0 3.3 \{ustep\}
*.tran \{tstep\} \{tstop\}
*.noise v(vout) Vin dec 10 100k 80Meg

*---Save transient OP---
*.save @m.x1.XM1.m0[gm]
*.save @m.x1.XM1.m0[id]
*.save @m.x1.XM3.m0[gds]

* --- 3. Outputs ---
.control
run 
setplot ac1
plot vdb(vout)
plot vp(vout)*180/pi

setplot dc1
plot vout

.endc

.save all
"}
C {devices/code_shown.sym} 620 -770 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 510 -280 0 0 {name=p3 sig_type=std_logic lab=vout}
C {lab_wire.sym} 290 -300 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_wire.sym} 320 -260 0 0 {name=p5 sig_type=std_logic lab=vfb}
