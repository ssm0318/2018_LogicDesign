`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:15 06/19/2017
// Design Name:   mux1
// Module Name:   /csehome/ld111/microP/mux1test.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux1test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Sel;

	// Outputs
	wire [7:0] Result;

	// Instantiate the Unit Under Test (UUT)
	mux1 uut (
		.A(A), 
		.B(B), 
		.Sel(Sel), 
		.Result(Result)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      A = 7'b0000000;
      B = 7'b0000001;
      Sel = 0;
      
		#20;
		
		A = 7'b0000001;
		B = 7'b0000010;
		Sel = 1;
  
 

	end
      
endmodule

