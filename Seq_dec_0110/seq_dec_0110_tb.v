module seq_det_tb;
  reg in,clk,rst;
  wire out;
  
  seq_det_0110  uut(in,clk,rst,out);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0; rst=1;
//     #10 rst=0;
    #10 rst=0; in=0; #10 in=1; #10 in=1; #10 in=0;
    #10 in=1; #10 in=1; #10 in=0; #10 in=0;
    #10 in=0; #10 in=1; #10 in=1; #10 in=0;
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
//     $monitor("Time=%0t,clk=%b,rst=%b,in=%b,out=%b",$time,clk,rst,in,out);
    #200 $finish;
  end
  
  always@(*)
    begin
      @(posedge clk);
       $display("Time=%0t,clk=%b,rst=%b,in=%b,out=%b",$time,clk,rst,in,out);
    end
endmodule