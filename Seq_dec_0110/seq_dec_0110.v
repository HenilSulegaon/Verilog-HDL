module seq_det_0110(in,clk,rst,out);
  input in,clk,rst;
  output reg out;
  parameter S0=2'b00, S1=2'b01, S2=2'b10,  S3=2'b11;
  reg [1:0] PS,NS;
  
  always@(posedge clk or posedge rst)    //Async. rst
    begin
      if(rst)
        PS<=S0;
      else
        PS<=NS;
    end
  
  always@(PS,in)
    begin
      case(PS)
        S0:begin
          NS=in?S0:S1;
          out=in?0:0;
        end
        
        S1:begin
          NS=in?S2:S0;
          out=in?0:0;
          end
        
        S2:begin
          NS=in?S3:S0;
          out=in?0:0;
          end
        
        S3:begin
          NS=in?S0:S1;
          out=in?0:1;
          end
      endcase
    end
endmodule