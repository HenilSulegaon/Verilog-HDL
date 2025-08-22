`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:39:22 AM
// Design Name: 
// Module Name: Seven_segment_display
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



module seven_seg_decoder(input [3:0] A, output reg [6:0] seg);
  always @(*) begin
    case(A)
      4'b0000: {a,b,c,d,e,f,g} = 7'b1111110; // 0
      4'b0001: {a,b,c,d,e,f,g} = 7'b0110000; // 1
      4'b0010: {a,b,c,d,e,f,g} = 7'b1101101; // 2
      4'b0011: {a,b,c,d,e,f,g} = 7'b1111001; // 3
      4'b0100: {a,b,c,d,e,f,g} = 7'b0110011; // 4
      4'b0101: {a,b,c,d,e,f,g} = 7'b1011011; // 5
      4'b0110: {a,b,c,d,e,f,g} = 7'b1011111; // 6
      4'b0111: {a,b,c,d,e,f,g} = 7'b1110000; // 7
      4'b1000: {a,b,c,d,e,f,g} = 7'b1111111; // 8
      4'b1001: {a,b,c,d,e,f,g} = 7'b1111011; // 9
      default: {a,b,c,d,e,f,g} = 7'b0000000; // blank
    endcase
  end
endmodule


