`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 05:48:48 PM
// Design Name: 
// Module Name: T_FF_tb
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


module T_FF_tb();
  reg T,clk;
  wire Q,Qb;
  T_FF DUT(T,clk,Q,Qb);
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("T_FF.vcd");
    $dumpvars(0,T_FF_tb);
    $monitor($time,"T=%b,clk=%b,Q=%b,Qb=%b",T,clk,Q,Qb);
    
    #10 T=0;
    #10 T=1;
    #10 T=0;
    #10 T=1;
    #10 T=1;
    #10 T=0;
    #10 $finish;
  end
endmodule

