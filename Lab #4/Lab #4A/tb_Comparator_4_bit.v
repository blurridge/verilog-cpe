/**********************************************************
* File:					tb_Comparator_4_bit.v
* Author:				Zach Riane I. Machacon
* Class: 				CPE 3101L
* Group / Schedule:	Group 2 Fri 11:00AM - 2:00PM
* Description:			Testbench file for Comparator_4_bit.v
*
***********************************************************/

`timescale 1 ns / 1 ps
module tb_Comparator_4_bit();
	// all inputs to UUT are declared as reg type
	reg	[3:0]A, B;
	// all outputs from UUT are declared as wire type
	wire	[2:0]R;
	// instantiate UUT with explicit port mapping
	Comparator_4_bit UUT (.A(A), .B(B), .R(R));
	
	// generate stimuli
	initial begin
		$display("Starting simulation at %0d ns...", $time);
		// Test Case 1: A = 4'b0101, B = 4'b0010
        A = 4'b0101;		B = 4'b0010;	#10;

        // Test Case 2: A = 4'b1100, B = 4'b1100
        A = 4'b1100;		B = 4'b1100;	#10; 

        // Test Case 3: A = 4'b0010, B = 4'b0101
        A = 4'b0010;		B = 4'b0101;	#10; 

        // Test Case 4: A = 4'b1010, B = 4'b1100
        A = 4'b1010;		B = 4'b1100;	#10; 

        // Test Case 5: A = 4'b1111, B = 4'b0000
        A = 4'b1111;		B = 4'b0000;	#10; 
		  
        // Test Case 6: A = 4'b0101, B = 4'b0101
        A = 4'b0101;		B = 4'b0101;	#10; 

        // Test Case 7: A = 4'b0000, B = 4'b1111
        A = 4'b0000;		B = 4'b1111;	#10; 

        // Test Case 8: A = 4'b1000, B = 4'b0111
        A = 4'b1000;		B = 4'b0111;	#10; 

        // Test Case 9: A = 4'b0011, B = 4'b0011
        A = 4'b0011;		B = 4'b0011;	#10; 

        // Test Case 10: A = 4'b1101, B = 4'b1010
        A = 4'b1101;		B = 4'b1010;	#10; 
		
		$display("Finished simulation at %0d ns.", $time);
		$stop;						// system task to end simulation
	end
	
	initial begin
		$monitor("Time = %2d ns\t A = %b\t B = %b\t R = %b", $time, A, B, R);
	end

endmodule