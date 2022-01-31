module tb;
  reg  a0,a1;
  wire y3,y2,y1,y0;

  dec_comp ram (a0,a1,y0,y1,y2,y3);

/*
    initial begin
        $dumpfile("dump.vcd"); 
        $dumpvars;
      end*/
  
  initial 
	begin
		repeat(20)
			begin
              {a0,a1}= $random;
			#1;
              $display(a1,a0,":",y3,y2,y1,y0);
			end
	end
endmodule
