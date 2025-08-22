`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 02:32:01 PM
// Design Name: 
// Module Name: Nbit_counter
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


module Nbit_counter(rst,clk,count);
 parameter N=4;
 input rst,clk;
 output reg [N-1:0]count;
 
 always@(posedge clk)
  begin
   if(rst)
    count<=0;
   else
    count<=count+1;
  end
endmodule
