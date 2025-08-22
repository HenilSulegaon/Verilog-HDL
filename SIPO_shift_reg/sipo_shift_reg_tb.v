`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 09:31:55 AM
// Design Name: 
// Module Name: sipo_shift_reg_tb
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


module sipo_shift_reg_tb();
  reg clk,rst;
  reg data_in;
  wire [3:0] data_out;
  
  sipo_shift_reg DUT(clk,rst,data_in,data_out);
  
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("sipo_shift_reg.vcd");
    $dumpvars(0,sipo_shift_reg_tb);
    $monitor($time,"clk=%b,data_in=%b,data_out=%04b",clk,data_in,data_out);
    
    rst=1'b1; clk=1'b0; data_in=1'b0;
    
    #10 rst=1'b0;
    #10 data_in=1;
    #10 data_in=0;     // data_in = 1010 //
    #10 data_in=1;
    #10 data_in=0;
    
     $finish;
  end
endmodule
