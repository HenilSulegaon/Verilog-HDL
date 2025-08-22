module Generic_code(in,s,out);
  parameter N=4;      // here N is selection line
  input [2**N-1:0] in;   // 1024 inputs
  input [N-1:0] s;       // 10 select line
  output out;
  
  assign out=in[s];
endmodule