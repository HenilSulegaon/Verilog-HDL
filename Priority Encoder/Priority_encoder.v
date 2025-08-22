`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 10:35:18 AM
// Design Name: 
// Module Name: Priority_encoder
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


module Priority_encoder(in, out);
  input [3:0] in;
  output reg [1:0] out;
  
  always @(*) begin
    out = 2'b00;  // Default value
    casex (in)
      4'b1xxx: out = 2'b11;  // Highest priority (MSB)
      4'b01xx: out = 2'b10;  
      4'b001x: out = 2'b01;  
      4'b0001: out = 2'b00;  // Lowest priority (LSB)
      default: out = 2'bxx;  // Undefined case (optional)
    endcase
  end
endmodule

