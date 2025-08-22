module tb;
  int a,b,c;
initial begin
 a = 3; b = 2; c = 2; 
$display("T=%0t [DISPLAY] a=%0d b=%0d c=%0d", $time, a, b, c);
 $strobe ("T=%0t [STROBE ] a=%0d b=%0d c=%0d", $time, a, b, c);
 $monitor("T=%0t [MONITOR] a=%0d b=%0d c=%0d", $time, a, b, c);
 $write("T=%0t [WRITE] a=%0d b=%0d c=%0d\n", $time, a, b, c);
 #1
 a = b + c;    
c <= a + b;    
#0 a = c;      
b <= c + a;    
b <= b + b;
 $write("T=%0t [WRITE] a=%0d b=%0d c=%0d\n", $time, a, b, c); 
 $strobe ("T=%0t [STROBE ] a=%0d b=%0d c=%0d", $time, a, b, c);
 $monitor("T=%0t [MONITOR] a=%0d b=%0d c=%0d", $time, a, b, c);
 $display("T=%0t [DISPLAY] a=%0d b=%0d c=%0d", $time, a, b, c);
 #1;
 $display("T=%0t [DISPLAY] a=%0d b=%0d c=%0d", $time, a, b, c);
 end
endmodule