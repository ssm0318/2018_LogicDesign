`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:08 06/21/2017
// Design Name:   Test
// Module Name:   /csehome/ld111/microP/Test_test_14.v
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

module Test_test_14;

	// Inputs
	reg clk;
	reg Reset;

	// Outputs
	wire [7:0] RawOutput;
	wire LED;
	wire [6:0] AddressTens;
	wire [6:0] AddressOnes;
	wire [6:0] InstTens;
	wire [6:0] InstOnes;

	// Instantiate the Unit Under Test (UUT)
	Test uut (
		.clk(clk), 
		.Reset(Reset), 
		.RawOutput(RawOutput), 
		.LED(LED), 
		.AddressTens(AddressTens), 
		.AddressOnes(AddressOnes), 
		.InstTens(InstTens), 
		.InstOnes(InstOnes)
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

