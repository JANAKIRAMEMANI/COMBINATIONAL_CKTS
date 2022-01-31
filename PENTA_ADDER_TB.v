module tb;
  reg [2:0] a,b;
  wire [2:0] sum; wire cout;
  
  penta_adder p1 (a,b,sum,cout);
  
  initial begin
    a = 0; b = 1; #1; $display(a,b,":",cout,sum);
    a = 1; b = 2; #1; $display(a,b,":",cout,,sum);
    a = 2; b = 2; #1; $display(a,b,":",cout,,sum);
    a = 4; b = 4; #1; $display(a,b,":",cout,,sum);
    a = 2; b = 4; #1; $display(a,b,":",cout,,sum);
    a = 3; b = 4; #1; $display(a,b,":",cout,,sum);
    a = 2; b = 3; #1; $display(a,b,":",cout,,sum);
    a = 4; b = 5; #1; $display(a,b,":",cout,,sum);
    a = 7; b = 5; #1; $display(a,b,":",cout,,sum);
  end
  
endmodule
