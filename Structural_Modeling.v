`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Create Date: 08/19/2024 12:23:50 PM
// Design Name: 8-to-1 MUX
// Module Name: Structural_Modeling
// Project Name: ECE 128 Lab 1
// Description: This is Verilog code that runs to make an FPGA serve as an 8-to-1 Multiplexer using the structural model. 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Structural_Modeling(o, i, s);
input [7:0] i;
input [2:0] s;
output o;
 
wire NS0, NS1,NS2;
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
not N1(NS0, s[0]);
not N2(NS1, s[1]);
not N3(NS2, s[2]);
 and A1(Y0, i[0], NS2, NS1, NS0);
 and A2(Y1, i[1], NS2, NS1, s[0]);
 and A3(Y2, i[2], NS2, s[1], NS0);
 and A4(Y3, i[3], NS2, s[1], s[0]);
 and A5(Y4, i[4], s[2], NS1, NS0);
 and A6(Y5, i[5], s[2], NS1, s[0]);
 and A7(Y6, i[6], s[2], s[1], NS0);
 and A8(Y7, i[7], s[2], s[1], s[0]);
 or O1(o, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
endmodule

