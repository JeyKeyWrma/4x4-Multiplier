# 4x4-Multiplier
This repository contains the implementation of a 4x4 multiplier, where the following tools were used
* NG-Spice for circuit design
* Magic for layout design
* Verilog for HDL design and verification

The schematic of the circuit is as follows
![image](https://github.com/JeyKeyWrma/4x4-Multiplier/assets/99319804/c1dbc0a8-2a8d-4761-866b-60e39d80c493)

## Circuit Design

1. Basic gates such as NAND, OR, AND and NOT gates were built using 22nm technology.
2. Half Adder was realized using 5 NAND gates.
3. Full adder was realized 2 half adders and an or gate.
4. Four bit adder was realized using full adders.
5. Finally four bit multiplier using four bit adders.

## Layout Design
Firstly NAND gate was realized and then the half adders, full adders and multipliers were built using the *getcell* command.

## HDL
Verification of functionality of the multiplier was done using structural implementation. Different modules were built and then used these modules to build 4-bit Multiplier.
