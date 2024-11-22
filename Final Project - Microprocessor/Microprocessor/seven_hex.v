`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:25 06/19/2017 
// Design Name: 
// Module Name:    seven_hex 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seven_hex(
    input [7:0] I,
    
	 output A_a,
    output B_a,
    output C_a,
    output D_a,
    output E_a,
    output F_a,
    output G_a,

    output A_b,
    output B_b,
    output C_b,
    output D_b,
    output E_b,
    output F_b,
    output G_b
    );
	 
	 reg [0:6] Out_a;
	 reg [0:6] Out_b;

	 wire [3:0] I_a;
	 wire [3:0] I_b;

	 assign A_a = Out_a[0];
	 assign B_a = Out_a[1];
	 assign C_a = Out_a[2];
	 assign D_a = Out_a[3];
	 assign E_a = Out_a[4];
	 assign F_a = Out_a[5];
	 assign G_a = Out_a[6];

	 assign A_b = Out_b[0];
	 assign B_b = Out_b[1];
	 assign C_b = Out_b[2];
	 assign D_b = Out_b[3];
	 assign E_b = Out_b[4];
	 assign F_b = Out_b[5];
	 assign G_b = Out_b[6];

	
	 assign I_a = I[7:4];
	 assign I_b = I[3:0];

	always@(*)
		begin
			case(I_a)
				4'b0000 : Out_a = 7'b1111110;
				4'b0001 : Out_a = 7'b0110000;
				4'b0010 : Out_a = 7'b1101101;
				4'b0011 : Out_a = 7'b1111001;
				4'b0100 : Out_a = 7'b0110011;
				4'b0101 : Out_a = 7'b1011011;
				4'b0110 : Out_a = 7'b1011111;
				4'b0111 : Out_a = 7'b1110010;
				4'b1000 : Out_a = 7'b1111111;
				4'b1001 : Out_a = 7'b1111011;
				// ---above 0 ~ 9 ---below A ~ F
				4'b1010 : Out_a = 7'b1110111;
				4'b1011 : Out_a = 7'b0011111;
				4'b1100 : Out_a = 7'b1001110;
				4'b1101 : Out_a = 7'b0111101;
				4'b1110 : Out_a = 7'b1001111;
				4'b1111 : Out_a = 7'b1000111;
				default : Out_a = 7'b0000000;
			endcase
			case(I_b)
				4'b0000 : Out_b = 7'b1111110;
				4'b0001 : Out_b = 7'b0110000;
				4'b0010 : Out_b = 7'b1101101;
				4'b0011 : Out_b = 7'b1111001;
				4'b0100 : Out_b = 7'b0110011;
				4'b0101 : Out_b = 7'b1011011;
				4'b0110 : Out_b = 7'b1011111;
				4'b0111 : Out_b = 7'b1110010;
				4'b1000 : Out_b = 7'b1111111;
				4'b1001 : Out_b = 7'b1111011;
				// ---above 0 ~ 9 ---below A ~ F
				4'b1010 : Out_b = 7'b1110111;
				4'b1011 : Out_b = 7'b0011111;
				4'b1100 : Out_b = 7'b1001110;
				4'b1101 : Out_b = 7'b0111101;
				4'b1110 : Out_b = 7'b1001111;
				4'b1111 : Out_b = 7'b1000111;
				default : Out_b = 7'b0000000;
			endcase
		end
	 


endmodule
