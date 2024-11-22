`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:39 06/20/2017 
// Design Name: 
// Module Name:    part1_test 
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
module part1_test(
    input clk,
	 input reset,
    output [7:0] display
    );
	 
	 wire [7:0] Instruction;
	 wire BranchC;
	 wire MemtoRegC;
	 wire MemReadC;
	 wire MemWriteC;
	 wire ALUOpC;
	 wire ALUSrcC;
	 wire RegWriteC;
	 wire RegDstC;
	 wire [7:0] nextPCI;
	 wire [7:0] nextPCO;
	 wire [7:0] pc_plus_one;
	 wire [7:0] sign_extended;
	 wire [7:0] pc_calculated;
	 wire [1:0] Ins0, Ins1, Ins2, Ins3;
	 assign Ins0 = Instruction[7:6];
	 assign Ins1 = Instruction[5:4];
	 assign Ins2 = Instruction[3:2];
	 assign Ins3 = Instruction[1:0];
	 
	 assign display = Instruction; 
	 
	 pc PC(.NextI(nextPCI), .clk(clk), .Reset(reset),.NextO(nextPCO));
	 
	 IMEM IM(.Read_Address(nextPCO), .Instruction(Instruction));
	 
	 control C1(
	 .I(Ins0),
	 .Branch(BranchC),
	 .MemtoReg(MemtoRegC),
	 .MemRead(MemReadC),
	 .MemWrite(MemWriteC),
	 .ALUOp(ALUOpC),
	 .ALUSRc(ALUSrcC),
	 .RegWrite(RegWriteC),
	 .RegDst(RegDstC)
	 );
	 
	 adder A1(.A(nextPCO), .B(8'b0000_0001), .Sum(pc_plus_one));
	 adder A2(.A(pc_plus_one), .B(sign_extended), .Sum(pc_calculated));
	 
	 mux1 M1(.A(pc_plus_one), .B(pc_calculated), .Sel(BranchC), .Result(nextPCI));
	 
	 sign_extend SE1(.Imm(Ins3), .Output(sign_extended));


endmodule
