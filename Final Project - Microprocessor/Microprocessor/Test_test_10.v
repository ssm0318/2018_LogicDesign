`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:31 06/20/2017
// Design Name:   Test
// Module Name:   /csehome/ld111/microP/Test_test_10.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_test_10;

	// Inputs
	reg clk;
	reg Reset;

	// Outputs
	wire [7:0] RawOutput;

	// Instantiate the Unit Under Test (UUT)
	Test uut (
		.clk(clk), 
		.Reset(Reset), 
		.RawOutput(RawOutput)
	);

	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		Reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		Reset = 0;
        
		// Add stimulus here

	end
      
endmodule

