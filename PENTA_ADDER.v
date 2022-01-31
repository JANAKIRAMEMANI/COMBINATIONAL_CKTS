module penta_adder(a,b,sum,cout);
  input [2:0] a,b;
  output [2:0] sum; 
  output cout;
  
  wire gt;
  wire [2:0] b1,b2,sum; 
  wire [3:0] Y;
  wire cout;
  
  assign Y = a+b;
  
  
  assign gt = (Y>4); //if Y>4 then increment or decrement
  assign b1 = Y-5;
  assign b2 = Y;
  assign sum = gt ? b1 : b2; 
  assign cout = gt ? 1 : 0;
  
endmodule
