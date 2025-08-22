module tb;
  reg [7:0] a,b;
  reg cin;
  wire [7:0] s;
  wire co;
  
  rca_8bit dut(a,b,cin,s,co);
  
  initial begin
    a=8'b0; b=8'b0; cin=1'b0;
    #10 a=8'b10110101; b=8'b11110011; cin=1'b0;
    #10 a=8'b00001111; b=8'b11110000; cin=1'b1;
    #10 a=8'b10001101; b=8'b11010111; cin=1'b0;
  end
  
  initial begin
    $dumpfile("rca.vcd");
    $dumpvars;
    $monitor("Time=%2t,a=%b,b=%b,cin=%b,s=%b,co=%b",$time,a,b,cin,s,co);
    #50 $finish;
  end
endmodule