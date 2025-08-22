`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 11:02:00 AM
// Design Name: 
// Module Name: tb
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


module tb();
  reg [7:0]o;
  wire [2:0]b;
  o_to_b DUT(o,b);
  
  initial
  begin
   $dumpfile("o_to_b.vcd");
   $dumpvars(0,tb);
   $monitor($time,"o=%b,b=%b",o,b);
   
    #5 o = 8'b0000_0001; // 000
    #5 o = 8'b0000_0010; // 001
    #5 o = 8'b0000_0100; // 010
    #5 o = 8'b0000_1000; // 011
    #5 o = 8'b0001_0000; // 100
    #5 o = 8'b0010_0000; // 101
    #5 o = 8'b0100_0000; // 110
    #5 o = 8'b1000_0000; // 111
   #5 $finish;
  end
endmodule
