`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 06:00:43 PM
// Design Name: 
// Module Name: JK_to_D_tb
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


module JK_to_D_tb();
  reg D,clk;
  wire Q,Qb;
  JK_to_D uut(D,clk,Q,Qb);
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("JK_to_D.vcd");
    $dumpvars(0,JK_to_D_tb);
    $monitor($time,"D=%b,clk=%b,Q=%b,Qb=%b",D,clk,Q,Qb);
    
    D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 D=1;
    #10 D=0;
    #10 $finish;
  end
endmodule
