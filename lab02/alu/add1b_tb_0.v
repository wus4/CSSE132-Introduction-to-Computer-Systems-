//Created by Muqing Zheng, Zezhi Xia on March 16, 2016

// Verilog test fixture created from schematic C:\CSSE132\lab02\alu\work\add1b.sch - Wed Mar 16 20:49:20 2016

`timescale 1ns / 1ps

module add1b_add1b_sch_tb();

// Inputs
   reg a;
   reg b;
   reg ci;

// Output
   wire r;
   wire co;

// Bidirs

// Instantiate the UUT
   add1b UUT (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.r(r), 
		.co(co)
   );
// Initialize Inputs
	initial begin
	  ci = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  a = 1;
	  #1;
	  if ((r == 1) && (co == 0))
		 $display("okay 1");
	  else
		 $display("fail 1");
		 
	  ci = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  a = 1;
	  b = 1;
	  #1;
	  if ((r == 0) && (co == 1))
		 $display("okay 1");
	  else
		 $display("fail 1");
	end
endmodule
