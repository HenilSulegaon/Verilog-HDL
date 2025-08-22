`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 10:56:43 AM
// Design Name: 
// Module Name: o_to_b
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


module o_to_b(o,b);
  input [7:0]o;
  output [2:0]b;
  
  assign b[2]=(o[4]|o[5]|o[6]|o[7]);
  assign b[1]=(o[2]|o[3]|o[6]|o[7]);
  assign b[0]=(o[1]|o[3]|o[5]|o[7]);
endmodule
