`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:00:30 06/20/2017
// Design Name:   Test
// Module Name:   /csehome/ld111/microP/Test_test_2.v
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

module Test_test_2;

	// Inputs
	reg clk;
	reg Reset;

	// Outputs
	wire [6:0] Tens;
	wire [6:0] Ones;

	// Instantiate the Unit Under Test (UUT)
	Test uut (
		.clk(clk), 
		.Reset(Reset), 
		.Tens(Tens), 
		.Ones(Ones)
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

