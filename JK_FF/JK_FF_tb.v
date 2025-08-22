`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 11:00:06 PM
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
  reg J,K,clk;
  wire Q,Qb;
  JK_FF DUT(J,K,clk,Q,Qb);
  
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("JK_FF.vcd");
    $dumpvars(0,JK_FF_tb);
    $monitor($time,"J=%b,K=%b,clk=%b,Q=%b,Qb=%b",J,K,clk,Q,Qb);
    
    clk=0;
    J=1; K=0;
    #10 J=0; K=0;
    #10 J=0; K=1;
    #10 J=1; K=0;
    #10 J=1; K=1;
    #10 J=1; K=1;
    #10 $finish;
  end
endmodule
