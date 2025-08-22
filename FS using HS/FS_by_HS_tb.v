`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:32:15 AM
// Design Name: 
// Module Name: FS_by_HS_tb
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


module FS_by_HS_tb();
  reg A,B,Bin;
  wire D,Bo;
  FS_by_HS DUT(A,B,Bin,D,Bo);
  
  initial
  begin
    $dumpfile("FS_by_HS.vcd");
    $dumpvars(0,FS_by_HS_tb);
    $monitor($time,"A=%b,B=%b,Bin=%b,D=%b,Bo=%b",A,B,Bin,D,Bo);
    
    #5 A=0; B=0; Bin=0;
    #5 A=0; B=0; Bin=1;
    #5 A=0; B=1; Bin=0;
    #5 A=0; B=1; Bin=1;
    #5 A=1; B=0; Bin=0;
    #5 A=1; B=0; Bin=1;
    #5 A=1; B=1; Bin=0;
    #5 A=1; B=1; Bin=1;
    #5 $finish;
    
  end
endmodule
