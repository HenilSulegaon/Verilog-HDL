`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 03:50:02 PM
// Design Name: 
// Module Name: ring_counter
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



module ring_counter(init,clk,count);
  parameter N=4;
  input init,clk;
  output reg [N-1:0]count;
  
  always@(posedge clk)
  begin
    if(init)
     count<=4'b1000;
    else
     count<={count[0],count[N-1:1]};
  end
endmodule