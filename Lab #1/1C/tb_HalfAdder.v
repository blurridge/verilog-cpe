/****************************************************
* File:					tb_HalfAdder.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for HalfAdder.v
*
***************************************************/

`timescale 1 ns / 1 ps
module tb_HalfAdder();
	
	// all inputs to UUT (HalfAdder.v) are declared as reg type
	reg	x, y;
	// all outputs from UUT (HalfAdder.v) are declared as wire type
	wire	C, S;
	// instantiate UUT with implicit port mapping
	HalfAdder UUT (x, y, C, S);
	
	// generate stimuli
	initial
	begin
		x = 0;	y = 0;	#10
		x = 0;	y = 1;	#10
		x = 1;	y = 0;	#10
		x = 1;	y = 1;	#50
		
		$stop;						// system task to end simulation
	end
		
endmodule