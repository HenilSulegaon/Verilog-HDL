module d_latch(d,en,prst,rst,q,qb);
  input d,en;
  input prst,rst;
  output q,qb;
  
  not #1 (enb,en);
  and (clk,enb,en);
  
  nand (w1,d,clk);
  nand (w2,~d,clk);
  nand (q,w1,qb,~prst);
  nand (qb,w2,q,~rst);
endmodule