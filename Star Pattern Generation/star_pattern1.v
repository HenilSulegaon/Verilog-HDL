module tb;
  int i,j;
  
  initial
    begin
      for(i=1;i<=5;i++)
        begin
          repeat(i)
            $write("*"," ");
          $write("\n");
        end
    end
endmodule