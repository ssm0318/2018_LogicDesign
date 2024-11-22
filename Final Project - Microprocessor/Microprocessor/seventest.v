`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:33:36 06/19/2017
// Design Name:   seven_hex
// Module Name:   /csehome/ld111/microP/seventest.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_hex
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seventest;

	// Inputs
	reg [7:0] I;

	// Outputs
	wire A_a;
	wire B_a;
	wire C_a;
	wire D_a;
	wire E_a;
	wire F_a;
	wire G_a;
	wire A_b;
	wire B_b;
	wire C_b;
	wire D_b;
	wire E_b;
	wire F_b;
	wire G_b;

	// Instantiate the Unit Under Test (UUT)
	seven_hex uut (
		.I(I), 
		.A_a(A_a), 
		.B_a(B_a), 
		.C_a(C_a), 
		.D_a(D_a), 
		.E_a(E_a), 
		.F_a(F_a), 
		.G_a(G_a), 
		.A_b(A_b), 
		.B_b(B_b), 
		.C_b(C_b), 
		.D_b(D_b), 
		.E_b(E_b), 
		.F_b(F_b), 
		.G_b(G_b)
	);

	initial begin
		// Initialize Inputs
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      I = 7'b0000001;
		#50;
		I = 7'b0000110;
      #50;
		I = 7'b1111111;
		
	end
      
endmodule

