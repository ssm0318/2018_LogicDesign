`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:50 06/20/2017
// Design Name:   part1_test
// Module Name:   /csehome/ld111/microP/part1_test_test.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part1_test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part1_test_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] display;

	// Instantiate the Unit Under Test (UUT)
	part1_test uut (
		.clk(clk), 
		.reset(reset), 
		.display(display)
	);

	always #10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#50;
		reset = 0;
        
		// Add stimulus here

	end
      
endmodule

