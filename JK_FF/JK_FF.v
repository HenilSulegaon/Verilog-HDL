`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 10:56:17 PM
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(J,K,clk,Q,Qb);
  input J,K,clk;
  output reg Q,Qb;
  
  always @(posedge clk)
  begin
    case({J,K})
      2'b00 : begin Q<=Q; Qb<=Qb; end
      2'b01 : begin Q<=0; Qb<=1; end
      2'b10 : begin Q<=1; Qb<=0; end
      2'b11 : begin Q<=~Q;Qb<=Q; end
    endcase
  end
endmodule
