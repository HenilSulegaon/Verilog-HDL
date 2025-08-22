module tb;
  reg [99:0] a,b;
  reg cin;
  wire [99:0] cout;
  wire [99:0] sum;
  
  RCA_100bits uut(a,b,cin,sum,cout);
  
  initial begin
    a=0; b=0; cin=0;
    #10 a=100'd5; b=100'd10;
    #10 a=100'd27; b=100'd45;
    #10 a=100'd77; b=100'd18;
    #10 a=0; b=0;
  end
  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
    $monitor("Time=%0t,a=%0d,b=%0d,cin=%0d,sum=%0d,cout=%0d",$time,a,b,cin,sum,cout);
    #50 $finish;
  end
endmodule