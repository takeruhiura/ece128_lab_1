# ECE 128 Lab 1 README File


## Project Description
The focus of this lab is to simulate an 8-to-1 multiplexer on an FPGA board using Verilog. The multiplexer was implemented using three modeling approaches: structural, behavioral, and dataflow. One of these implementations was used to generate simulation waveforms and to be programmed onto the FPGA


## How to simulate the program and implement onto the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Because the structural model was the one used for implementation, make sure the structural_model.v file is on top in the design sources. Next, run the synthesis and then click run simulation, and then the behavioral simulation. 

To program the FPGA with the multiplexer code, run the implementation and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
