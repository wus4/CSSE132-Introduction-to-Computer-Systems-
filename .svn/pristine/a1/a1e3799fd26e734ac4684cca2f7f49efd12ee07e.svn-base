// Verilog test fixture created from schematic C:\CSSE132\lab02\alu\alu.sch - Tue Mar 22 11:55:46 2016

`timescale 1ns / 1ps

module alu_alu_sch_tb();

// Inputs
   reg [2:0] op;
   reg [3:0] a;
   reg [3:0] b;

// Output
   wire [3:0] r;
   wire overflow;
   wire zo;

// Bidirs

// Instantiate the UUT
   alu UUT (
		.op(op), 
		.a(a), 
		.b(b), 
		.r(r), 
		.overflow(overflow), 
		.zo(zo)
   );
// Initialize Inputs
      initial begin
		op = 0;
		a = 0;
		b = 0;
		#100;
		end
		
		always begin
		a=-8;
		#10;
      repeat(16) begin
			b=-8;
			#10;
			while(b<8) begin
				//and
				op=3'b000;
				#10;
				if (r!=(a&b))
					$display("AND a=%b b=%b r=%b r2=%b",a,b,r,(a&b));
				//or
				op=3'b001;
				#10;
				if (r!=(a|b))
					$display("OR a=%b b=%b r=%b r2=%b",a,b,r,(a|b));
				//add
				op=3'b010;
				#10;
				if (r!=(a+b))
					$display("ADD a=%b b=%b r=%b r2=%b",a,b,r,(a+b));
				//sub
				op=3'b110;
				#10;
				if (r!=(a-b))
					$display("SUB a=%b b=%b r=%b r2=%b",a,b,r,(a-b));
				//less than
				op=3'b111;
				#10;
				if (r!=(a<b?0:1))
					$display("LT a=%b b=%b r=%b r2=%b",a,b,r,(a<b?1:0));
				 b=b+1;
				 #10;
			 end
		$display("Finish checking for a=%b",a);
		a=a+1;
		#10;
	 end
 end
endmodule
