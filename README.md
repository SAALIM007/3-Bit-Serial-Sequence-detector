#Introduction

This repository contains verilog code for a serial 3 bit sequence detector. This repository is made to test if I can use git with verilog code written in xilinx ISE webpack.
***

#About Verilog Module

###Input Ouput Specifications
***
####Inputs

* __si__    -   Serial Input
* __clk__   -   Clock

####Output
* __detected__ - Shows if the sequence is detected or not

####Registers
* __CurrentSequence__ - Holds the current sequence of 3 bits to be compared with the sequence to be detected.

***
###Description

The circuit takes in one bit at each positive edge of the clock. The bit is added to the lsb of the internal register CurrentSequence. The CurrentSequence is then compared with the sequence to be detected, if found same _detected_ is made high.The sequence to be dected is parameterized in the code as _Sequence_.

#About Test Bench

####Parameters
* __NoOfTestingBits__ - Gives number of bits used for testing
* __seed__ - Seed used for $random system task.

The test bench generates a bitstream of fixed length given by _NoOfTestingBits_ parameter. Each bit is randomly generated using the _$random(seed)_ system call where _seed_ is parameter. 