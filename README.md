# Overview 
This project implements a automatic gain control system (AGC) with QPSK modulator as input signal using Verilog HDL.
This design is intended for FPGA-based digital communication systems specifically for satellite modem and receivers that operates with a 64 MHz sampling clock and 8 MHz signal frequency.

The AGC system design here is an open loop AGC design.
The modulator includes PRBS generation, symbol mapping, carrier generation, and I/Q modulation to produce a QPSK-modulated output signal. 

The bandpass filter is also used here for passing 8 MHz signal to the open loop AGC system.
The AGC includes power estimation, accumulator and product blocks to control the gain of the system. 

# Tools used 
- Verilog HDL
- Xilinx ISE / Libero Soc
- ModelSim / QuestaSim 


