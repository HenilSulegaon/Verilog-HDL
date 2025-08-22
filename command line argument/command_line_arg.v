module tb;
  string str;
  integer i1,i2;
  
  initial begin
    
    if($test$plusargs("HENIL"))
      $display("HENIL argument is found...");
    if($test$plusargs("S"))
      $display("S argument is found...");
    if($test$plusargs("SULE"))
      $display("SULE argument is found...");
    if($test$plusargs("SULEGAON"))
      $display("SULEGAON argument is found...");
    
    
    if($value$plusargs("String=%s",str))
      $display("String has a value %s",str);
    if($value$plusargs("Data1=%0d",i1))
      $display("Data has a vlaue %0d",i1);
    if($value$plusargs("Data2=%0d",i2))
      $display("Data has a value %0d",i2);
  end
endmodule