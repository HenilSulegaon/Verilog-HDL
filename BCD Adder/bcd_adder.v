`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 01:51:37 PM
// Design Name: 
// Module Name: bcd_adder
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

module HA(A,B,S,C);
  input A,B;
  output S,C;
  assign S= A ^ B;
  assign C= A&B;
endmodule

module FA(A,B,Cin,S,Co);
  input A,B,Cin;
  output S,Co;
  wire W1,W2,W3;
  
  HA HA1(A,B,W1,W2);
  HA HA2(W1,Cin,S,W3);
  or OR1(Co,W2,W3);
endmodule

module binary_adder_4bit (A,B,Cin,Cout,S);
  input [3:0] A,B;
  input Cin;
  output Cout;
  output [3:0]S;
  wire c0,c1,c2;
  
  FA F1(A[0],B[0],Cin,S[0],c0);
  FA F2(A[1],B[1],c0,S[1],c1);
  FA F3(A[2],B[2],c1,S[2],c2);
  FA F4(A[3],B[3],c2,S[3],Cout);
endmodule
// *******************************************************//
module bcd_adder(A,B,Cin,Co,S);
  input [3:0] A,B;
  input Cin;
  output Co;
  output [3:0] S;
  wire w1,w2;
  wire y;
  wire [3:0] Si;
  wire Cout;
  
  binary_adder_4bit B1(A,B,Cin,Cout,Si);
  and A1(w1,Si[3],Si[2]);
  and A2(w2,Si[3],Si[1]);
  or O1(y,w1,w2,Cout);
  
  binary_adder_4bit B2(Si,{1'b0,y,y,1'b0},Cin,Co,S);
  
endmodule
