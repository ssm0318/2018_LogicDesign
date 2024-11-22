`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:31:22 06/19/2017 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [7:0] address,
    input [7:0] WriteD,
	 input MemRead,
	 input MemWrite,
	 input clk,
	 input Reset,
    output [7:0] ReadD
    );
	 
	 reg[7:0] MemByte[31:0];
	 
	 reg[7:0] ReadD_out;
	 assign ReadD = ReadD_out;
	 
	 always@(MemRead)	begin
		if(MemRead)	begin
			ReadD_out = MemByte[address];
		end
	 end
	 always@(posedge clk or posedge Reset)	begin
		if(Reset)	begin
			MemByte[31] = 8'sb11110001;
			MemByte[30] = 8'sb11110010;
			MemByte[29] = 8'sb11110011;
			MemByte[28] = 8'sb11110100;
			
			MemByte[27] = 8'sb11110101;
			MemByte[26] = 8'sb11110110;
			MemByte[25] = 8'sb11110111;
			MemByte[24] = 8'sb11111000;
			
			MemByte[23] = 8'sb11111001;
			MemByte[22] = 8'sb11111010;
			MemByte[21] = 8'sb11111011;
			MemByte[20] = 8'sb11111100;
			
			MemByte[19] = 8'sb11111101;
			MemByte[18] = 8'sb11111110;
			MemByte[17] = 8'sb11111111;
			MemByte[16] = 8'sb00000000;
			
			MemByte[1] = 8'sb00000001;
			MemByte[2] = 8'sb00000010;
			MemByte[3] = 8'sb00000011;
			MemByte[4] = 8'sb00000100;
			
			MemByte[5] = 8'sb00000101;
			MemByte[6] = 8'sb00000110;
			MemByte[7] = 8'sb00000111;
			MemByte[8] = 8'sb00001000;
			
			MemByte[9] = 8'sb00001001;
			MemByte[10] = 8'sb00001010;
			MemByte[11] = 8'sb00001011;
			MemByte[12] = 8'sb00001100;
			
			MemByte[13] = 8'sb00001101;
			MemByte[14] = 8'sb00001110;
			MemByte[15] = 8'sb00001111;
			MemByte[0] = 8'sb00000000;
		end
		else begin
			if(MemWrite)	begin
				MemByte[address] = WriteD;
			end
		end
	 end
endmodule
