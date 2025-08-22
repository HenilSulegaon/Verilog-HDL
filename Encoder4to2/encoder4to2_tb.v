`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 10:21:15 AM
// Design Name: 
// Module Name: encoder4to2_tb
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


module encoder4to2_tb();
  reg [3:0]in;
  wire [1:0]out;
  encoder4to2 DUT(in,out);
  
  initial
  begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(0,encoder4to2_tb);
    $monitor($time,"in=%b,out=%b",in,out);
    
    #5 in=4'b0000;
    #5 in=4'b0100;
    #5 in=4'b1000;
    #5 in=4'b0110;
    #5 in=4'b1001;
    #5 in=4'b0010;
    #5 $finish;
  end
endmodule
