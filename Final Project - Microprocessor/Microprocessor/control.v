`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:37 06/19/2017 
// Design Name: 
// Module Name:    control 
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
module control(
    input [1:0] I,
   // input clk,
	 
	 output RegDst,
    output RegWrite,
    output ALUSRc,
    output Branch,
    output MemRead,
    output MemWrite,
    output MemtoReg,
    output ALUOp
    );
 
    reg TRegDst;
	 reg TRegWrite;
    reg TALUSRc;
    reg TBranch;
    reg TMemRead;
    reg TMemWrite;
    reg TMemtoReg;
    reg TALUOp;
	 
    assign RegDst = TRegDst;
	 assign RegWrite = TRegWrite;
	 assign ALUSRc = TALUSRc;
	 assign Branch = TBranch;
	 assign MemRead = TMemRead;
	 assign MemWrite = TMemWrite;
	 assign MemtoReg = TMemtoReg;
	 assign ALUOp = TALUOp;

    always@(*)
	   begin
		  case(I)
		    2'b00: begin
					TRegDst <= 1'b1;
					TRegWrite <= 1'b1;
					TALUSRc <= 1'b0;
					TBranch <= 1'b0;
					TMemRead <= 1'b0;
					TMemWrite <= 1'b0;
					TMemtoReg <= 1'b0;
					TALUOp <=  1'b1;
					end
				2'b01: begin
					TRegDst <= 1'b0;
					TRegWrite <= 1'b1;
					TALUSRc <= 1'b1;
					TBranch <= 1'b0;
					TMemRead <= 1'b1;
					TMemWrite <= 1'b0;
					TMemtoReg <= 1'b1;
					TALUOp <=  1'b0;
					end
				2'b10: begin 
					TRegDst <= 1'b1; // Don't care
					TRegWrite <= 1'b0;
					TALUSRc <= 1'b1;
					TBranch <= 1'b0;
					TMemRead <= 1'b0;
					TMemWrite <= 1'b1;
					TMemtoReg <= 1'b0; // Don't care
					TALUOp <= 1'b0;
					end
				2'b11: begin
					TRegDst <= 1'b1; // Don't care
					TRegWrite <= 1'b0;
					TALUSRc <= 1'b0;
					TBranch <= 1'b1;
					TMemRead <= 1'b0;
					TMemWrite <= 1'b0;
					TMemtoReg <= 1'b0; // Don't care
					TALUOp <= 1'b0;
					end
			endcase
		end
endmodule
