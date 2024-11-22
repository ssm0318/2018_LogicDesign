`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:56:27 06/20/2017 
// Design Name: 
// Module Name:    Test 
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
module Test(
    input clk,
	 input Reset,
	 //output [7:0] RawOutput, //<<
	 output [6:0] Tens,
	 output [6:0] Ones,
	 output LED,
	 output [6:0] AddressTens,
	 output [6:0] AddressOnes,
	 output [6:0] InstTens,
	 output [6:0] InstOnes
    );
	 
	 wire [7:0] Instruction, ReadAddress;
	 
	 
	 Top Top1(
	 .clk(clk),
	 .Reset(Reset),
    .Instruction(Instruction),
    .ReadAddress(ReadAddress),
	 .Tens(Tens),
	 .Ones(Ones),
	 //.RawOutput(RawOutput), //<<<
	 .AddressTens(AddressTens),
	 .AddressOnes(AddressOnes),
	 .InstTens(InstTens),
	 .InstOnes(InstOnes),
	 .LED(LED)
	 //.RawOutput(RawOutput)
	 );
	 IMEM IM1(
	 .Read_Address(ReadAddress),
    .Instruction(Instruction)
	 );


endmodule
