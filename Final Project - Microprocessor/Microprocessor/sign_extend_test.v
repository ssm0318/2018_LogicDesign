`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:14:42 06/19/2017
// Design Name:   sign_extend
// Module Name:   /csehome/ld111/microP/sign_extend_test.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_extend_test;

	// Inputs
	reg [1:0] Imm;

	// Outputs
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	sign_extend uut (
		.Imm(Imm), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		Imm = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Imm = 1;
		
		#100;
		Imm = 2;

		#100;
		Imm = 3;
		
		#100;
		Imm = 4;
		// Add stimulus here
	end
      
endmodule

