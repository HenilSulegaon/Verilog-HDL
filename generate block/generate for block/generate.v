// Code your design here

module ha(a,b,s,c);
  input a,b;
  output s,c;
  
  assign s=a^b;
  assign c=a&b;
endmodule

module adder(a,b,s,c);
  parameter N=4;
  input [N-1:0] a,b;
  output [N-1:0] s,c;
  
  genvar i;
  
  generate
    for(i=0;i<N;i++)
      ha I0(a[i],b[i],s[i],c[i]);
  endgenerate
endmodule