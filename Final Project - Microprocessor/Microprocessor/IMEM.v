`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:49:32 06/19/2017 
// Design Name: 
// Module Name:    IMEM 
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
module IMEM(
    input [7:0] Read_Address,
    output [7:0] Instruction
    );
	 
	 wire [7:0] MemByte[5:0];
	 
	 assign MemByte[0] = { 2'b01, 2'b00, 2'b01, 2'b00};
	 
	 assign MemByte[1] = { 2'b01, 2'b00, 2'b10, 2'b01};
	 
	 assign MemByte[2] = { 2'b00, 2'b01, 2'b10, 2'b00};
	 
	 assign MemByte[3] = { 2'b10, 2'b00, 2'b10, 2'b01};
	 
	 assign MemByte[4] = { 2'b11, 4'b0000, 2'b11};
	 
	 assign Instruction = MemByte[Read_Address];
	

endmodule
