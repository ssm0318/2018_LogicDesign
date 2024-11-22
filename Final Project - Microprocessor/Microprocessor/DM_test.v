`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:04 06/19/2017
// Design Name:   DM
// Module Name:   /csehome/ld111/microP/DM_test.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DM_test;

	// Inputs
	reg [7:0] address;
	reg [7:0] WriteD;
	reg MemRead;
	reg MemWrite;
	reg clk;
	reg Reset;

	// Outputs
	wire [7:0] ReadD;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.address(address), 
		.WriteD(WriteD), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.clk(clk), 
		.Reset(Reset), 
		.ReadD(ReadD)
	);

always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		address = 0;
		WriteD = 0;
		MemRead = 0;
		MemWrite = 0;
		clk = 0;
		Reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here
		Reset = 0;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 0;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 1;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 2;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 3;
		
		#50
		MemRead = 0;
		MemWrite = 1;
		address = 0;
		WriteD = 8'b01010101;
		
		#50;
		Reset = 0;
		MemWrite = 1;
		address = 1;
		WriteD = 8'b01010101;
		
		#50;
		Reset = 0;
		MemWrite = 1;
		address = 2;
		WriteD = 8'b01010101;
		
		#50;
		Reset = 0;
		MemWrite = 1;
		address = 3;
		WriteD = 8'b01010101;
		
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 0;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 1;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 2;
		
		#50;
		Reset = 0;
		MemWrite = 0;
		MemRead = 1;
		address = 3;
		
		
	end
      
endmodule
