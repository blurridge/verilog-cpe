/****************************************************
* File:					tb_Adder_4bit.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for Adder_4bit.v
*
***************************************************/

`timescale 1 ns / 1 ps
module tb_Adder_4bit();
	
	// all inputs to UUT are declared as reg type
	reg	[3:0] A, B;
	reg			C_in;
	// all outputs from UUT are declared as wire type
	wire	[3:0] S; 
	wire			C_out;
	// instantiate UUT with explicit port mapping (you must supply this part)
	Adder_4bit UUT (	.A 		(A),
							.B 		(B),
							.C_in		(C_in),
							.S			(S),
							.C_out	(C_out)	
						);
	// generate stimuli
	initial
	begin
		A = 4'd0;	B = 4'd0;	C_in = 0;	#10
		A = 4'd3;	B = 4'd8;	C_in = 1;	#10
		A = 4'd11;	B = 4'd3;	C_in = 0;	#10
		A = 4'd12;	B = 4'd6;	C_in = 0;	#10
		A = 4'd5;	B = 4'd4;	C_in = 1;	#10
		A = 4'd1;	B = 4'd9;	C_in = 0;	#10
		A = 4'd15;	B = 4'd15;	C_in = 0;	#10
		A = 4'd15;	B = 4'd15;	C_in = 1;	#10
		
		$stop;						// system task to end simulation
	end
		
endmodule