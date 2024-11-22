`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:28 06/19/2017 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input [7:0] A,
    input [7:0] B,
    input Sel,
    output [7:0] Result
    );
	 
	 reg temp;
	 assign Result = temp;
	 
	 always@(*) 
	   begin
	   if(Sel == 0)
		  temp <= A;
		else
		  temp <= B;
	 end
endmodule
