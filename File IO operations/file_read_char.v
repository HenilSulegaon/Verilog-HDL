module file_readchar;
  integer f_id,c;
  
  initial begin
    f_id=$fopen("verilog.txt","r");
    if(f_id)
      begin
        repeat(5)begin
        c=$fgetc(f_id);
        $display("char=%s",c);
      end
      end
    else
      $display("File can't open.");
  end
endmodule