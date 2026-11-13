v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -90 10 -90 {lab=vcc}
N 0 -0 0 60 {lab=vout}
N -0 90 10 90 {lab=xxx}
N 10 90 10 130 {lab=xxx}
N 0 130 10 130 {lab=xxx}
N 0 130 -0 160 {lab=xxx}
N 0 120 0 130 {lab=xxx}
N 0 -130 -0 -120 {lab=vcc}
N 10 -130 10 -90 {lab=vcc}
N 0 -130 10 -130 {lab=vcc}
N 0 -170 0 -130 {lab=vcc}
N -120 -90 -40 -90 {lab=vin}
N -120 -0 -120 90 {lab=vin}
N -120 90 -40 90 {lab=vin}
N -180 0 -120 -0 {lab=vin}
N -120 -90 -120 -0 {lab=vin}
N 0 -0 80 -0 {lab=vout}
N 0 -60 0 -0 {lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 90 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -90 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -180 0 2 0 {name=p1 lab=vin


}
C {iopin.sym} 80 0 0 0 {name=p2 lab=vout
}
C {ipin.sym} 0 -170 0 0 {name=p3 lab=vcc}
C {ipin.sym} 0 160 0 0 {name=p4 lab=vss}
