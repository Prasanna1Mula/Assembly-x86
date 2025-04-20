# 🖥️ x86 Assembly Programming Collection

![x86 Assembly](https://img.shields.io/badge/Assembly-x86-red) 

A growing collection of **well-commented** x86 assembly programs for learning low-level programming on 8086/8088 processors. Perfect for hardware enthusiasts.

## 📋 Current Programs

### 🔢 Arithmetic Operations
- [16-bit Addition](arithmetic/addition.asm) - Adds two numbers

### 🧠 Core Concept
```asm
mov ax, [num1]    ; Load first number into AX register
add ax, [num2]    ; Add second number to AX
mov [result], ax   ; Store result in memory
```
- [Multiplication](Multiplication.asm) - Multiply two numbers

### 🧠 Core Concept
```asm
mov al, NUM1  ; Load first number into AL register
mov bl, NUM2 ; Load second number into BL register
mul bl ; multiplies AL*BL and stores values in another register 
```
- [Division](Division.asm) - Division of two numbers

### 🧠 Core Concept
```asm
mov AX, num1 ; Load 1st number (quotient)  into AX register
mov DX, 0 ; clear DX
mov BX, num2 ; Load 2nd number (remainder) into BX register
div BX ; AX/BX -> quotient in AX, remainder into DX
```
### 📜 Loop Operation
-[loop of numbers](loop.asm) - Loop of numbers from 1 to 10 

### 🧠 Core Concept

```asm
mov CX, 10
mov AX, 1
print_loop:
   ; Display AX (implementation omitted)
   inc AX
   loop print_loop  ; CX-- then jump if CX≠0
```

---

## 🛠️ Setup Instructions

### Requirements
- NASM assembler
- DOSBox or EMU8086 emulator
- (Optional) ALINK linker

### How to Run
1. Assemble the program:
   ```sh
   nasm -f bin program.asm -o program.com
