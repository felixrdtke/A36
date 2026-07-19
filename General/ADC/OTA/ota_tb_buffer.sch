v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -210 -30 -170 {lab=VDD}
N -30 -90 -30 -70 {lab=0}
N -380 -200 -380 -160 {lab=VDD}
N -380 -100 -380 -70 {lab=0}
N 30 -130 80 -130 {lab=out}
N -280 -60 -280 -50 {lab=0}
N -10 -320 -10 -300 {lab=0}
N -10 -240 -10 -160 {lab=#net1}
N -280 -150 -90 -150 {lab=in_p}
N -280 -150 -280 -120 {lab=in_p}
N 60 -130 60 -20 {lab=out}
N -110 -20 60 -20 {lab=out}
N -110 -110 -110 -20 {lab=out}
N -110 -110 -90 -110 {lab=out}
C {title.sym} -80 370 0 0 {name=l1 author="Marcel Jaquiéry"}
C {vsource.sym} -280 -90 0 0 {name=vin_pos value="PULSE 1.4 1.8 100n 10n 10n 10u 20u" savecurrent=false}
C {vdd.sym} -30 -210 0 0 {name=l3 lab=VDD}
C {gnd.sym} -30 -70 0 0 {name=l4 lab=0}
C {vsource.sym} -380 -130 0 0 {name=V2 value=3.3 savecurrent=true}
C {gnd.sym} -380 -70 0 0 {name=l6 lab=0}
C {vdd.sym} -380 -200 0 0 {name=l7 lab=VDD}
C {devices/code_shown.sym} 260 100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 270 -610 0 0 {name=SIMULATIONS
only_toplevel=true
value="

.dc vin_pos 0 3.3 0.05
.tran 10n 100u

.save all
.options savecurrents

.control
run

setplot dc1
plot out-in_p

setplot tran1
plot in_p out


.endc
"}
C {lab_wire.sym} 80 -130 2 0 {name=p1 sig_type=std_logic lab=out
}
C {lab_wire.sym} -90 -150 0 0 {name=p2 sig_type=std_logic lab=in_p
}
C {gnd.sym} -280 -50 0 0 {name=l8 lab=0}
C {isource.sym} -10 -270 0 0 {name=I0 value=1u}
C {gnd.sym} -10 -320 2 0 {name=l10 lab=0}
C {ADC/OTA/ota.sym} -50 -130 0 0 {name=x1}
