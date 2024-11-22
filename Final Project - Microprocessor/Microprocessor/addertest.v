`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:05 06/19/2017
// Design Name:   adder
// Module Name:   /csehome/ld111/microP/addertest.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module addertest;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg clk;

	// Outputs
	wire [7:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.Sum(Sum)
	);
   
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
      A = 7'b0000001;
		B = 7'b0000010;
		#20;
		
		A = 7'b0000011;
		B = 7'b0000100;
		


	end
      
endmodule

