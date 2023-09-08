// Machacon, Zach Riane I. 
// CPE 3101L (Group 2) F 11:00AM - 2:00PM
// Verilog HDL code for a half adder circuit
// 
module HalfAdder (x, y, C, S);

	input		x, y;
	output	C, S;
	xor		X1 (S, x, y);
	and		A1 (C, x, y);

endmodule
