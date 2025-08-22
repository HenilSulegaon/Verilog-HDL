`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:27:12 AM
// Design Name: 
// Module Name: FS_by_HS
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


module HS(A,B,D,Bo);
  input A,B;
  output D,Bo;
  xor A1(D,A,B);
  and A2(Bo,~A,B);
endmodule

module FS_by_HS(A,B,Bin,D,Bo);
  input A,B,Bin;
  output D,Bo;
  wire w1,w2,w3;
  
  HS H1(A,B,w1,w3);
  HS H2(w1,Bin,D,w2);
  or O1(Bo,w2,w3);
endmodule
