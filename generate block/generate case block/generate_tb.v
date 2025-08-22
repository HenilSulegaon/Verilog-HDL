module tb;
  reg a,b,cin;
  wire s,co;
  
  my_adder #(1) uut(a,b,cin,s,co);
  
  initial begin
    a=0; b=0; cin=0;
    repeat(5)
      begin
        #5 a=$random; b=$random;  cin=$random;
        $display("Time=%0t,a=%b,b=%b,cin=%b,s=%b,co=%b",$time,a,b,cin,s,co);
      end
  end
endmodule