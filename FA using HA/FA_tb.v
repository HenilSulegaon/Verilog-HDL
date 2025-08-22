`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 10:03:11 AM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
reg A,B,Cin;
wire S,Co;
FA DUT(A,B,Cin,S,Co);

initial
begin
  $dumpfile("FA.vcd");
  $dumpvars(0,FA_tb);
  $monitor($time,"A=%b,B=%b,Cin=%b,S=%b,Co=%b",A,B,Cin,S,Co);
  
  #5 A=0;B=0;Cin=0;
  #5 A=0;B=0;Cin=1;
  #5 A=0;B=1;Cin=0;
  #5 A=0;B=1;Cin=1;
  #5 A=1;B=0;Cin=0;
  #5 A=1;B=0;Cin=1;
  #5 A=1;B=1;Cin=0;
  #5 A=1;B=1;Cin=1;
  #5 $finish;
end
endmodule
