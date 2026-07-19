v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -230 -220 -230 -180 {lab=VDD}
N -230 -100 -230 -80 {lab=0}
N -660 -130 -660 -90 {lab=VDD}
N -660 -30 -660 0 {lab=0}
N -370 -160 -290 -160 {lab=in_p}
N -580 -160 -370 -160 {lab=in_p}
N -450 -60 -450 -50 {lab=0}
N -580 -100 -580 -90 {lab=0}
N -100 -50 -100 -30 {lab=0}
N -290 -120 -290 -20 {lab=in_n}
N -290 -20 -260 -20 {lab=in_n}
N -170 -140 -100 -140 {lab=out}
N -100 -140 -100 -110 {lab=out}
N -200 -20 -130 -20 {lab=out}
N -130 -140 -130 -20 {lab=out}
N -340 -120 -290 -120 {lab=in_n}
N -450 -120 -400 -120 {lab=#net1}
N -210 -330 -210 -310 {lab=0}
N -210 -250 -210 -170 {lab=#net2}
C {title.sym} -280 360 0 0 {name=l1 author="Marcel Jaquiéry"}
C {vsource.sym} -580 -130 0 0 {name=vin_pos value="dc 0 ac 0" savecurrent=false}
C {vdd.sym} -230 -220 0 0 {name=l3 lab=VDD}
C {gnd.sym} -230 -80 0 0 {name=l4 lab=0}
C {vsource.sym} -660 -60 0 0 {name=V2 value=3.3 savecurrent=true}
C {gnd.sym} -660 0 0 0 {name=l6 lab=0}
C {vdd.sym} -660 -130 0 0 {name=l7 lab=VDD}
C {noconn.sym} -100 -140 2 0 {name=l5}
C {devices/code_shown.sym} -10 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} -170 -140 2 0 {name=p1 sig_type=std_logic lab=out
}
C {lab_wire.sym} -290 -160 0 0 {name=p2 sig_type=std_logic lab=in_p
}
C {vsource.sym} -450 -90 0 0 {name=vin_neg value="dc 1.65" savecurrent=false}
C {gnd.sym} -450 -50 0 0 {name=l2 lab=0}
C {gnd.sym} -580 -90 0 0 {name=l8 lab=0}
C {lab_wire.sym} -290 -120 0 0 {name=p3 sig_type=std_logic lab=in_n
}
C {capa.sym} -100 -80 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -100 -30 0 0 {name=l9 lab=0}
C {res.sym} -370 -120 3 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {res.sym} -230 -20 3 0 {name=R2
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} -10 -770 0 0 {name=SIMULATIONS
only_toplevel=true
value="

*----------------------------------------
* DC Sweep of Non-Inverting Op-Amp
*----------------------------------------

* Power supply
.param VDD = 3.3

*----------------------------------------
* Analysis
*----------------------------------------
.dc vin_pos 0 3.3 0.01

.save all

.control
run

* Print input and output voltages
print v(in_p) v(out)

* Plot transfer characteristic
plot v(out) vs v(in_p)


.endc

.save all
"}
C {Two_Stage_OP.sym} -250 -140 0 0 {name=x1}
C {isource.sym} -210 -280 0 0 {name=I0 value=1u}
C {gnd.sym} -210 -330 2 0 {name=l10 lab=0}
