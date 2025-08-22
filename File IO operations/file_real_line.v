module file_gets;
  integer f_id;
  reg [8*100:1] line;
  
  initial begin
    f_id=$fopen("verilog.txt","r");
    if(f_id)
      begin
        repeat(5)begin
        $fgets(line,f_id);
        $display("Line: %0s",line);
        end
      end
    else begin
      $display("file can't open.");
      $fclose(f_id);
    end
  end
endmodule