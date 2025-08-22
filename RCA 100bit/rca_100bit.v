module FA(a,b,cin,s,co);
  input a,b,cin;
  output s,co;
  
  assign s=a^b^cin;
  assign co=(a&b)|(b&cin)|(cin&a);
endmodule

module RCA_100bits(a,b,cin,sum,cout);
  input [99:0] a,b;
  input cin;
  output [99:0] cout;
  output [99:0] sum;
  genvar i;
  
  FA F0(a[0],b[0],cin,sum[0],cout[0]);
  
  generate
    for(i=1;i<=99;i=i+1)
      begin
        FA Fi(a[i],b[i],cout[i-1],sum[i],cout[i]);
      end
  endgenerate
endmodule