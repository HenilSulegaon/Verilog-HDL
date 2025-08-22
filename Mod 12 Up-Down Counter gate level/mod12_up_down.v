
  `include "D_FF.v"

module mod_12_up_down_counter(clk,rst,M,q,qb);
  input clk,rst,M;
  output reg [3:0] q,qb;
  
  or(d1,w1,w2,w3,w4);
  and(w1,qb[1],q[0],~M);
  and(w2,q[1],qb[0],~M);
  and(w3,qb[1],qb[0],M);
  and(w4,q[1],q[0],M);
  
  or(d2,w5,w6,w7,w8,w9,w10);
  and(w5,~M,q[2],qb[1]);
  and(w6,~M,q[2],qb[0]);
  and(w7,~M,qb[3],qb[2],q[1],q[0]);
  and(w8,M,q[2],q[1]);
  and(w9,M,q[2],q[0]);
  and(w10,M,q[3],qb[1],qb[0]);
  
  or(d3,w11,w12,w13,w14,w15);
  and(w11,q[1],qb[0],q[3]);
  and(w12,~M,q[3],qb[1]);
  and(w13,q[3],q[0],M);
  and(w14,~M,q[2],q[1],q[0]);
  and(w15,M,qb[3],qb[2],qb[1],qb[0]);
  
  D_FF (qb[0],clk,rst,q[0],qb[0]);
  D_FF (d1,clk,rst,q[1],qb[1]);
  D_FF (d2,clk,rst,q[2],qb[2]);
  D_FF (d3,clk,rst,q[3],qb[3]);
endmodule
