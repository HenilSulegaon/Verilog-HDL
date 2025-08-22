`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:50:18 AM
// Design Name: 
// Module Name: segment7_tb
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


module segment7_tb();
  reg [3:0]A;
  wire a,b,c,d,e,f,g;
  Seven_Segment_display DUT(A,a,b,c,d,e,f,g);
  
  initial
  begin
   $dumpfile("Seven_Segment_display.vcd");
   $dumpvars(0,segment7_tb);
   $monitor($time,"A=%h,a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b",A,a,b,c,d,e,f,g);
   
   for(integer i=0;i<=9;i=i+1)
     #5 A=i;
   #5 $finish;
  end
endmodule
