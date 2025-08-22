module tb;
  parameter n=5;
  int i,j;
  
  initial
    begin
      
      for(i=n;i>0;i--)
        begin
          repeat(i)
            $write("*", " ");
          $write("\n");
        end
    end
endmodule