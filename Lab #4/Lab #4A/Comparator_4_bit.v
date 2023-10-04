/****************************************************
* File:					Comparator_4_bit.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Design Entry for a 4-bit 
*							Comparator.
*
***************************************************/

module Comparator_4_bit(
	input		[3:0]A, B,
	output	[2:0]R
);
	
	assign R[2] = (A > B);
	assign R[1] = (A == B);
	assign R[0] = (A < B);
	
endmodule