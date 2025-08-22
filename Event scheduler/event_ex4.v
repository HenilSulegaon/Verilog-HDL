module nba_example;
 reg [3:0] a, b,x,z;
 initial begin
 a = 2;
 b <= 1;
 x = 2;
 $display("a = %d, b = %d,x = %d,z=%d ",a, b,x,z);
 #1
 x <= a+b;  
z <= x+a; ;  
$display("a = %d, b = %d,x = %d,z=%d ",a, b,x,z);
 #1;  
$display("a = %d, b = %d,x = %d,z=%d ",a, b,x,z);
 end
 endmodule