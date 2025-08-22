module example;
 reg a, b;
 initial begin
  a = 0;
 $display("display1: Time: %0t, a = %0d, b = %0d", $time, a, b);
  b = 1;
 $monitor("Monitor: Time: %0t, a = %0d, b = %0d", $time, a, b);
 #1;
 a <= b;  
 b <= a;  
$display("display2: Time: %0t, a = %0d, b = %0d", $time, a,b);
 $strobe("strobe: Time: %0t, a = %0d, b = %0d", $time, a, b);
 a = 0;
 #1;
 end
endmodule