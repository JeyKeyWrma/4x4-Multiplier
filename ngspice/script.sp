.include 22nm_MGK.pm
.include nand.sub
.include and.sub
.include not.sub
.include or.sub
.include half_adder.sub
.include full_adder.sub
.include fourbit_adder.sub
.include multiplier.sub


.param SUPPLY = 1.8
.param LAMBDA = 22n
.param width_N1 = 2*LAMBDA
.param width_P1 = 2*LAMBDA
.param width_N2 = 2*LAMBDA
.param width_P2 = 2*LAMBDA
.global gnd vdd

VDS vdd gnd 'SUPPLY'

VA3 A3 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VA2 A2 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VA1 A1 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VA0 A0 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns

VB3 B3 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VB2 B2 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VB1 B1 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns
VB0 B0 0 pulse 0 'SUPPLY' 10ns 100ps 100ps 10ns 25ns

Xmult A3 A2 A1 A0 B3 B2 B1 B0 P7 P6 P5 P4 P3 P2 P1 P0 vdd gnd multiplier

C0 P0 gnd 4f
C1 P1 gnd 4f
C2 P2 gnd 4f
C3 P3 gnd 4f
C4 P4 gnd 4f
C5 P5 gnd 4f
C6 P6 gnd 4f
C7 P7 gnd 4f

.tran 0.1n 200n

.control

run
plot v(P7)+14 v(P6)+12 v(P5)+10 v(P4)+8 v(P3)+6 v(P2)+4 v(P1)+2 v(P0)
.endc