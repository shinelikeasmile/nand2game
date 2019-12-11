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
* 
