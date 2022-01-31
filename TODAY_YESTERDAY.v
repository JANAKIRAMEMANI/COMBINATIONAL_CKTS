module toddby(tod,dby); //TODAY -- DAY BEFORE YESTERDAY
  input [4:0] tod;
  output [4:0] dby;
  
  wire [4:0] ram,dby;
  
  todayyes t1 (tod,ram);
  todayyes t2 (ram,dby);
  
endmodule

module todayyes(tod,yes); // TODAY -- YESTERDAY
  input [4:0] tod;
  output [4:0] yes;
  
  wire [4:0] ram,yes;
  wire raja;
  
  assign ram = tod - 1;
  assign raja = (tod == 1);
  assign yes = raja ? 30 : ram;
  
endmodule

//NOTE : ASSUME EVERY MONTH HAS 30 DAYS
//DESIGN TO FIND OUT YESTERDAY & DAY BEFORE YESTERDAY BASED ON TODAY USING 2:1 MUX & COMPARATOR
