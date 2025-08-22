// Code your design here

`include "FA.sv"
module rca_8bit(a,b,cin,s,co);
  input [7:0] a,b;
  input cin;
  output [7:0] s;
  output co;
  wire c0,c1,c2,c3,c4,c5,c6;
  
  FA (a[0],b[0],cin,s[0],c0);
  FA (a[1],b[1],c0,s[1],c1);
  FA (a[2],b[2],c1,s[2],c2);
  FA (a[3],b[3],c2,s[3],c3);
  FA (a[4],b[4],c3,s[4],c4);
  FA (a[5],b[5],c4,s[5],c5);
  FA (a[6],b[6],c5,s[6],c6);
  FA (a[7],b[7],c6,s[7],co);
endmodule