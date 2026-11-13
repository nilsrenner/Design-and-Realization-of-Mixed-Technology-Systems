v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -140 -0 -40 {lab=vcc}
N 0 -140 40 -140 {lab=vcc}
N 0 100 40 100 {lab=vss}
N -0 40 0 100 {lab=vss}
N -140 60 -140 80 {lab=0}
N 40 -80 40 -60 {lab=0}
N 40 160 40 180 {lab=0}
N 60 -0 160 -0 {lab=vout}
N -180 -0 -60 0 {lab=vin}
N -20 -140 -0 -140 {lab=vcc}
N -20 100 -0 100 {lab=vss}
N 140 60 140 80 {lab=0}
C {DRMS/001_Inverter/Inverter.sym} 0 0 0 0 {name=x1}
C {vsource.sym} 40 -110 0 0 {name=V_cc value= "1.5" savecurrent=false}
C {vsource.sym} 40 130 0 0 {name=V_ss value= "0" savecurrent=false}
C {vsource.sym} -140 30 0 0 {name=V_in value="dc 0.75 ac 1" savecurrent=false}
C {gnd.sym} -140 80 0 0 {name=l1 lab=0}
C {gnd.sym} 40 -60 0 0 {name=l2 lab=0}
C {gnd.sym} 40 180 0 0 {name=l3 lab=0}
C {lab_pin.sym} 160 0 2 0 {name=p1 sig_type=std_logic lab=vout
}
C {lab_pin.sym} -180 0 0 0 {name=p2 sig_type=std_logic lab=vin
}
C {lab_pin.sym} -20 -140 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {lab_pin.sym} -20 100 0 0 {name=p4 sig_type=std_logic lab=vss
}
C {devices/code_shown.sym} -780 -300 0 0 {name=NGSPICE only_toplevel=true
value="
* Input pulse: 0 V to 1 V
*Vin v_in 0 PULSE(0 1 2n 2n 2n 50n 100n)
Vin v_in 0 DC 0 AC 0.75

.control
reset
op

* Transient analysis
*tran 1n 1000n
* Small signal analysis (AC)
ac dec 10 100 100MEG
* DC Analysis
dc v_in 0 1.5 0.1

* Plot input and output node voltages
plot v(v_in) v(vout)
*plot v(vcc) v(vss)
* Plot ac analysis
*plot db(v_in/vin) db(vout/vin)
.endc
"
.end
"}
C {devices/code_shown.sym} -770 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {capa.sym} 140 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 140 80 0 0 {name=l4 lab=0}
