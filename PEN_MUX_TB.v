module pen_mux_tb;
    reg f,m,y,s;
    wire y1,y0;

    pen_mux DUT (y1,y0,f,m,y,s);


    initial begin
        $dumpfile("dump.vcd"); 
        $dumpvars;
      end
  
  initial 
	begin
      for(int j=0; j<=15; j++) //repeat(15)
			begin
              {f,m,y,s}= j;
			#1;
			$display(f,m,y,s,":",y1,y0);
			end
	end
endmodule
