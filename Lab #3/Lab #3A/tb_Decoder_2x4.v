/****************************************************
* File:					tb_Decoder_2x4.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for Decoder_2x4.v
*
***************************************************/

`timescale 1 ns / 1 ps
module tb_Decoder_2x4();
	// all inputs to UUT are declared as reg type
	reg	[1:0]A;
	reg	E;
	// all outputs from UUT are declared as wire type
	wire	[3:0]D;
	// instantiate UUT with implicit port mapping
	Decoder_2x4 UUT (A, E, D);
	
	// generate stimuli
	initial
	begin
		E = 1'b0;	A = 2'b00; #10
						A = 2'b00; #10
						A = 2'b01; #10
						A = 2'b10; #10
						A = 2'b11; #10
		E = 1'b1;	A = 2'b00; #10
						A = 2'b01; #10
						A = 2'b10; #10
						A = 2'b11; #10
		
		$stop;						// system task to end simulation
	end

endmodule