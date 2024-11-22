`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:56:12 06/19/2017
// Design Name:   mux
// Module Name:   /csehome/ld111/microP/muxtest.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtest;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Sel;

	// Outputs
	wire [7:0] Result;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.Result(Result)
	);

	initial begin
		// Initialize Inputs
		A = 7'b0000000;
		B = 7'b0000000;
		Sel = 7'b0000000;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
      A = 7'b0000000;
		B = 7'b1110011;
		Sel = 1;
		#10
		
		A = 7'b0001000;
		B = 7'b1110111;
		Sel = 1;
		#10
		
		A = 7'b0000001;
		B = 7'b1111110;
		Sel = 1;
		
	end
      
endmodule

