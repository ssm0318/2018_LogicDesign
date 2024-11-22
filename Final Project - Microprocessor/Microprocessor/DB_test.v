`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:56:50 06/19/2017
// Design Name:   DM
// Module Name:   /csehome/ld111/microP/DB_test.v
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

module DB_test;

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
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here
		address = 8'b0000_0111;
		WriteD = 8'b0001_0110;
		MemRead = 0;
		MemWrite = 1;
		Reset = 1;
		
		#50;
		
		address = 8'b0000_1111;
		WriteD = 0;
		MemRead = 1;
		MemWrite = 0;
		Reset = 0;
		
		#50;
		
		address = 8'b0001_1110; //expect 0000_1111
		WriteD = 0;
		MemRead = 1;
		MemWrite = 0;
		Reset = 0;
		
		#50;
		
		address = 8'b0000_1111;
		WriteD = 8'hFF;
		MemRead = 0;
		MemWrite = 1;
		Reset = 0;
		
		#50;
		
		address = 8'b0000_1111;
		WriteD = 0;
		MemRead = 1;
		MemWrite = 0;
		Reset = 0;
		
	end
      
endmodule

