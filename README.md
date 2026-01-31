# Overview 
This project implements a QPSK modulator and AGC using Verilog HDL.
The design is intended for FPGA-based digital communication systems and operates with
a 64 MHz system clock.

The modulator includes PRBS generation, symbol mapping, carrier generation,
and I/Q modulation to produce a QPSK-modulated output signal. 
The AGC includes gain block, abs block, power estimation, accumulator and product block to control the gain of the system. 

# Tools used 
- Verilog HDL
- Xilinx ISE / Libero Soc
- ModelSim / QuestaSim 


