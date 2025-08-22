// Code your design here

module foo;
  parameter real A = 1.0;
  parameter real B = 2.0;

  initial begin
    $display("Instance %m: A = %0.4f, B = %0.4f", A, B);
  end
endmodule

module top;
  // Using defparam to override parameters for instance f1
  defparam f1.A = 3.1415;
  defparam f1.B = 2.7182;

  // Instantiating modules
  foo f1();  // f1 will get overridden parameter values
  foo f2();  // f2 will get default parameter values

endmodule
