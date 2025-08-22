`include "HA.sv"
module FA(a,b,cin,s,co);
  input a,b,cin;
  output s,co;
  wire w1,w2,w3;
  
  HA (a,b,w1,w2);
  HA (w1,cin,s,w3);
  or (co,w2,w3);
endmodule