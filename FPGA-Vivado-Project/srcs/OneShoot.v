`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 11:10:22
// Design Name: 
// Module Name: OneShoot
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OneShoot(
	input wire clk,
	// input signal
	input wire signal, 
	output reg trigger = 0
    );
	 
	 reg [1:0] monitor = 0;

	always @(posedge clk) begin

		monitor [1:0] <= {monitor[0],signal};
		if (monitor [1:0] == 2'b01)
			trigger 	  <= 1'b1;
		else
			trigger 	  <= 1'b0;
		
	end
	 
	 


endmodule
