module task_swap;
  task swap;
    input [3:0] a,b;
    reg [3:0] out_a,out_b;
    
    begin
      out_a=b;
      out_b=a;
      $display("a=%0d,b=%0d \nout_a=%0d,out_b=%0d",a,b,out_a,out_b);
    end
  endtask
  
  
  initial begin
    swap(12,5);
  end
endmodule
