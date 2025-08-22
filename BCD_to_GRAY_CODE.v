module bcd_to_gray(b,g);
  input [3:0] b;
  output [3:0] g;
  
  buf (g[3],b[3]);
  or (g[2],b[2],b[3]);
  xor (g[1],b[1],b[2]);
  xor (g[0],b[0],b[1]);
endmodule