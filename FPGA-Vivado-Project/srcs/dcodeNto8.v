`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2023 04:22:59 PM
// Design Name: 
// Module Name: dcodeNto8
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


module dcodeNto8(
    input wire clk,
    input wire [31:0] datain,
    input wire [2:0] bytes,
    input wire startCode,reset,
    output reg [15:0]indexTx=0,
    output reg [7:0]dataout=0,
    output reg weTx=0,
    output reg ControlMemTx=0,
    output reg CodeReady=0
     );

reg[2:0] controlCode=0;
reg[31:0] dataInterna=0;

always @(posedge  clk) begin

	case(controlCode)

		0:begin
			if(reset)
			 indexTx         <=16'd0;
			else begin
                if(startCode) begin
                    dataInterna     <=datain;
                    ControlMemTx    <=1;
                    controlCode     <=1;
                end
                else begin
                    CodeReady   <=0;
                end
			end
		end

		1:begin
		    weTx        <=1;
		    case(bytes)
                4:begin
                  dataout     <=dataInterna[31:24];
                  controlCode <=2;
                end
                3:begin
                  dataout     <=dataInterna[23:16];
                  controlCode <=3;
                end
                2:begin
                  dataout     <=dataInterna[15:8];
                  controlCode <=4;
                end
                1:begin
                  dataout     <=dataInterna[7:0];
                  controlCode <=5;
                end
		    endcase
		end

		2:begin
            dataout     <=dataInterna[23:16];
            indexTx     <=indexTx+16'd1;
            controlCode <=3;
		end

		3:begin
            dataout     <=dataInterna[15:8];
            indexTx     <=indexTx+16'd1;
            controlCode <=4;
		end

		4:begin
            dataout     <=dataInterna[7:0];
            indexTx     <=indexTx+16'd1;
            controlCode <=5;
		end


		5:begin
            indexTx     <=indexTx+16'd1;
            weTx        <=0; 
            ControlMemTx<=0;
            CodeReady   <=1;
            controlCode <=0;
		end


	endcase

end


endmodule
