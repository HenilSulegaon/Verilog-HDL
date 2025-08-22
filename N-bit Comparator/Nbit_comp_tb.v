`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 09:54:17 AM
// Design Name: 
// Module Name: Nbit_comp_tb
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


module Nbit_comp_tb();
 reg [15:0]A,B;
 wire gt,lt,eq;
// integer myseed;
 Nbit_comp DUT(A,B,gt,lt,eq);
 
// initial myseed=15;
 initial
 begin
   repeat(6)
   begin
     A=$random;
     B=$random;
     $display("T=%3d,A=%h,B=%h,gt=%b,lt=%b,eq=%b",$time,A,B,gt,lt,eq);
     #5;
   end
   #5 $finish;
 end
endmodule
