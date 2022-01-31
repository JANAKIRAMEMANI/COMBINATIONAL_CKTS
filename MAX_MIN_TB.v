module tb_mmm;
  reg [7:0] A,B,C,D;
  wire [7:0] max,midH,midL,min;
  
  mmmm dut (max,midH,midL,min,A,B,C,D);
  
 // initial begin
 //   $dumpfile("dump.vcd"); 
 //   $dumpvars;
 // end
    
 initial begin   
   repeat (20) 
      begin
        {A,B,C,D}=$random;
          #1;  
        $display("A = %0d:B = %0d:C = %0d:D = %0d ---- max =  %0d:midH = %0d:midL = %0d:min = %0d",A,B,C,D,max,midH,midL,min);
      end
 end

endmodule
