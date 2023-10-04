/****************************************************
* File:					NBit_4x1_Multiplexer.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Design Entry for an n-bit 4x1
*							Multiplexer.
*
***************************************************/

module NBit_4x1_Multiplexer
	#(parameter N = 4)
(
	input		[N-1:0] A, B, C, D,
	input		[1:0] S,
	output	[N-1:0] Y
);

	assign Y = 	(S == 2'b00) ? A : 
					(S == 2'b01) ? B :
					(S == 2'b10) ? C :
					(S == 2'b11) ? D : 
					0;
	
endmodule