4-bit Arithmetic Logic Unit (ALU) in Verilog HDL
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog Hardware Description Language (HDL) in Quartus. The ALU performs fundamental arithmetic and logical operations that are essential components of a CPU.
Project Overview
The ALU is designed to perform the following operations based on a 2-bit OpCode:

00: Subtraction
01: Addition
10: Bitwise OR
11: Bitwise AND

Components
1. Full Adder

Single-bit addition with carry
Fundamental building block for the 4-bit adder
Implemented using basic logic gates (AND, XOR, OR)

2. Four-Bit Adder

Built using four full adder modules connected in series
Handles 4-bit binary numbers with cascaded carry chain
Parallel addition of 4-bit numbers
Generates carry-out for overflow detection

3. Logic Units

AND gate array for bitwise AND operations
OR gate array for bitwise OR operations
Each gate processes 4-bit inputs in parallel

4. Subtraction Unit

Implements subtraction using two's complement method
Inverts the second operand and adds 1 to the LSB
Uses the 4-bit adder circuit for computation

5. Complete ALU

Integrates all components
Uses a 2-bit OpCode selector
Handles different operations through appropriate signal routing

Testing and Verification
The project was verified through several test cases:
Addition Testing

Tested various input combinations
Verified carry propagation
Checked boundary conditions

Subtraction Testing

Verified correct 2's complement operation
Tested with both positive and negative results
Checked borrow propagation

Logic Operation Testing

Verified AND operations
Verified OR operations
Tested all bit combinations

ALU Behavioral Testing

Verified functional correctness for all operations
Ensured proper OpCode handling

ALU Data Flow Testing

Tested signal propagation through the system
Verified correct data flow across all stages

Implementation Details
The project includes multiple Verilog modules:

full_adder.v: Single-bit full adder implementation
four_bit_adder.v: 4-bit adder using full adder modules
and_gate.v: Implementation of AND operation
or_gate.v: Implementation of OR operation
subtractor.v: Implementation of subtraction operation
alu.v: Top-level module integrating all components

Tools Used

Quartus Prime for synthesis and implementation
ModelSim for simulation and waveform analysis

Author
Ameer Khalili
