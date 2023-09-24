/****************************************************
* File:					Decoder_2x4.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Design Entry for a 2x4 Decoder.
*
***************************************************/

module Tri_And (
	input A, B, C,
	output f_out
);
	wire 	w1;
	and 	G1(w1, A, B);
	and	G2(f_out, w1, C);

endmodule


module Decoder_2x4 (
	input 	[1:0] A,
	input 	E,
	output 	[3:0] D
);
	wire		first_not, second_not;
	not		fN(first_not, A[0]);
	not		sN(second_not, A[1]);
	
	Tri_And	third_out(A[1], A[0], E, D[3]);
	Tri_And	second_out(A[1], first_not, E, D[2]);
	Tri_And	first_out(second_not, A[0], E, D[1]);
	Tri_And	zero_out(second_not, first_not, E, D[0]);

endmodule