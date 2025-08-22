`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 03:22:36 PM
// Design Name: 
// Module Name: up_down_tb
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


module up_down_tb();
  reg rst,clk,mode;
  wire [2:0]count;
  up_down_counter  DUT(rst,clk,mode,count);
  
  initial clk=1'b0;
  always #5 clk=~clk;
  
  initial
  begin
   $dumpfile("up_down_counter.vcd");
   $dumpvars(0,up_down_tb);
   $monitor($time,"rst=%b,clk=%b,mode=%b,count=%b",rst,clk,mode,count);
   
    rst = 1;  // Active reset
    mode = 1; 
   #10 rst=0;
   #50 mode=0;
   #50 mode=1;
   #20 $finish;
  end
endmodule

//module up_down_tb;
//  reg rst, clk, mode;
//  wire [2:0] count;

//  // Correct instantiation of the DUT (Device Under Test)
//  up_down_counter #(3) DUT (.rst(rst), .clk(clk), .mode(mode), .count(count));

//  // Generate Clock Signal
//  initial clk = 1'b0;
//  always #5 clk = ~clk;  // Toggle clock every 5 time units

//  // Test Cases
//  initial begin
//    $dumpfile("up_down_counter.vcd");
//    $dumpvars(0, up_down_tb);
//    $monitor($time, " rst=%b, clk=%b, mode=%b, count=%b", rst, clk, mode, count);
   
//    rst = 1;  // Active reset
//    mode = 1;  // Start in up mode
//    #10 rst = 0;  // Release reset
//    #50 mode = 0;  // Change to down count
//    #50 mode = 1;  // Switch back to up count
//    #20 $finish;   // End simulation
//  end
//endmodule
