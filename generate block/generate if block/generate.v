// Code your design here

module mux_assign(a,b,sel,out);
  input a,b;
  input sel;
  output out;
  
  assign out=sel?a:b;
  
  initial $display("mux_assign is instantiated");
endmodule

module mux_case(a,b,sel,out);
  input a,b;
  input sel;
  output reg out;
  
  always@(*)
    begin
      case(sel)
        0 : out=b;
        1 : out=a;
      endcase
    end
  
  initial $display("mux_case is instantiated");
endmodule


module my_generate(a,b,sel,out);
  parameter USE_CASE=0;
  input a,b;
  input sel;
  output out;
  
  generate
    if(USE_CASE)
      mux_case M1(.a(a),.b(b),.sel(sel),.out(out));
    else
      mux_assign M2(.a(a),.b(b),.sel(sel),.out(out));
  endgenerate
endmodule