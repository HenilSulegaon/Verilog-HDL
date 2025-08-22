`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 03:16:50 PM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(rst,clk,mode,count);
  parameter N=3;
  input rst,clk,mode;    // mode=1 --> up count // // mode=0 --> down count //
  output reg [N-1:0]count;
  
  always@(posedge clk or posedge rst)
   begin
    if(rst)
     count<=0;
    else if (mode)
     count<=count+1;
    else
     count<=count-1;
   end
endmodule
