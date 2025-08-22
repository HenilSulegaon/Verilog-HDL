`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 05:53:26 PM
// Design Name: 
// Module Name: JK_to_D
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


module JK_to_D(D,clk,Q,Qb);
  input D,clk;
  output reg Q,Qb;
  wire J,K;
  
  assign J = D;
  assign K= ~D;
  
  always @(posedge clk)
  begin
    case({J,K})
      2'b00 : begin Q<=Q; Qb<=Qb; end
      2'b01 : begin Q<=0; Qb<=1; end
      2'b10 : begin Q<=1; Qb<=0; end 
      2'b11 : begin Q<=~Q; Qb<=~Qb; end
    endcase
  end
endmodule
