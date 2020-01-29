# Nand2Game
## Building a Modern Computer from First Principles
based on the book ["The Elements of Computer Systems by Noam Nisan and Shimon Schocken"](https://mitpress.mit.edu/books/elements-computing-systems)
which exposes students to a significant body of computer science knowledge, gained through a series of hardware & software construction tasks. These tasks demonstrate how theoritical and applied techniques taught in other computer science courses are used in practice.<br />

This repository contains all the completed tasks along with summaries of all the chapters in the book.

## Structure of the book
It contains 12 chapters, each dedicated to a key hardware or software abstraction,a proposed implementation, and an actual project that builds and tests it. The following picture shows the sequence of projects.<br />
<p align="center"> <b>Project Map</b> </p>
<p align="center">  
<img src="https://github.com/shinelikeasmile/nand2game/blob/master/images/q.png">
</p>

## Contents 
1. [Boolean Logic](#1)
2. [Boolean Arithmetic](#2)
3. [Sequential Logic](#3)
4. [Machine Language](#4)
5. [Computer Architecture](#5)
6. [Assembler](#6)
7. [Virtual Machine 1 : Stack Arithmetic](#7)
8. [Virtual Machine 2 : Program Control](#8)
9. [High-Level Language](#9)
10. [Compiler 1 : Syntax Analysis](#10)
11. [Compiler 2 : Code Generation](#11)
12. [Operating System](#12)

<a name="1"></a>
## 1. Boolean Logic
* Boolean Gates are physical implementations of boolean functions.
* A boolean function is a function that operates on binary inputs and returns outputs.
* The simplest way to specify a Boolean function is truth table representation. 
* A boolean function can also be specified using boolean operations over its input variables : Boolean expression 
* Every Boolean function,no matter how complex, can be expressed using three Boolean operators only : canonical representation.
* Canonical representation : we OR-together all the terms for all the rows where the function has value 1.
* The no.of boolean function that can be defined over n binary variables is 2<sup>2</sup><sup><sup>n</sup></sup>
* if x then y also known as x implies y ( x -> y ) returns 1 when x is 0 or when both are x and y are 1 (Not(x) + y ).
* And , Or and Not can be constructed from Nand or Nor gates.
* Every Boolean functions can be contructed from Nand operations alone.
* A gate is a physical device that implements a Boolean function.
* logic design is the art of interconnecting gates in order to implement more complex functionality.
* Hardware Description Language (HDL)
* Multi-Bit Multiplexor : An n-bit multiplexor is exactly the same as the binary multiplexor, except that the two inputs are each n-bit wide; the selector is a single bit.
* Multi-Way/Multi-Bit Multiplexor : An m-way n bit multiplexor selects one of m n-bit input buses and outputs it to a single n-bit output bus. The selection is specified by a set of k control bits, where k = log<sub>2</sub>m.
* Multi-Way/Multi-Bit Demultiplexor : An m-way n bit demultiplexor channels a single n-bit input into one of m possible n-bit outputs. The selection is specified by a set of k control bits, where k=log<sub>2</sub>m.
#### Project 1: Implement commonly used 15 logic gates using Nand gate as primitive gate.
<p align="center"><img src="/images/1.png"></p>

#### solutions: [project1](https://github.com/shinelikeasmile/nand2game/tree/master/project1)
<a name="2"></a>
## 2. Boolean Arithmetic 
* The ALU is the centerpiece chip that executes all the arithmetic and logical operations performed by the computer.
* For representing signed bit numbers in binary code we use Two's complement method(radix complement).
* Two's complement of a number x is defined as 2<sup>n</sup>-x.
* One's complement of x is -(x+1) in two's complement representation.
* To get -x from x, leave all the trailing(LSB) 0's and the first least significant 1 intact, then flip all the remaining bits.
#### Project 2: Implemention of ALU.
<p align="center"><img src="/images/2.png"></p>

####   [ALU Design logic](images/3.png)

#### solutions: [project2](https://github.com/shinelikeasmile/nand2game/tree/master/project2)
<a name="3"></a>
## 3. Sequential Logic
* Combinational chips can perform processing but they cannot maintain state.
* memory elements are built from sequential chips.
* flip flop is the most elementary sequential unit. we use DFF out(t)=in(t-1).
* DFF simply outputs the input value from the previous time unit.
* [Flip Flops Theory](/images/dld.png)

* Register : A register is a storage device that can store or remember a value over time i.e out(t)=out(t-1).
* [Register design logic](/images/DFF2.png)
* [RAM Design logic](images/RAM.png)

#### Project 3: Implementation of Memory.
<p align="center"><img src="/images/P3.png"></p> 

#### solutions: [project3](https://github.com/shinelikeasmile/nand2game/tree/master/project3)
<a name="4"></a>
## 4. Machine Language 
* The machine language of a computer helps us to understand why its hardware was designed in a certain way.
* A machine language can be viewed as a an agreed-upon formalism, designed to manipulate a memory using a proccessor and set of registers.
* A mnemonic is a symbolic label whose name hints at what it stands for.
* The hack computer is a von neumann platform. it is 16-bit machine, consisting of a CPU, two seperate memory modules serving as instruction memory and data memory and two memory mapped i/o devices : a screen and a keyboard.  
* instruction memory and data memory both are 16 bit wide and have a 15-bit address space, meaning  that the maximum addressable size of the memory is 32K 16-bit words.
* The CPU can only execute programs that reside in the instruction memory. The instruction memory is a read-only memory.
* The Hack machine language has two types of instructions : A-instruction type and C-instruction type.
* A-instruction :  @value , value is either a non-negative decimal number or a symbol referring to such number.
* A-instruction is used to set the A register to a 15 bit value.
* C-instruction : dest=comp;jump , what to compute? where to store the computed value? and what to do next? 
* if the left-most bit of the instruction is 1 then it is C-type instruction.
* A refers to Address register , D refers to data register and M refers to the memory location addressed by A.
* The assembler, is the program responsible for translating symbolic assembly programs into executable programs written in binary code.In addition, the assembler is responsible for managing all the system and user-defined symbols found in the assembly program, and for replacing them with physical memory addresses, as needed.

#### Project 4: write programs in HACK assembly language
#### solutions:[project4](https://github.com/shinelikeasmile/nand2game/tree/master/project4)


