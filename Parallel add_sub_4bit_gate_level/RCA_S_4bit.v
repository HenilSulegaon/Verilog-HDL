module RCA_S(A,B,Cin,M,S,Co);
  input [3:0] A,B;
  input Cin;
  input M;
  output [3:0] S;
  output Co;
  wire C0,C1,C2;
  wire x0,x1,x2,x3;
  
  xor(x0,B[0],M);
  xor(x1,B[1],M);
  xor(x2,B[2],M);
  xor(x3,B[3],M);
  
  FA F1(A[0],x0,M,S[0],C0);
  FA F2(A[1],x1,C0,S[1],C1);
  FA F3(A[2],x2,C1,S[2],C2);
  FA F4(A[3],x3,C2,S[3],Co);
endmodule

module FA(A,B,Cin,S,Co);
  input A,B,Cin;
  output S,Co;
  wire w1,w2,w3;
  
  xor(S,A,B,Cin);
  and(w1,A,B);
  and(w2,A,Cin);
  and(w3,B,Cin);
  or(Co,w1,w2,w3);
endmodule