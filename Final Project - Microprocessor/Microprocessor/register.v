`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:53 06/19/2017 
// Design Name: 
// Module Name:    register 
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
module register(
    input clk,
	 input Reset,
    input RegWrite,
    input [1:0] Read1,
    input [1:0] Read2,
    input [1:0] WriteR,
    input [7:0] WriteD,
    output [7:0] ReadD1,
    output [7:0] ReadD2
    );
	 
	 reg[7:0] register_0;
	 reg[7:0] register_1;
	 reg[7:0] register_2;
	 reg[7:0] register_3;
	 
	 reg[7:0] ReadD1_out, ReadD2_out;
	 assign ReadD1 = ReadD1_out;
	 assign ReadD2 = ReadD2_out;
	 
	 //read 
	 always@(*) begin
		 case (Read1)
			2'b00: begin
				ReadD1_out = register_0;
				end
			2'b01: begin
				ReadD1_out = register_1;
				end
			2'b10: begin
				ReadD1_out = register_2;
				end
			2'b11: begin
				ReadD1_out = register_3;
				end
		 endcase
		 
		 case (Read2)
			2'b00: begin
				ReadD2_out = register_0;
				end
			2'b01: begin
				ReadD2_out = register_1;
				end
			2'b10: begin
				ReadD2_out = register_2;
				end
			2'b11: begin
				ReadD2_out = register_3;
				end
		 endcase
	 end
	 always@(posedge clk or posedge Reset) begin
		if(Reset)	begin
			register_0 <= 0;
			register_1 <= 0;
			register_2 <= 0;
			register_3 <= 0;
		end
		else if(RegWrite)	begin
			case (WriteR)
				2'b00:	begin
					register_0 <= WriteD;
					end
				2'b01:	begin
					register_1 <= WriteD;
					end
				2'b10:	begin
					register_2 <= WriteD;
					end
				2'b11:	begin
					register_3 <= WriteD;
					end
			endcase
		end
	end
	

endmodule
