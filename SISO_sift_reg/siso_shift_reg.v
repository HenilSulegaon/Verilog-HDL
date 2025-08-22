`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 08:37:16 AM
// Design Name: 
// Module Name: siso_shift_reg
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


module siso_shift_reg(clk,rst,data_in,data_out);
  input rst,clk;
  input data_in;
  output data_out;
  
  reg [3:0] shift_reg;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        shift_reg<=4'b0000;
      else
        shift_reg<= {data_in,shift_reg[3:1]};
    end
    
    assign data_out = shift_reg[0];
endmodule
