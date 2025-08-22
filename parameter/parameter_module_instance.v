// Code your design here

module tb1;
 wire [9:0] out_a, out_d;
 wire [4:0] out_b, out_c;
 reg  [9:0] in_a, in_d;
 reg  [4:0] in_b, in_c;
 reg clk;
  
  vdff #(10,15) mod_a (.out(out_a), .in(in_a), .clk(clk));
  vdff          mod_b (.out(out_b), .in(in_b), .clk(clk));

  vdff #(.delay(12))           mod_c (.out(out_c),.in(in_c),.clk(clk));
  vdff #(.delay( ),.size(10) ) mod_d (.out(out_d),.in(in_d),.clk(clk));
  
 endmodule

 module vdff (out, in, clk);
    parameter size=5, delay=1;
    output [size-1:0] out;
    input  [size-1:0] in;
    input  clk;
    reg [size-1:0] out;
   
 always @(posedge clk)
    #delay  out = in;
   
   initial begin
     $display("Instance %m: size = %0d, delay = %0d", size, delay);
  end
 endmodule