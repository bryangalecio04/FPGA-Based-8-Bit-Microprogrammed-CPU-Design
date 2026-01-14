# Develop the RTL statements for the CPU instructions:

# All instructions do Instruction Fetch:
F1: MAR ← PC # Load address of instruction
F2: MDR ← M[MAR], PC ← PC + 1 # Fetch instruction and increment PC
F3: IR ← MDR # Decode instruction

nop 			00000000
- None -

loadi Rn, X 		0001000n X
LI1: MAR ← PC    # Load memory address of immediate operand
LI2: MDR ← M[MAR], PC ← PC + 1   # Fetch immediate operand and increment PC
LI3: R0 ← MDR if IR(0) = 0, R1 ← MDR if IR(0) = 1     # Load immediate value into R0 if IR(0) = 0 else if IR(0) = 1 into R1

load Rn, X 		0010000n X
L1: MAR ← PC    # Load memory address of operand
L2: MDR ← M[MAR], PC ← PC + 1   # Fetch operand address and increment PC
L3: MAR ← MDR   # Load effective address
L4: MDR ← M[MAR]    # Fetch data from memory
L5: R0 ← MDR if IR(0) = 0, R1 ← MDR if IR(0) = 1    # Load data into R0 if IR(0) = 0 else if IR(0) = 1 load into R1

store X, Rn 		0011000n X
ST1: MAR ← PC    # Load memory address of operand
ST2: MDR ← M[MAR], PC ← PC + 1   # Fetch operand address and increment PC
ST3: MAR ← MDR   # Load effective address
ST4: MDR ← R0 if IR(0) = 0, MDR ← R1 if IR(0) = 1    # Load data from R0 if IR(0) = 0 else if IR(0) = 1 load from R1
ST5: M[MAR] ← MDR    # Store data into memory

move Rn, Rm		0100000n m!=n
M1: R0 ← R1 if IR(0) = 0, R1 ← R0 if IR(0) = 1    # Move value from R1 to R0 if IR(0) = 0 else if IR(0) = 1 move from R0 to R1

add Rn, Rm		0101000n m!=n
A1: R0 ← R0 + R1 if IR(0) = 0, R1 ← R0 + R1 if IR(0) = 1    # R0 plus R1 if IR(0) = 0 else if IR(0) = 1 R1 plus R0

sub Rn, Rm 		0110000n m!=n
S1: R0 ← R0 - R1 if IR(0) = 0, R1 ← R1 - R0  if IR(0) = 1   # R0 minus R1 if IR(0) = 0 else if IR(0) = 1 R1 minus R0

testnz Rn		0111000n
TN1: Z ← NOT(R0(0) OR ... OR R0(7)) if IR(0) = 0, ← NOT(R1(0) OR ... OR R1(7)) if IR(0) = 1     # Z = 1 if R0 or R1 is nonzero

testz Rn 		1000000n
T1: Z ← R0(0) OR ... OR R0(7) if IR(0) = 0, ← R1(0) OR ... OR R1(7) if IR(0) = 1    # Z = 1 if R0 or R1 is nonzero

jump X 		10010000 X
J1: MAR ← PC    # Load memory address of jump target
J2: MDR ← M[MAR]   # Fetch jump target address
J3: PC ← MDR    # Jump to target address

jumpz X 		10100000 X
JZ1: MAR ← PC # Load memory address of jump target
JZ2: MDR ← M[MAR], PC <- PC + 1   # Fetch jump target address and increment PC
JZ3: PC ← MDR if Z=1   # Jump if Z flag is set

loadsp X 		10110000 X
LS1: MAR ← PC   # Load memory address of operand
LS2: MDR ← M[MAR], PC ← PC + 1  # Fetch operand and increment PC
LS3: SP ← MDR   # Load operand into SP

peep Rn 		1100000n
P1: MAR ← SP    # Load address from stack pointer
P2: MDR ← M[MAR]   # Fetch value from stack
P3: R0 ← MDR if IR(0) = 0, R1 ← MDR if IR(0) = 1    # Peek value from stack into R0 if IR(0) = 0 else if IR(0) = 1 into R1

push Rn 		1101000n
PU1: SP ← SP - 1  # Decrement stack pointer
PU2: MAR ← SP   # Load address from stack pointer
PU3: MDR ← R0 if IR(0) = 0, MDR ← R1 if IR(0) = 1   # Load value from R0 if IR(0) = 0 else if IR(0) = 1 from R1
PU4: M[MAR] ← MDR   # Push value onto stack

pop Rn 		1110000n
PO1: MAR ← SP   # Load address from stack pointer
PO2: MDR ← M[MAR]   # Fetch value from stack
PO3: R0 ← MDR if IR(0) = 0, R1 ← MDR if IR(0) = 1   # Load value into R0 if IR(0) = 0 else if IR(0) = 1 into R1
PO4: SP ← SP + 1   # Increment stack pointer

halt 			11110000
H1: PC ← 0  # Stop execution by resetting PC