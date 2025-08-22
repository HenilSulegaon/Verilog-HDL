module tb;
  reg [3:0] A,B;
  reg Cin,M;
  wire [3:0] S;
  wire Co;
  
  RCA_S DUT(A,B,Cin,M,S,Co);
  
  initial begin
    
    A=4'b0000; B=4'b0000; Cin=0; M=0;
    #10 A=4'b1111; B=4'b0011; M=1;
    #10 A=4'b1111; B=4'b0011; M=0;
    #10 A=4'b1001; B=4'b0101; M=1;
    #10 A=4'b1000; B=4'b1010; M=0;
  end
  
  initial begin
    $dumpfile("RCA_S.vcd");
    $dumpvars;
    $monitor("Time=%0t,A=%b,B=%b,M=%b,S=%b,Co=%b",$time,A,B,M,S,Co);
    #100 $finish;
  end
endmodule