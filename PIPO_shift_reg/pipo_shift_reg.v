`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 10:16:10 AM
// Design Name: 
// Module Name: pipo_shift_reg
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


module pipo_shift_reg(clk,rst,data_in,data_out);
  input clk,rst;
  input [3:0] data_in;
  output reg [3:0] data_out;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        data_out <= 4'b0000;
      else 
        data_out <= data_in;
    end
endmodule
