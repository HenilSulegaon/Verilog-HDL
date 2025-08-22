module tb;
  parameter N=4;
  reg [N-1:0] a,b;
  wire [N-1:0] s,c;
  
  adder uut(a,b,s,c);
  
  initial begin
    a=0; b=0;
    #5 a=4'd3; b=4'd2;
    #5 a=4'd2; b=4'd9;
  end
  
  initial begin
    $dumpfile("h.vcd");
    $dumpvars;
    $monitor("Time=%0t,a=%0d,b=%0d,s=%0d,c=%0d",$time,a,b,s,c);
    #20 $finish;
  end
endmodule