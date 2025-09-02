`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// 
// Create Date: 09/02/2025 02:04:16 PM
// Module Name: Behavioral_Modeling
// Project Name: ECE 128 Lab 1
// Description: This file contains the module for the behavioral modeling of an 8 to 1 mux.
// 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Behavioral_Modeling(o, i, s);
   input [7:0] i;
   input [2:0] s;
   output reg o;
 
always @(s or i)
begin
   case (s)
      3'b000 : o = i[0];
      3'b001 : o = i[1];
      3'b010 : o = i[2];
      3'b011 : o = i[3];
      3'b100 : o = i[4];
      3'b101 : o = i[5];
      3'b110 : o = i[6];
      3'b111 : o = i[7];
      default : o = 1'bx;
   endcase
end
endmodule

