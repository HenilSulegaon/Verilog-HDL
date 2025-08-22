// Code your design here
// Decoder Nx2**N

module Generic_dec(in,out);
  parameter N=4;     // N is no. of inputs
  input [N-1:0] in;
  output reg [2**N-1:0] out;
  
//   assign out[in]=1;
  
  always@(*)
    begin
      out={(2**N){1'b0}};
      out[in]=1;
    end
endmodule