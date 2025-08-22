`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 09:19:00 AM
// Design Name: 
// Module Name: demux1to4
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


module demux1to4(in,sel,out);
  input in;
  input [1:0]sel;
  output reg [3:0]out;
  
  always @(*)
  begin
   out = 4'b0000;
   case(sel)
     2'b00:out[0]=in;
     2'b01:out[1]=in;
     2'b10:out[2]=in;
     2'b11:out[3]=in;
   endcase
  end
endmodule
