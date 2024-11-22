`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:54:04 06/20/2017
// Design Name:   register
// Module Name:   /csehome/ld111/microP/register_test_10.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_test_10;

	// Inputs
	reg clk;
	reg Reset;
	reg RegWrite;
	reg [1:0] Read1;
	reg [1:0] Read2;
	reg [1:0] WriteR;
	reg [7:0] WriteD;

	// Outputs
	wire [7:0] ReadD1;
	wire [7:0] ReadD2;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.clk(clk), 
		.Reset(Reset), 
		.RegWrite(RegWrite), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteR(WriteR), 
		.WriteD(WriteD), 
		.ReadD1(ReadD1), 
		.ReadD2(ReadD2)
	);
	
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		Reset = 1;
		RegWrite = 0;
		Read1 = 0;
		Read2 = 0;
		WriteR = 0;
		WriteD = 0;

		// Wait 100 ns for global reset to finish
		#50;
		Reset = 0;
		Read1 = 2'd0;
		Read2 = 2'd1;
		
		#50;
		Read1 = 2'd2;
		Read2 = 2'd3;
		
		#50;
		RegWrite = 1;
		WriteR = 2'd0;
		WriteD = 8'd1;
		
		#50;
		RegWrite = 1;
		WriteR = 2'd1;
		WriteD = 8'd2;
		
		#50;
		RegWrite = 1;
		WriteR = 2'd2;
		WriteD = 8'd3;
		
		#50;
		RegWrite = 1;
		WriteR = 2'd3;
		WriteD = 8'd4;
		
		#50;
		RegWrite = 0;
		Read1 = 2'd0;
		Read2 = 2'd1;
		
		#50;
		Read1 = 2'd2;
		Read2 = 2'd3;
		
		#50;
		Reset = 1;
		
		#50;
		Reset = 0;
		Read1 = 2'd0;
		Read2 = 2'd1;
		
		#50;
		Read1 = 2'd2;
		Read2 = 2'd3;
		// Add stimulus here

	end
      
endmodule

