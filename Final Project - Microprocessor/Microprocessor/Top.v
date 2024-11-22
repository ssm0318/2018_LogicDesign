`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:11:30 06/20/2017 
// Design Name: 
// Module Name:    Top 
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
module Top(
    input clk,
	 input Reset,
    input [7:0] Instruction,
    output [7:0] ReadAddress,
	 //output [7:0] RawOutput, //<<
	 output [6:0] Tens,
	 output [6:0] Ones,
	 
	 //for debugging
	 output [6:0] AddressTens,
	 output [6:0] AddressOnes,
	 output [6:0] InstTens,
	 output [6:0] InstOnes,
	 output LED
    );
	 
	 wire [7:0] Display;
	 wire clk_t;
	 wire [7:0] nextPCI;
	 wire [7:0] nextPCO;
	 wire [7:0] pc_plus_one;
	 wire [7:0] sign_extended;
	 wire [7:0] pc_calculated;
	 wire BranchC;
	 wire MemtoRegC;
	 wire MemReadC;
	 wire MemWriteC;
	 wire ALUOpC;
	 wire ALUSrcC;
	 wire RegWriteC;
	 wire RegDstC;
	 wire [1:0] Ins0, Ins1, Ins2, Ins3;
	 wire [1:0] WriteR;
	 wire [7:0] WriteD, ReadD1, ReadD2, ReadD_calculated, Sum, ReadD;
	 reg LED_temp = 0;
	 
	 assign LED = LED_temp;
	 
	 assign Ins0 = Instruction[7:6];
	 assign Ins1 = Instruction[5:4];
	 assign Ins2 = Instruction[3:2];
	 assign Ins3 = Instruction[1:0];
	 
	 assign ReadAddress = nextPCO;
	 assign Display = WriteD;
	 
	 always@(posedge clk_t) begin
		LED_temp = ~LED_temp;
	 end
	 //assign RawOutput = WriteD; // << todo: delete it
	 clkdiv CLKD(.clkin(clk), .clr(Reset), .clkout(clk_t));
	 //assign clk_t = clk; // << todo: delete it
	 pc PC(.NextI(nextPCI), .clk(clk_t), .Reset(Reset),.NextO(nextPCO));
	 
	 adder A1(.A(nextPCO), .B(8'b0000_0001), .Sum(pc_plus_one));
	 adder A2(.A(pc_plus_one), .B(sign_extended), .Sum(pc_calculated));
	 mux1 M1(.A(pc_plus_one), .B(pc_calculated), .Sel(BranchC), .Result(nextPCI));
	 
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
	 
	 mux2 M2(.A(Ins2), .B(Ins3), .Sel(RegDstC), .Result(WriteR));
	 
	 sign_extend SE1(.Imm(Ins3), .Output(sign_extended));
	 
	 register R1(
	 .clk(clk_t),
	 .Reset(Reset),
    .RegWrite(RegWriteC),
    .Read1(Ins1),
    .Read2(Ins2),
    .WriteR(WriteR),
    .WriteD(WriteD),
    .ReadD1(ReadD1),
    .ReadD2(ReadD2)
	 );
	 
	 mux1 M3(.A(ReadD2), .B(sign_extended), .Sel(ALUSrcC), .Result(ReadD_calculated));
	 
	 adder A3(.A(ReadD1), .B(ReadD_calculated), .Sum(Sum));
	 
	 DM DM1(
	 .address(Sum),
    .WriteD(ReadD2),
	 .MemRead(MemReadC),
	 .MemWrite(MemWriteC),
	 .clk(clk_t),
	 .Reset(Reset),
    .ReadD(ReadD)
	 );
	 
	 mux1 M4(.A(Sum), .B(ReadD), .Sel(MemtoRegC), .Result(WriteD));
	 
	 
	 seven_hex SEG1(
	 .I(Display),
    
	 .A_a(Tens[6]),
    .B_a(Tens[5]),
    .C_a(Tens[4]),
    .D_a(Tens[3]),
    .E_a(Tens[2]),
    .F_a(Tens[1]),
    .G_a(Tens[0]),

    .A_b(Ones[6]),
    .B_b(Ones[5]),
    .C_b(Ones[4]),
    .D_b(Ones[3]),
    .E_b(Ones[2]),
    .F_b(Ones[1]),
    .G_b(Ones[0])
	 );
	 
	 
	 seven_hex SEG2(
	 .I(Instruction),
    
	 .A_a(InstTens[6]),
    .B_a(InstTens[5]),
    .C_a(InstTens[4]),
    .D_a(InstTens[3]),
    .E_a(InstTens[2]),
    .F_a(InstTens[1]),
    .G_a(InstTens[0]),

    .A_b(InstOnes[6]),
    .B_b(InstOnes[5]),
    .C_b(InstOnes[4]),
    .D_b(InstOnes[3]),
    .E_b(InstOnes[2]),
    .F_b(InstOnes[1]),
    .G_b(InstOnes[0])
	 );
	 
	 seven_hex SEG3(
	 .I(nextPCO),
    
	 .A_a(AddressTens[6]),
    .B_a(AddressTens[5]),
    .C_a(AddressTens[4]),
    .D_a(AddressTens[3]),
    .E_a(AddressTens[2]),
    .F_a(AddressTens[1]),
    .G_a(AddressTens[0]),

    .A_b(AddressOnes[6]),
    .B_b(AddressOnes[5]),
    .C_b(AddressOnes[4]),
    .D_b(AddressOnes[3]),
    .E_b(AddressOnes[2]),
    .F_b(AddressOnes[1]),
    .G_b(AddressOnes[0])
	 );
	 
	 
	 
endmodule
