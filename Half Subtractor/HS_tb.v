`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:08:15 AM
// Design Name: 
// Module Name: HS_tb
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


module HS_tb();
 reg A,B;
 wire D,Bo;
 HS DUT(A,B,D,Bo);
 
 initial
 begin
   $dumpfile("HS.vcd");
   $dumpvars(0,HS_tb);
   $monitor($time,"A=%b,B=%b,D=%b,Bo=%b",A,B,D,Bo);
   
   #5 A=0;B=0;
   #5 A=0;B=1;
   #5 A=1;B=0;
   #5 A=1;B=1;
   #5 $finish;
 end
endmodule
