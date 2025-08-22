module alu(A,B,carry,result,opcode,s,z,p);
  input [7:0] A,B;
  input [3:0] opcode;
  output reg carry;
  output reg [7:0] result;
  output  s,p,z;          // status flag bits
  
  parameter ADD=4'b0000, SUB=4'b0001, MUL=4'b0010, DIV=4'b0011, 
            AND=4'b0100, OR=4'b0101, NOT=4'b0110, XOR=4'b0111,
            LSL=4'b1000, LSR=4'b1001;
  
  always@(*)
    begin
      case(opcode)
        ADD: {carry,result} = A+B;
        SUB: {carry,result} = A-B;
        MUL: {carry,result} = A*B;
        DIV: {carry,result} = A/B;
        AND: result = A & B;
        OR: result = A | B;
        NOT: result = ~A;
        XOR: result = A ^ B;
        LSL: result = A << 1;
        LSR: result = A >> 1;
        default: result=8'b0;
      endcase
    end
  
  assign s = result[7];     // sign flag   0 =+ve, 1 =-ve
  assign z = ~| result;     // zero flag
  assign p =  ~^ result;    // even parity=1 , odd parity=0
endmodule