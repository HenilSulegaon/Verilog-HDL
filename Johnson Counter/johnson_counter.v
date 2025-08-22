`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 04:23:22 PM
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(rst,clk,count);
  parameter N=4;
  input rst,clk;
  output reg [N-1:0]count;
  
  always@(posedge clk)
  begin
   if (rst)
    count<=0;
   else
    count<={~count[0],count[N-1:1]};
  end
endmodule
