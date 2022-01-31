module tb;
  reg [4:0] tod;
  wire [4:0] dby;
  
  toddby DUT (tod,dby);
  
  initial begin
    begin
      repeat(20)
        begin
          tod = $random;
          #1; $display(tod,":",dby);
        end
    end
  end
endmodule
