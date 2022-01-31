//decoder using comparator
module dec_comp(a0,a1,y0,y1,y2,y3);
  input  a0,a1;
  output  y0,y1,y2,y3;
  
  assign y0 = {{a1,a0} == 2'b00};
  assign y1 = {{a1,a0} == 2'b01};
  assign y2 = {{a1,a0} == 2'b10};
  assign y3 = {{a1,a0} == 2'b11};
  
endmodule
