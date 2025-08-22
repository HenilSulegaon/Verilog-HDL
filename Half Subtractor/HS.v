`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:06:25 AM
// Design Name: 
// Module Name: HS
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
 output wire D,Bo;
 
 assign D=A^B;
 assign Bo=~A&B;
endmodule
