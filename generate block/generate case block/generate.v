module ha(a,b,s,co);
  input a,b;
  output reg s,co;
  
  always@(*)
    begin
      s=a^b;
      co=a&b;
    end
  
  initial $diplay("HA is instantiated");
endmodule

module fa(a,b,cin,s,co);
  input a,b,cin;
  output reg s,co;
  
  always@(*)
    begin
      s=a^b^cin;
      co=(a&b)|(b&cin)|(cin&a);
    end
  
  initial $display("FA is instantiated");
endmodule

module my_adder(a,b,cin,s,co);
  input a,b,cin;
  output s,co;
  parameter ADDER=0;
  
  generate
    case(ADDER)
      0: ha H1(a,b, ,s,co);
      1: fa F1(a,b,cin,s,co);
    endcase
  endgenerate
endmodule