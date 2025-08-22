module tb;
  reg clk,rst,M;
  wire [3:0] q,qb;
  
  mod_12_up_down_counter  dut(clk,rst,M,q,qb);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;  rst=1; M=0;
    #10 rst=0; M=0;
    #250 M=1;
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
    $monitor("T=%0t,clk=%b,rst=%b,q=%b,qb=%b",$time,clk,rst,q,qb);
    #500 $finish;
  end
endmodule