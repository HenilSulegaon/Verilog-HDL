`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 03:56:12 PM
// Design Name: 
// Module Name: ring_tb
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


module ring_tb();
  reg init,clk;
  wire [3:0]count;
  ring_counter DUT(init,clk,count);
  
  initial clk=1'b0;
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0,ring_tb);
    $monitor($time,"init=%b,clk=%b,count=%b",init,clk,count);
    
    init=1;
    #10 init=0;
    #50 $finish;
  end
endmodule
