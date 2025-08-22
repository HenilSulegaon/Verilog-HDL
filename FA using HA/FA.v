module HA(A,B,S,C);
  input A,B;
  output S,C;
  assign S= A ^ B;
  assign C= A&B;
endmodule

module FA(A,B,Cin,S,Co);
  input A,B,Cin;
  output S,Co;
  wire W1,W2,W3;
  
  HA HA1(A,B,W1,W2);
  HA HA2(W1,Cin,S,W3);
  or OR1(Co,W2,W3);
endmodule