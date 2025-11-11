 **32-Bit ALU (Arithmetic Logic Unit)**

** Overview**

This project implements a 32-bit Arithmetic Logic Unit (ALU) in Verilog HDL.
The ALU performs a variety of arithmetic and logical operations on two 32-bit operands.
It produces a 32-bit output and three status flags — Carry (C), Zero (Z), and Negative (N) — which help determine the result conditions.

** Features**

**Bitwise Operations:**

NOT (A)

OR (A | B)

AND (A & B)

Arithmetic Operations:

NEGATION (-A)

ADDITION (A + B)

SUBTRACTION (A - B)

MULTIPLICATION (A * B)

DIVISION (A / B) (returns 0 if B = 0)

Status Flags:

C (Carry) – Indicates carry out or borrow.

Z (Zero) – Set if the output is zero.

N (Negative) – Reflects the sign bit (out[31]).

** Input/Output Description**

Signal	Direction	Width	Description
a	Input	32-bit	First operand
b	Input	32-bit	Second operand
sel	Input	3-bit	Operation selector
out	Output	32-bit	ALU result
c	Output	1-bit	Carry flag
z	Output	1-bit	Zero flag
n	Output	1-bit	Negative flag
 Operation Selection Table
sel	Operation	Description
000	~A	Bitwise NOT
001	`A	B`
002	A & B	Bitwise AND
011	-A	Two’s complement of A
100	A + B	Addition
101	A - B	Subtraction
110	A * B	Multiplication
111	A / B	Division (if B ≠ 0)

 **Internal Logic**

Carry flag (C) is set based on addition overflow or comparison (A < B).

Zero flag (Z) is asserted when the output is all zeros.

Negative flag (N) reflects the most significant bit of the result.


** Simulation**


You can simulate this ALU in tools like:

Xilinx Vivado

To test, instantiate the ALU in a testbench and apply different sel values with various input combinations to verify all operations.

 File Structure
 ALU_32bit
 
 ┣  alu_32bit.v        # Main Verilog source file
 
 ┣  alu_32bit_tb.v     # (Optional) Testbench file
 
 ┗  README.md           # Project documentation
 

 **Tools Used**

Language: Verilog HDL

Simulation Tool: ModelSim / Vivado

Target Platform: FPGA / ASIC design ready
