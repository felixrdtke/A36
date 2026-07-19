v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -210 -30 -170 {lab=VDD}
N -30 -90 -30 -70 {lab=0}
N -360 -120 -360 -80 {lab=VDD}
N -360 -20 -360 10 {lab=0}
N 30 -130 50 -130 {lab=out}
N -160 -50 -160 -40 {lab=0}
N -160 -110 -90 -110 {lab=in_n}
N -280 -90 -280 -80 {lab=0}
N 30 -40 30 -20 {lab=0}
N 30 -130 30 -100 {lab=out}
N -280 -150 -90 -150 {lab=in_p}
N -10 -320 -10 -300 {lab=0}
N -10 -240 -10 -160 {lab=#net1}
C {title.sym} -80 370 0 0 {name=l1 author="Marcel Jaquiéry"}
C {vsource.sym} -280 -120 0 0 {name=vin_pos value="dc 1.65 ac 1" savecurrent=false}
C {vdd.sym} -30 -210 0 0 {name=l3 lab=VDD}
C {gnd.sym} -30 -70 0 0 {name=l4 lab=0}
C {vsource.sym} -360 -50 0 0 {name=V2 value=3.3 savecurrent=true}
C {gnd.sym} -360 10 0 0 {name=l6 lab=0}
C {vdd.sym} -360 -120 0 0 {name=l7 lab=VDD}
C {noconn.sym} 50 -130 2 0 {name=l5}
C {devices/code_shown.sym} 90 20 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 160 -1070 0 0 {name=SIMULATIONS
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
*.op

* AC analysis: 10 points per decade, 1 Hz to 100 MHz
.ac dec 10 1 100Meg
.dc vin_pos 0 3.3 0.01

*---Save transient OP---
.save @m.x1.XM6.m0[gm]
*.save @m.x1.XM6.m0[id]
.save @m.x1.XM6.m0[gds]

* --- 3. Outputs ---
.control
* Execute the simulation
run

* Check DC levels
*print v(in_p) v(in_n) v(out) v(VDD) v(0)

print i(V2)
print v(out)        ; DC output voltage


* Plot transfer characteristic
plot v(out) vs v(in_p)

* Check phase at low frequency (1 Hz)
print phase(v(out))/pi*180 at 1

* Check gain magnitude at 100 kHz
print vdb(out) at 100k

plot @m.x1.XM6.m0[gm]
plot out

plot @m.x1.XM6.m0[id]


* Plot everything
setplot ac1
plot vdb(out) cph(out)/pi*180

*plot 1/@m.x1.XM6.m0[gds]

* Plot gain in dB
*plot vdb(out)
.endc

.save all
"}
C {lab_wire.sym} 30 -130 2 0 {name=p1 sig_type=std_logic lab=out
}
C {lab_wire.sym} -90 -150 0 0 {name=p2 sig_type=std_logic lab=in_p
}
C {vsource.sym} -160 -80 0 0 {name=vin_neg value="dc 1.65" savecurrent=false}
C {gnd.sym} -160 -40 0 0 {name=l2 lab=0}
C {gnd.sym} -280 -80 0 0 {name=l8 lab=0}
C {lab_wire.sym} -90 -110 0 0 {name=p3 sig_type=std_logic lab=in_n
}
C {capa.sym} 30 -70 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 30 -20 0 0 {name=l9 lab=0}
C {isource.sym} -10 -270 0 0 {name=I0 value=1u}
C {gnd.sym} -10 -320 2 0 {name=l10 lab=0}
C {Two_Stage_CMFB_OP.sym} -40 -130 0 0 {name=x1}
