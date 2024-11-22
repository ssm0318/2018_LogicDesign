`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:34 06/19/2017
// Design Name:   register
// Module Name:   /csehome/ld111/microP/register_test_3.v
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

module register_test_3;

	// Inputs
	reg clk;
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
		RegWrite = 0;
		Read1 = 0;
		Read2 = 0;
		WriteR = 0;
		WriteD = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	   RegWrite = 1;
		Read1 = 0;
		Read2 = 0;
		WriteR = 2'b00;
		WriteD = 8'hAA;
		#100
		
		RegWrite = 1;
		Read1 = 0;
		Read2 = 0;
		WriteR = 2'b01;
		WriteD = 8'hFF;
		#100
		
		RegWrite = 1;
		Read1 = 0;
		Read2 = 0;
		WriteR = 2'b10;
		WriteD = 8'h11;
		#100
		
		RegWrite = 1;
		Read1 = 0;
		Read2 = 0;
		WriteR = 2'b11;
		WriteD = 8'hAB;
		#100
		
		RegWrite = 0;
		Read1 = 2'b00;
		Read2 = 2'b01;
		WriteR = 0;
		WriteD = 0;
		#100
		
		RegWrite = 0;
		Read1 = 2'b10;
		Read2 = 2'b11;
		WriteR = 0;
		WriteD = 0;
		

	end
      
endmodule

