`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 02:09:16 PM
// Design Name: 
// Module Name: Dataflow_Modeling
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Dataflow_Modeling(o, i, s);
input [7:0] i;
input [2:0] s;
output o;
assign o = (~s[2] & ~s[1] & ~s[0] & i[0]) | (~s[2]& ~s[1] & s[0] & i[1]) | (~s[2] & s[1] & ~s[0] & i[2])
 | (~s[2]& s[1] & s[0] & i[3]) | (s[2] & ~s[1] & ~s[0] & i[4]) | (s[2]& ~s[1] & s[0] & i[5]) | (s[2] & s[1] & ~s[0] & i[6])
 | (s[2]& s[1] & s[0] & i[7]);
endmodule
