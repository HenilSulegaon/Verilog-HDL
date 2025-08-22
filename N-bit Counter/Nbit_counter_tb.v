`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 02:35:54 PM
// Design Name: 
// Module Name: Nbit_counter_tb
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


module Nbit_counter_tb();
 parameter N=4;
 reg rst,clk;
 wire [N-1:0]count;
 Nbit_counter DUT(rst,clk,count);
 
 initial clk=1'b0;
 always #5 clk=~clk;
 
 initial
 begin
   $dumpfile("Nbit_counter.vcd");
   $dumpvars(0,Nbit_counter_tb);
   $monitor($time,"rst=%b,clk=%b,count=%b",rst,clk,count);
   
   rst=1'b1;
   #15 rst=1'b0;
   #200 rst=1'b1;
   #10 $finish;
 end
endmodule
