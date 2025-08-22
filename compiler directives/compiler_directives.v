
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2025 09:21:09 AM
// Design Name: 
// Module Name: compiler_directives
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

`timescale 10ns / 1ns
`include "mux.v"
`default_nettype none
`define first 1
`define second 2

module compiler_directives();
  reg clk;
  
  initial begin
    clk=0;
    #2.3 clk=1;
    $display("Time:%0t,clk=%b",$time,clk);
    $display("Time:%0t,clk=%b",$realtime,clk);
  end
  
  initial begin
    `ifdef first
       $display("Macro is defined.");
    `else
       $display("Macro is not defined");
    `endif
  end
  
  initial begin
    `ifdef third
       $display("Macro is defined.");
    `else
       $display("Macro is not defined");
    `endif
  end
endmodule
