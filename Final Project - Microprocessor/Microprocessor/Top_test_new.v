`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:16:24 06/20/2017
// Design Name:   Top
// Module Name:   /csehome/ld111/microP/Top_test_new.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top_test_new;

	// Inputs
	reg clk;
	reg Reset;
	reg [7:0] Instruction;

	// Outputs
	wire [7:0] ReadAddress;
	wire [6:0] Tens;
	wire [6:0] Ones;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.Reset(Reset), 
		.Instruction(Instruction), 
		.ReadAddress(ReadAddress), 
		.Tens(Tens), 
		.Ones(Ones)
	);
   
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		Reset = 1;
		Instruction = {2'b00, 2'b00, 2'b01, 2'b10};

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#30;
		Reset = 0;
		Instruction = {2'b00, 2'b00, 2'b01, 2'b10};
		
		#30;
		Instruction = {2'b01, 2'b01, 2'b00, 2'b11}; //expect register[0] = mem[0] that is, -15
		
		
		

	end
      
endmodule

