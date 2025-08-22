`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 04:26:45 PM
// Design Name: 
// Module Name: johnson_tb
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


module johnson_tb();
 reg rst,clk;
 wire [3:0]count;
 johnson_counter DUT(rst,clk,count);
 
 initial clk=1'b0;
 always #5 clk=~clk;
 
 initial
 begin
  $dumpfile("johnson_counter.vcd");
  $dumpvars(0,johnson_tb);
  $monitor($time,"rst=%b,clk=%b,count=%b",rst,clk,count);
  
  rst=1;
  #10 rst=0;
  #90 $finish;
 end
endmodule
