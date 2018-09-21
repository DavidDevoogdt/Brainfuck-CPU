verilog description of bf cpu V1.0
====

As a side project I've implemented a  [Brainfuck](https://en.wikipedia.org/wiki/Brainfuck)  CPU in verilog (see BCFU.v). Although completely useless due to the fact that there are only 8 instructions, it was a fun and educative project to work on. Only open-source tools were used (to the best of my knowledge).

Workings of the cpu
---
Because it has a cache for the dataoperations read and write instructions to the ram must be inserted. The cpu uses a finite state machine with 16 internal states to decide the next instruction at rumtine.
read documentation for more info.


Build
---

just run `make` or `make c`
to use make c da a make in the c
bf master folder

Examples
---
some programs can be found in the program/examples. just copy paste to program.be
Some c programs can be build (see  [here](https://github.com/arthaud/c2bf))

hardware build
---
I've created the hardware using  [qflow](http://opencircuitdesign.com/qflow/).
Follow the link for instructions.



dependencies
---

iverilog 
bison
flex

qflow and dependecies

