`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 04:46:56 PM
// Design Name: 
// Module Name: SR_FF_Nand
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


//module SR_FF_Nand(S,R,clk,Q,Qb);
//  input S,R;
//  input clk;
//  output reg Q,Qb;
  
//  always @(posedge clk)
//  begin
//    if (S==1 && R==0)
//     begin
//         Q <=1;
//         Qb <=0;
//     end
//     else if (S==0 && R==1)
//     begin
//         Q <=0;
//         Qb <=1;
//     end
//     else if (S==0 && R==0)
//     begin
//         Q <=Q;
//         Qb <=Qb;
//     end
//     else
//     begin
//         Q <=1'bx;
//         Qb <=1'bx;
//     end
//  end
//endmodule 

module sr_ff(s,r,clk,q,qb);
  input s,r,clk;
  output reg q,qb;
  
  always@(posedge clk)
    begin
      case({s,r})
        2'b00 : begin q<=q; qb<=qb; end
        2'b01 : begin q<=0; qb<=1; end
        2'b10 : begin q<=1; qb<=0; end
        2'b11 : begin q<=1'bx; qb<=1'bx; end
        default : begin q<=1'bx; qb<=1'bx; end
      endcase
    end
endmodule

