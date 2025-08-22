`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 04:23:04 PM
// Design Name: 
// Module Name: mux16x1_tb
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


module mux16x1_tb();
  reg [15:0]in;
  reg [3:0]sel;
  wire out;
  
  mux16x1 DUT(in,sel,out);
  initial
   begin
     $dumpfile("mux16x1.vcd");
     $dumpvars(0,mux16x1_tb);
     $monitor($time,"in=%h,sel=%h,out=%b",in,sel,out);
     
//     in = 16'h0110_1010_0011_0101;
       in = 16'haf82;
     
     for(sel=0;sel<16;sel=sel+1)
      begin
        #5;
        $display("Time = %0t | sel = %b | out = %b", $time, sel, out);
      end 
      #5 $finish;
      
   end
endmodule
