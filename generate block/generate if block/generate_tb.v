module tb;
  reg a,b;
  reg sel;
  wire out;
  
  my_generate #(.USE_CASE(1)) uut(a,b,sel,out);
  
//   defparam my_generate.USE_CASE=1;
  
  initial begin
    a=0; b=0; sel=0;
    repeat(5)
    begin
        #10 a=$random;
            b=$random;
            sel=$random;
      $display("Time=%0t,a=%b,b=%b,sel=%b,out=%b",$time,a,b,sel,out);
    end       
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
    #70 $finish;
  end
endmodule