`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 09:49:12 AM
// Design Name: 
// Module Name: Nbit_comp
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


module Nbit_comp(A,B,gt,lt,eq);
  parameter N=16;
  input [N-1:0]A,B;
  output reg gt,lt,eq;
  
  always @(*)
  begin
   gt=0; lt=0; eq=0;
    if (A>B)  gt=1;
    else if(A<B) lt=1;
    else eq=1;
  end
endmodule
