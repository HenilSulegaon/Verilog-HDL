`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 05:18:22 PM
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb();
  reg D,clk;
  wire Q,Qb;
  D_FF DUT(D,clk,Q,Qb);
  
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("D_FF.vcd");
    $dumpvars(0,D_FF_tb);
    $monitor($time,"D=%b,clk=%b,Q=%b,Qb=%b",D,clk,Q,Qb);
    
    clk=0;
    D=0;
    #10 D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 $finish;
  end
endmodule
