module mmmm(output wire [7:0] max,midH,midL,min,input [7:0] A,B,C,D);  //4 INPUTS & 4 OUTPUTS
  wire [7:0] max1,mid1,min1,min2;
  
  mmm MM1 (max1,mid1,min1,A,B,C);
  maxmin MM2 (max,min2,max1,D);
  mmm MM3 (midH,midL,min,min2,mid1,min1);
endmodule

module mmm(output wire [7:0] max,mid,min,input [7:0] A,B,C); //3 INPUTS & 3 OUTPUTS
  wire [7:0] max1,min1,min2;
  maxmin MM1 (max1,min1,A,B);
  maxmin MM2 (max,min2,max1,C);
  maxmin MM3 (mid,min,min2,min1);
endmodule

module maxmin(max,min,A,B); //2 INPUTS & 2 OUTPUTS
   input [7:0] A,B;
  output [7:0] max,min;
  wire [7:0] max,min;
  wire gt;
  
  assign gt = (A>B);
  assign {max,min} = gt ? {A,B} : {B,A};
endmodule
