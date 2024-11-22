`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:05:38 06/20/2017
// Design Name:   control
// Module Name:   /csehome/ld111/microP/control_test_2.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_test_2;

	// Inputs
	reg [1:0] I;

	// Outputs
	wire RegDst;
	wire RegWrite;
	wire ALUSRc;
	wire Branch;
	wire MemRead;
	wire MemWrite;
	wire MemtoReg;
	wire ALUOp;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.I(I), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUSRc(ALUSRc), 
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp)
	);

	initial begin
		
		I = 0;
		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
      I = 2'b00;
		#30;
		
		I = 2'b01;
		#30;

      I = 2'b10;
		#30;
		
		I = 2'b11;
		

	end
      
endmodule

