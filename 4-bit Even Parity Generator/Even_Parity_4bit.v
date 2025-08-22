`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:22:47 AM
// Design Name: 
// Module Name: Even_Parity_4bit
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


module Even_Parity_4bit(b,p);
  input [3:0]b;
  output p;
  
  assign p=b[0]^b[1]^b[2]^b[3];
endmodule
