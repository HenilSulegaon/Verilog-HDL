`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 03:48:11 PM
// Design Name: 
// Module Name: mux16x1
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


module mux2x1(in,sel,out);
  input [1:0]in;
  input sel;
  output out;
  
  assign out = sel ? in[1]:in[0];
endmodule

module mux4x1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output wire out;
  wire w1,w2;
  
  mux2x1 M1(in[1:0],sel[0],w1);
  mux2x1 M2(in[3:2],sel[0],w2);
  mux2x1 M3({w2,w1},sel[1],out);
endmodule


module mux16x1(in,sel,out);
  input [15:0]in;
  input [3:0]sel;
  output wire out;
  wire w1,w2,w3,w4;
  
  mux4x1 M5(in[3:0],sel[1:0],w1);
  mux4x1 M6(in[7:4],sel[1:0],w2);
  mux4x1 M7(in[11:8],sel[1:0],w3);
  mux4x1 M8(in[15:12],sel[1:0],w4);
  mux4x1 M9({w4,w3,w2,w1},sel[3:2],out);
endmodule




//module mux2x1(in, sel, out);
//  input [1:0] in;
//  input sel;
//  output out;
  
//  assign out = sel ? in[1] : in[0]; 
//endmodule

//module mux4x1(in, sel, out);
//  input [3:0] in;
//  input [1:0] sel;
//  output wire out;
//  wire w1, w2;

//  // 2:1 MUX for lower 2 bits
//  mux2x1 M1(in[1:0], sel[0], w1);
//  // 2:1 MUX for upper 2 bits
//  mux2x1 M2(in[3:2], sel[0], w2);
//  // Final 2:1 MUX to select from w1, w2
//  mux2x1 M3({w2, w1}, sel[1], out);
//endmodule

//module mux16x1(in, sel, out);
//  input [15:0] in;
//  input [3:0] sel;
//  output wire out;
//  wire w1, w2, w3, w4;

//  // Four 4:1 MUXes for 16-bit input
//  mux4x1 M5(in[3:0], sel[1:0], w1);
//  mux4x1 M6(in[7:4], sel[1:0], w2);
//  mux4x1 M7(in[11:8], sel[1:0], w3);
//  mux4x1 M8(in[15:12], sel[1:0], w4);
//  // Final 4:1 MUX to select from w1, w2, w3, w4
//  mux4x1 M9({w4, w3, w2, w1}, sel[3:2], out);
//endmodule
