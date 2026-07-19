v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -130 -220 -100 {lab=0}
N -50 -290 -50 -250 {lab=VDD}
N -50 -170 -50 -150 {lab=0}
N -480 -200 -480 -160 {lab=VDD}
N -480 -100 -480 -70 {lab=0}
N -220 -210 -140 -210 {lab=vin}
N 30 -210 60 -210 {lab=vout}
N -220 -210 -220 -190 {lab=vin}
C {title.sym} -100 -30 0 0 {name=l1 author="Marcel Jaquiéry"}
C {inverter.sym} 10 -190 0 0 {name=x1}
C {vsource.sym} -220 -160 0 0 {name=vin value="dc 0 ac 1 pulse(0 3.3 0 \{tfr\} \{tfr\} \{ton\} \{tper\})" savecurrent=false}
C {gnd.sym} -220 -100 0 0 {name=l2 lab=0}
C {vdd.sym} -50 -290 0 0 {name=l3 lab=VDD}
C {gnd.sym} -50 -150 0 0 {name=l4 lab=0}
C {vsource.sym} -480 -130 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -480 -70 0 0 {name=l6 lab=0}
C {vdd.sym} -480 -200 0 0 {name=l7 lab=VDD}
C {noconn.sym} 60 -210 2 0 {name=l5}
C {devices/code_shown.sym} 170 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 670 -760 0 0 {name=SIMULATIONS
only_toplevel=true
value="
* --- 1. Define Variables ---
.param fsig = 1k
.param tper = \{1/fsig\}
.param tfr = \{0.01*tper\}
.param ton = \{0.5*tper-2*tfr\}
.param tstop = \{4*tper\}
.param tstep = \{0.001*tper\}

* --- 2. Analyses ---
.op
.dc vin 0 3.3 0.01
.tran \{tstep\} \{tstop\}
.noise v(vout) vin dec 10 100k 80Meg

*---Save transient OP---
.save @m.x1.XM1.m0[gm]
.save @m.x1.XM1.m0[id]
.save @m.x1.XM3.m0[gds]

* --- 3. Outputs ---
.control
* Execute the simulation
run 
setplot tran1

* Create a new custom math vector
let gm_id = @m.x1.XM1.m0[gm] / @m.x1.XM1.m0[id]

* Plot the new vector with limits
plot gm_id ylimit 0 30
.endc

.save all
"}
C {lab_wire.sym} 30 -210 2 0 {name=p1 sig_type=std_logic lab=vout
}
C {lab_wire.sym} -220 -210 0 0 {name=p2 sig_type=std_logic lab=vin
}
C {gnd.sym} -220 -100 0 0 {name=l8 lab=0}
C {gnd.sym} -220 -100 0 0 {name=l9 lab=0}
C {gnd.sym} -220 -100 0 0 {name=l10 lab=0}
C {gnd.sym} -220 -100 0 0 {name=l11 lab=0}
C {gnd.sym} -220 -100 0 0 {name=l12 lab=0}
