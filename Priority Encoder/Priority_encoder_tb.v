`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 10:39:19 AM
// Design Name: 
// Module Name: Priority_encoder_tb
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


module Priority_encoder_tb();
  reg [3:0]in;
  wire [1:0]out;
  Priority_encoder DUT(in,out);
  
  initial
  begin
    $dumpfile("Priority_encoder.vcd");
    $dumpvars(0,Priority_encoder_tb);
    $monitor($time,"in=%b,out=%b",in,out);
    
    #5 in=4'b0000;
    #5 in=4'b0001;
    #5 in=4'b0011;
    #5 in=4'b1001;
    #5 in=4'b1011;
    #5 $finish;
  end
endmodule
