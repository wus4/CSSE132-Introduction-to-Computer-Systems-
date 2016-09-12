// Verilog test fixture created from schematic C:\CSSE132\lab02\alu\alu1b.sch - Tue Mar 22 11:48:36 2016

`timescale 1ns / 1ps

module alu1b_alu1b_sch_tb();

// Inputs
   reg [2:0] op;
   reg ci;
   reg b;
   reg a;
   reg slt;

// Output
   wire co;
   wire r;
   wire less;

// Bidirs

// Instantiate the UUT
   alu1b UUT (
		.op(op), 
		.ci(ci), 
		.co(co), 
		.r(r), 
		.b(b), 
		.a(a), 
		.less(less), 
		.slt(slt)
   );
// Initialize Inputs
	initial begin
	  op = 000;
	  ci = 0;
	  b = 0;
	  a = 0;
	  slt = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  a = 1;
	  #1;
	  if ((r == 0) && (co == 0))
		 $display("okay and");
	  else
		 $display("fail and");
		 
	  op = 000;
	  ci = 0;
	  slt = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  op = 3'b001;
	  a = 0;
	  b = 1;
	  #1;
	  if ((r == 1) && (co == 0))
		 $display("okay or");
	  else
		 $display("fail or");
		 
	  op = 000;
	  ci = 0;
	  slt = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  op = 3'b010;
	  a = 1;
	  b = 1;
	  #1;
	  if ((r == 0) && (co == 1))
		 $display("okay addition 1");
	  else
		 $display("fail addition 1");		 
		 
	  op = 000;
	  ci = 0;
	  slt = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  op = 3'b010;
	  a = 1;
	  b = 1;
	  ci = 1;
	  #1;
	  if ((r == 1) && (co == 1))
		 $display("okay addition 2");
	  else
		 $display("fail addition 2");		 

	  op = 000;
	  ci = 0;
	  slt = 0;
	  b = 0;
	  a = 0;
	  // Wait 100ns for the simulator to finish initializing
	  #100;
	  op = 3'b110;
	  ci = 1;
	  a = 1;
	  b = 1;
	  #1;
	  if (r == 0)
		 $display("okay subtraction");
	  else
		 $display("fail subtraction");	
		 
	end
endmodule
