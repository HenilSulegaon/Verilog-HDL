`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 08:41:23 AM
// Design Name: 
// Module Name: siso_shift_reg_tb
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


module siso_shift_reg_tb();
  reg rst,clk;
  reg data_in;
  wire data_out;
  
  siso_shift_reg UUT(clk,rst,data_in,data_out);
  
  always #5 clk=~clk;
  
  initial
   begin
     $dumpfile("siso_shift_reg.vcd");
     $dumpvars(0,siso_shift_reg_tb);
     $monitor($time,"clk=%b,rst=%b,data_in=%b,data_out=%b",clk,rst,data_in,data_out);
     
     rst=1'b1; clk=1'b0; data_in=1'b0;
     
     #10 rst=1'b0;
     
     // Serial data_in = 1011 //
     #10 data_in=1;
     #10 data_in=0;
     #10 data_in=1;
     #10 data_in=0;
     
     #50 $finish;
   end
endmodule
