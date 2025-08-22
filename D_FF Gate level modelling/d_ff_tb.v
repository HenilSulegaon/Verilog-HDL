module tb;
  reg d,en;
  reg prst,rst;
  wire q,qb;
  
  d_latch uut(d,en,prst,rst,q,qb);
  
  always #5 en=~en;
  
  initial begin
    en=0; rst=1; prst=0; d=0;
    #10 rst=0;d=1;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    #6 d=1;
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
    $monitor("Time=%0t,en=%b,prst=%b,rst=%b,d=%b,q=%b,qb=%b",$time,en,prst,rst,d,q,qb);
    #100 $finish;
  end
endmodule





