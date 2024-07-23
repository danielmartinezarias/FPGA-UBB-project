`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:41 09/14/2016 
// Design Name: 
// Module Name:    dcode32to8 
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
module dcode32to8(
input wire clk,
input wire [31:0] datain,
input wire startCode,reset,

output reg [9:0]indexTx=0,
output reg [7:0]dataout=0,
output reg weTx=0,
output reg ControlMemTx=0,
output reg CodeRady=0
     );

reg[2:0] controlCode=0;
reg[31:0] dataInterna=0;

always @(posedge  clk) begin

	case(controlCode)

		0:begin

			if(reset)indexTx<=10'd0;
			
			if(startCode) begin
				
				dataInterna<=datain;
				ControlMemTx<=1;
				controlCode<=1; 
			end
		end

		1:begin
		dataout<=dataInterna[31:24];
		weTx<=1;
			controlCode<=2;
		end

		2:begin
		dataout<=dataInterna[23:16];
		indexTx<=indexTx+10'd1;
			controlCode<=3;
		end

		3:begin
		dataout<=dataInterna[15:8];
		indexTx<=indexTx+10'd1;
			controlCode<=4;
		end

		4:begin
		dataout<=dataInterna[7:0];
		indexTx<=indexTx+10'd1;
			controlCode<=5;
		end


		5:begin
		indexTx<=indexTx+10'd1;
		weTx<=0; 
		ControlMemTx<=0;
		CodeRady<=1;
		controlCode<=6;
		end

		6:begin
		CodeRady<=0;
		controlCode<=0;
		end

	endcase

end


endmodule
