`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 09:22:58 AM
// Design Name: 
// Module Name: demux1to4_tb
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


module demux1to4_tb();
  reg in;
  reg [1:0]sel;
  wire [3:0]out;
  demux1to4 DUT(in,sel,out);
  
  initial
  begin
    $dumpfile("demux1to4.vcd");
    $dumpvars(0,demux1to4_tb);
    $monitor($time,"in=%b,sel=%b,out=%b",in,sel,out);
    
    #5 in=1; sel=2'b00;
    #5 in=1; sel=2'b01;
    #5 in=1; sel=2'b10;
    #5 in=1; sel=2'b11;
    #5 in=0; sel=2'b00;
    #5 in=0; sel=2'b01;
    #5 in=0; sel=2'b10;
    #5 in=0; sel=2'b11;
    #5 $finish;
  end
endmodule
