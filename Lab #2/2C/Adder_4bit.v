/****************************************************
* File:					Adder_4bit.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Design Entry for 4-bit Adder
*
***************************************************/

module HalfAdder (x, y, C, S);

	input		x, y;
	output	C, S;
	xor		X1 (S, x, y);
	and		A1 (C, x, y);

endmodule

module FullAdder (A, B, C_in, S, C_out);
	input		A, B, C_in;
	output	S, C_out;
	wire 		firstAdder_out, secondAdder_carry, firstAdder_carry;
	
	HalfAdder firstAdder (	.x (A),
									.y (B), 
									.C (firstAdder_carry),
									.S (firstAdder_out)
								);
	HalfAdder secondAdder (	.x (C_in),
									.y (firstAdder_out),
									.C	(secondAdder_carry),
									.S (S)
								);
	or			(C_out, secondAdder_carry, firstAdder_carry);
	
endmodule

module Adder_4bit(A, B, C_in, S, C_out);
	input 	[3:0] A, B;
	input		C_in;
	output 	[3:0] S;
	output	C_out;
	wire 		FA1_out, FA2_out, FA3_out;
	
	FullAdder FA1	(	.A 		(A[0]),
							.B 		(B[0]),
							.C_in		(C_in),
							.S			(S[0]),
							.C_out	(FA1_out)	
						);
	FullAdder FA2	(	.A 		(A[1]),
							.B 		(B[1]),
							.C_in		(FA1_out),
							.S			(S[1]),
							.C_out	(FA2_out)
						);
	FullAdder FA3	(	.A 		(A[2]),
							.B 		(B[2]),
							.C_in		(FA2_out),
							.S			(S[2]),
							.C_out	(FA3_out)
						);
	FullAdder FA4	(	.A 		(A[3]),
							.B 		(B[3]),
							.C_in		(FA3_out),
							.S			(S[3]),
							.C_out	(C_out)	
						);	
endmodule					