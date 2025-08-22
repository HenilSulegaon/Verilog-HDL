`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 11:27:52 AM
// Design Name: 
// Module Name: fibonacci_series_tb
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


module fibonacci_series_tb();
 reg clk,rst;
 reg start;
 wire [31:0] fib_out;
 
 fibonacci_series DUT(clk,rst,start,fib_out);
 
 initial clk=1'b0;
 always #5 clk=~clk;
 
 initial
  begin
    $dumpfile("fibonacci_series.vcd");
    $dumpvars(0,fibonacci_series_tb);
    $monitor($time,"clk=%b,rst=%b,start=%b,fib_out=%d",clk,rst,start,fib_out);
    
    rst=1;
    start=0;
    
    #10 rst=0; start=1;
    
    repeat(10) 
      begin
        #10;
      end
      
      start=0;
      #50 $finish;
  end
endmodule
