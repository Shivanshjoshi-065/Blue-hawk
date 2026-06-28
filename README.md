# Overview 
This project implements a Carrier synchronizer system with QPSK modulator as input signal using Verilog HDL.
This design is intended for FPGA-based digital communication systems specifically for satellite modem and receivers that operates with a 64 MHz sampling clock and 8 MHz signal frequency.

The Carrier synchronizer system here is an open loop system.
The modulator includes PRBS generation, symbol mapping, carrier generation, and I/Q modulation to produce a QPSK-modulated output signal. 

The bandpass filter is also used here for passing 8 MHz signal to the demodulator system.
The AGC includes power estimation, accumulator and product blocks to control the gain of the system.  
The Carrier synchronizer includes costas loop and Nco block to recover carrier signals.

# Tools used 
- Verilog HDL
- Xilinx ISE / Libero Soc
- ModelSim / QuestaSim 


