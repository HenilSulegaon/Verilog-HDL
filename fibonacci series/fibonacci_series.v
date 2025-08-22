`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 11:22:42 AM
// Design Name: 
// Module Name: fibonacci_series
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


module fibonacci_series(clk,rst,start,fib_out);
  input clk,rst;
  input start;
  output reg [31:0] fib_out;
  
  reg [31:0] a,b;
  
  always @(posedge clk or posedge rst)
    begin
      if(rst)
        begin
          a<=0;
          b<=1;
          fib_out<=0;
        end
      else if(start)
        begin
          fib_out<=a;
          a<=b;
          b<=a+b;
        end
    end
endmodule
