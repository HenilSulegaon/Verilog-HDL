module tb;
  reg [7:0] A,B;
  reg [3:0] opcode;
  wire carry;
  wire [7:0] result;
  wire s,z,p;
  
  alu DUT(A,B,carry,result,opcode,s,z,p);
  
  initial
    begin
      
      opcode=4'b0; A=8'b0; B=8'b0; 
      #10 opcode=4'b0000; A=8'b10011010; B=8'b10101010;
      #10 opcode=4'b0001; A=8'b11001010; B=8'b00101011;
      #10 opcode=4'b0010; A=8'b01010100; B=8'b00001011;
      #10 opcode=4'b0011; A=8'b10011111; B=8'b00111100;
      #10 opcode=4'b0100; A=8'b11111111; B=8'b00010101;
      #10 opcode=4'b0101; A=8'b10101111; B=8'b01010111;
      #10 opcode=4'b0110; A=8'b01011010; B=8'b0;
      #10 opcode=4'b0111; A=8'b01110101; B=8'b01010101;
      #10 opcode=4'b1000; A=8'b10100110; B=8'b0;
      #10 opcode=4'b1001; A=8'b11100101; B=8'b0;
      #10 opcode=4'b0; A=8'b0; B=8'b0;
    end
  
  initial
    begin
      $dumpfile("Henil.vcd");
      $dumpvars;
      $monitor("Time=%0t, opcode=%b,  A=%b, B=%b, carry=%b, result=%b, s=%b, z=%b, p=%B",$time,opcode,A,B,carry,result,s,z,p);
      #150 $finish;
    end
endmodule