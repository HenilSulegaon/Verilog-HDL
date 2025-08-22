module clk_example;
  reg clk, d, q;

  always #5 clk = ~clk;

  always @(posedge clk)
    q = d;           // blocking

  always @(posedge clk)
    #0 $display("clk=%b, d=%b, q=%b", clk, d, q);  // monitor after q updates

  initial begin
    clk = 0;
    d = 1;
    #10 d = 0;
    #20 $finish;
  end
endmodule