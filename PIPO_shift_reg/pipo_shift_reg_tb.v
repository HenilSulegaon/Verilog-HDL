`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 10:19:11 AM
// Design Name: 
// Module Name: pipo_shift_reg_tb
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


module pipo_shift_reg_tb();
  reg clk,rst;
  reg [3:0] data_in;
  wire [3:0] data_out;
  
  pipo_shift_reg DUT(clk,rst,data_in,data_out);
  
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("pipo_shift_reg.vcd");
    $dumpvars(0,pipo_shift_reg_tb);
    $monitor($time,"clk=%b,data_in=%04b,data_out=%04b",clk,data_in,data_out);
    
    rst=1'b1; clk=1'b0; data_in=4'b0000;
    #10 rst=1'b0;
    
    #10 data_in = 4'b1010;
//    #5;
    #10 data_in = 4'b1011;
//    #5;
    #10 data_in = 4'b1001;
//    #5;
    #10 $finish;
  end
endmodule
