`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:09:53 06/20/2017 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(
    input clkin,
    input clr,
    output reg clkout
    );
	 
	 reg [31:0] cnt;
	 always @(posedge clkin) begin
		if(clr) begin
			cnt <= 32'd0;
			clkout <= 1'b0;
		end
		else if(cnt == 32'd25000000) begin //25000000
			cnt <= 32'd0;
			clkout <= ~clkout;
		end
		else begin
			cnt <= cnt + 1;
		end
	 end
endmodule
