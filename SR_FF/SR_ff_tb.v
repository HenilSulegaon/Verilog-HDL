`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2025 04:58:13 PM
// Design Name: 
// Module Name: SR_ff_tb
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


//module SR_ff_tb();
//  reg S,R,clk;
//  wire Q,Qb;
//  SR_FF_Nand DUT(S,R,clk,Q,Qb);
  
//  always #5 clk=~clk;
  
//  initial
//  begin
//    $dumpfile("SR_FF_Nand.vcd");
//    $dumpvars(0,SR_ff_tb);
//    $monitor($time,"S=%b,R=%b,clk=%b,Q=%b,Qb=%b",S,R,clk,Q,Qb);
    
//    clk=0;
//    #10 S=1; R=0;
//    #10 S=0; R=0;
//    #10 S=0; R=1;
//    #10 S=1; R=1;
//    #10 $finish;
//  end
  
//endmodule


module tb;
  reg s,r,clk;
  wire q,qb;
  
  sr_ff dut(s,r,clk,q,qb);
  
  always #5 clk=~clk;
//   initial repeat(100) #5 clk=~clk;
//   initial while(1)
//     #5 clk=~clk;
//     initial for(;;)
//     #5 clk=~clk;
  
  
  initial begin
    clk=0; 
        s=0; r=0;
    #10 s=0; r=1;
    #10 s=1; r=0;
    #10 s=0; r=0;
    #10 s=1'b0; r=1;
    #10 s=1; r=1;
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
    $monitor("Time=%3t,clk=%b,s=%b,r=%b,q=%b,qb=%b",$time,clk,s,r,q,qb);
    #70 $finish;
  end
endmodule
