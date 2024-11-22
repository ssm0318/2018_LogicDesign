`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:04 06/19/2017 
// Design Name: 
// Module Name:    sign_extend 
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
module sign_extend(
    input [1:0] Imm,
    output [7:0] Output
    );
	 
	 reg [7:0] Output_temp;
	 assign Output = Output_temp;
	 
	 always@(*)	begin
		case(Imm)
			2'b00: Output_temp <= 8'b0000_0000;
			2'b01: Output_temp <= 8'b0000_0001;
			2'b10: Output_temp <= 8'b1111_1110;
			2'b11: Output_temp <= 8'b1111_1111;
		endcase
	 end
endmodule
