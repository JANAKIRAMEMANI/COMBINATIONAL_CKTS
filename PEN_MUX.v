//priority encoder using mux
module pen_mux(y1,y0,f,m,y,s);
  input f,m,y,s;
  output y1,y0;
  
  wire y1,y0;
  wire [1:0] b1,b2,b3; 
  
  assign b1 = s ? 2'b00 : 2'b10;
  assign b2 = y ? 2'b01 : b1;
  assign b3 = m ? 2'b11 : b2;
  assign {y1,y0} = f ? 2'b10 : b3;
	
endmodule
