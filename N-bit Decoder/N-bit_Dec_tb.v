module tb;
  parameter N=4;
  reg [N-1:0] in;
  wire [2**N-1:0] out;
  
  Generic_dec dut(in,out);
  
  initial
    begin
      in={N{1'b0}};
      for(int i=0;i<2**N;i++)
        #10 in=i;
    end
  
  initial
    begin
      $dumpfile("Generic_dec.vcd");
      $dumpvars;
      $monitor("Time=%0t,in=%b,out=%b",$time,in,out);
      #1000 $finish;
    end
endmodule