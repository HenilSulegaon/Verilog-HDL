`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 02:10:08 PM
// Design Name: 
// Module Name: bcd_adder_tb
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



module bcd_adder_tb();
  reg [3:0] A, B;
  reg cin;
  wire [3:0] S;
  wire Co;

  bcd_adder DUT(A, B, cin, Co, S);

  initial begin
    $dumpfile("bcd_adder.vcd");
    $dumpvars(0, bcd_adder_tb);
    $monitor($time, " A=%4b B=%4b Cin=%b => S=%4b Co=%b", A, B, cin, S, Co);
    
    A = 4'b0000; B = 4'b0000; cin = 1'b0;
    #10 A = 4'b1000; B = 4'b1010; cin = 1'b0;
    #10 A = 4'b1010; B = 4'b0111; cin = 1'b0;
    #10 A = 4'b1111; B = 4'b1011; cin = 1'b0;
    #10 $finish;
  end
endmodule
