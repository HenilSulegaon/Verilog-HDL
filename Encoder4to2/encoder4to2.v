`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 10:15:58 AM
// Design Name: 
// Module Name: encoder4to2
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


module encoder4to2(in,out);
  input [3:0]in;
  output reg [1:0]out;
  
  always @(*)
  begin
  out=2'b00;
    case(in)
      4'b0001 : out=2'b00;
      4'b0010 : out=2'b01;
      4'b0100 : out=2'b10;
      4'b1000 : out=2'b11;
      default : out=2'bxx;
    endcase
  end
endmodule
