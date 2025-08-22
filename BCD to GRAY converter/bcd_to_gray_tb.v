module tb;
  reg [3:0] b;
  wire [3:0] g;
  
  bcd_to_gray uut(b,g);
  
  initial begin
    b=4'b0;
    for(int i=0; i<=9;i++)
      begin
        #5 b=i;
//         #5;
      end
  end
  
  initial begin
    $dumpfile("h.vcd");
    $dumpvars;
    $monitor("T=%0t,bcd=%b,gray=%b",$time,b,g);
    #100 $finish;
  end
endmodule