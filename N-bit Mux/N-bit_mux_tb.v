module tb;
  parameter N=4;
  reg [2**N-1:0] in;
  reg [N-1:0] s;
  wire out;
  
  Generic_code dut(in,s,out);
  
  initial
    begin
      s={N{1'b0}}; in={(2**N){1'b0}};
      #10 in=16'b1010_0110_0000_0111;
      for(int i=0;i<=2**N-1;i++)
        begin
          #10 s=i;
        end
    end
  
  initial
    begin
      $dumpfile("Generic_code.vcd");
      $dumpvars;
      $monitor("Time:%0t,in=%b,s=%b,out=%b",$time,in,s,out);
      #200 $finish;
    end
endmodule