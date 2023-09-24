/****************************************************
* File:					tb_Decoder_3x8.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for Decoder_3x8.v
*
***************************************************/

`timescale 1 ns / 1 ps
module tb_Decoder_3x8();
	// all inputs to UUT are declared as reg type
	reg	[2:0]A;
	// all outputs from UUT are declared as wire type
	wire	[7:0]D;
	// instantiate UUT with implicit port mapping
	Decoder_3x8 UUT (A, D);
	
	// generate stimuli
	initial
	begin
		A = 3'b000; 	#10
		A = 3'b001; 	#10
		A = 3'b010; 	#10
		A = 3'b011; 	#10
		A = 3'b100; 	#10
		A = 3'b101; 	#10
		A = 3'b110; 	#10
		A = 3'b111; 	#10
		
		$stop;						// system task to end simulation
	end

endmodule