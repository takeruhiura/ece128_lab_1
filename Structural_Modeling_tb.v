`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// 
// Create Date: 08/19/2024 01:19:05 PM
// Module Name: Structural_Modeling_tb
// Project Name: ECE 128 Lab 1
// Description: This is the testbench file to run and synthesize the different models of an 8 to 1 mux and to analyze their wave forms to see if they behave accordingly. 
// 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps
module Structural_Modeling_tb
wire y; //output 
reg [7:0] i; 
reg [2:0] s;

 
// Instantiate original module (named DUT {device under test}) 
Structural_Modeling uut (.o(y), .i(i), .s(s));

initial begin 
    #10 i[0]=1'b1;i[1]=1'b0;i[2]=1'b0;i[3]=1'b0;i[4]=1'b0;i[5]=1'b0;i[6]=1'b0;i[7]=1'b0;s[0]=1'b0;s[1]=1'b0;s[2]=1'b0;
    #10 i[0]=1'b0;i[1]=1'b1;i[2]=1'b0;i[3]=1'b0;i[4]=1'b0;i[5]=1'b0;i[6]=1'b0;i[7]=1'b0;s[0]=1'b1;s[1]=1'b0;s[2]=1'b0;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b1;i[3]=1'b0;i[4]=1'b0;i[5]=1'b0;i[6]=1'b0;i[7]=1'b0;s[0]=1'b0;s[1]=1'b1;s[2]=1'b0;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b0;i[3]=1'b1;i[4]=1'b0;i[5]=1'b0;i[6]=1'b0;i[7]=1'b0;s[0]=1'b1;s[1]=1'b1;s[2]=1'b0;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b0;i[3]=1'b0;i[4]=1'b1;i[5]=1'b0;i[6]=1'b0;i[7]=1'b0;s[0]=1'b0;s[1]=1'b0;s[2]=1'b1;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b0;i[3]=1'b0;i[4]=1'b0;i[5]=1'b1;i[6]=1'b0;i[7]=1'b0;s[0]=1'b1;s[1]=1'b0;s[2]=1'b1;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b0;i[3]=1'b0;i[4]=1'b0;i[5]=1'b0;i[6]=1'b1;i[7]=1'b0;s[0]=1'b0;s[1]=1'b1;s[2]=1'b1;
    #10 i[0]=1'b0;i[1]=1'b0;i[2]=1'b0;i[3]=1'b0;i[4]=1'b0;i[5]=1'b0;i[6]=1'b0;i[7]=1'b1;s[0]=1'b1;s[1]=1'b1;s[2]=1'b1;

	#10 $stop;

end 
endmodule
