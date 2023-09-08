/****************************************************
* File:					FullAdder.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Design Entry for Full Adder
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