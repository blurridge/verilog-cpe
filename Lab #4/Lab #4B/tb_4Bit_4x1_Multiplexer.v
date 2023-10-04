/**********************************************************
* File:					tb_4Bit_4x1_Multiplexer.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for 
*							NBit_4x1_Multiplexer.v with 4 bits.
*
***********************************************************/

`timescale 1 ns / 1 ps
module tb_4Bit_4x1_Multiplexer();
	// all inputs to UUT are declared as reg type
	reg	[3:0]A, B, C, D;
	reg 	[1:0]S;
	// all outputs from UUT are declared as wire type
	wire	[3:0]Y;
	// instantiate UUT with explicit port mapping
	NBit_4x1_Multiplexer #( .N(4)	)
		UUT (.A(A), .B(B), .C(C), .D(D), .S(S), .Y(Y));
	
	// generate stimuli
	initial begin
		$display("Starting simulation at %0d ns...", $time);
			
			S = 2'b00; A = 4'b1000; B = 4'b0100; C = 4'b0010; D = 4'b0001; #10;
			S = 2'b01; A = 4'b1000; B = 4'b0100; C = 4'b0010; D = 4'b0001; #10;
			S = 2'b10; A = 4'b1000; B = 4'b0100; C = 4'b0010; D = 4'b0001; #10;
			S = 2'b11; A = 4'b1000; B = 4'b0100; C = 4'b0010; D = 4'b0001; #10;
		
		$display("Finished simulation at %0d ns.", $time);
		$stop;						// system task to end simulation
	end
	
	initial begin
		$monitor("Time = %2d ns\t S = %b\t A = %b\t B = %b\t C = %b\t D = %b\t Y = %b", $time, S, A, B, C, D, Y);
	end

endmodule