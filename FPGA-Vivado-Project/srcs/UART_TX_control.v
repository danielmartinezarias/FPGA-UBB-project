`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 12:04:16 AM
// Design Name: 
// Module Name: UART_TX_control
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

module UART_TX_control(
    input wire clk,
    input wire tick, 
    output wire pin_Tx,
    input wire [15:0] Ndata,
    input wire [15:0] data16bits_0,
    input wire [31:0] data32bits_0,data32bits_1,data32bits_2,data32bits_3,data32bits_4,
    input wire startTx_main,
    output reg ReadyTx = 1'b0,
    output reg [13:0] addraRead,
    input wire [15 : 0] douta0,
    input wire [31 : 0] douta1,douta2
    );
    
    reg [7:0] state = 8'd0;
    /////
    wire [7:0] bufferTx;
	wire [15:0] indexMem;
	reg startTx;
	wire readyCode;
	reg [7:0] palabra_ctrl;
	reg [31:0] data32bit;
	reg [15:0] Ndata_reg;
	reg [2:0] bytes;
	reg resetTx = 1'd0;
	reg startCode = 1'd0;
	wire Write_En_Tx;
	wire ControlMemTx;
	wire word_sent;
    
	//convierte numeros de N bits a dos de 8 bits para enviarlos via serial
dcodeNto8 dcodeNto8_1 (
    .clk(clk), 
    .datain(data32bit), 
    .bytes(bytes),
    .startCode(startCode), 
    .reset(resetTx), 
    .indexTx(indexMem), 
    .dataout(bufferTx), 
    .weTx(Write_En_Tx), 
    .ControlMemTx(ControlMemTx), 
    .CodeReady(readyCode)
    );
    
    modulo_Tx modulo_Tx_1(
		.clk(clk),
		.tick(tick),
		.bufferTx(bufferTx),
		.index_write(indexMem),
		.lmax(indexMem),
		.PalabraCtrl(palabra_ctrl),
		.Ndata(Ndata_reg),
		.enable_write(Write_En_Tx),
		.control_write(ControlMemTx),
		.StartTx(startTx),
		.pin_Tx(pin_Tx),
		.word_sent(word_sent)
    );
    
    always@(posedge clk)begin
        case(state)
            0:begin
                resetTx         <= 0;
                ReadyTx         <=0;
                if(startTx_main)begin
                    palabra_ctrl    <= 8'd99;
                    //el numero de datos que envio es Ndata*10 (douta1 douta2 de 32 bit, douta0 de 16 bit total 10 bytes),
                    //mas 5 numeros de 32 bits mas 1 de 16 bit
                    Ndata_reg       <= Ndata*16'd10+16'd5*16'd4 + 16'd1*16'd2;
                    addraRead       <= 14'd0;
                    startCode       <= 1'b1;
                    data32bit       <= {16'd0,data16bits_0};
                    bytes           <= 3'd2;
                    state           <= 1;
                end
            end
            
            1:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {data32bits_0};
                    bytes           <= 3'd4;
                    state           <= 2;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            2:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {data32bits_1};
                    bytes           <= 3'd4;
                    state           <= 3;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            3:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {data32bits_2};
                    bytes           <= 3'd4;
                    state           <= 4;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            4:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {data32bits_3};
                    bytes           <= 3'd4;
                    state           <= 15;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            15:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {data32bits_4};
                    bytes           <= 3'd4;
                    state           <= 11;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            //
            //aqui puedes agregar mas pasos si quieres
            //
            
            11:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {16'd0,douta0};
                    bytes           <= 3'd2;
                    state           <= 12;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            12:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {douta1};
                    bytes           <= 3'd4;
                    state           <= 13;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            13:begin
                if(readyCode)begin
                    startCode       <= 1'b1;
                    data32bit       <= {douta2};
                    bytes           <= 3'd4;
                    state           <= 14;
                end
                else begin
                    startCode     <= 1'b0;
                end
            end
            
            14:begin
                startCode     <= 1'b0;
                if(addraRead<(Ndata-16'd1))begin//leo la memoria hasta que se acabe
                    addraRead       <= addraRead + 14'd1;
                    state           <= 11;
                end
                else begin
                    addraRead       <= 14'd0;
                    state           <= 126;
                end
            end
            
            
            
            
            
            
            
            
            126:begin
                if(readyCode)begin
                    startTx     <= 1'd1;
                    state       <= 127;
                end
                else begin
                    startCode   <= 1'b0;
                end
            end
            
            127:begin
                if(word_sent)begin
                    resetTx     <= 1;
                    ReadyTx     <= 1;
                    state       <= 0;
                end
                else begin
                    startTx     <= 1'd0;
                end
            end

        endcase
    end
    
endmodule



//el siguiente codigo trabaja con palabra de control 16 y envia data16bits_012,data32bits_01
//module UART_TX_control(
//    input clk,
//    input tick, 
//    output pin_Tx,
//    input [15:0] Ndata,
//    input [15:0] data16bits_0,
//    input [15:0] data16bits_1,
//    input [15:0] data16bits_2,
//    input [31:0] data32bits_0,
//    input [31:0] data32bits_1,
//    input startTx_main,
//    output reg ReadyTx = 1'b0,
//    input resetTx_main, 
//    output reg [13:0] addraRead,
//    input [15 : 0] douta0,
//    input [31 : 0] douta1,douta2
//    );
    
    
	
	
    
//    reg [7:0] state = 8'd0;


    
//    /////
//    wire [7:0] bufferTx;
//	wire [15:0] indexMem;
//	reg startTx;
//	wire readyCode;
//	reg [7:0] palabra_ctrl;
//	reg [31:0] data32bit;
//	reg [7:0] Ndata_reg;
//	reg [2:0] bytes;
//	reg resetTx = 1'd0;
//	reg startCode = 1'd0;
    



//	//convierte numeros de N bits a dos de 8 bits para enviarlos via serial
//dcodeNto8 dcodeNto8_1 (
//    .clk(clk), 
//    .datain(data32bit), 
//    .bytes(bytes),
//    .startCode(startCode), 
//    .reset(resetTx), 
//    .indexTx(indexMem), 
//    .dataout(bufferTx), 
//    .weTx(Write_En_Tx), 
//    .ControlMemTx(ControlMemTx), 
//    .CodeReady(readyCode)
//    );
    
//    modulo_Tx modulo_Tx_1(
//		.clk(clk),
//		.tick(tick),
//		.bufferTx(bufferTx),
//		.index_write(indexMem),
//		.lmax(indexMem),
//		.PalabraCtrl(palabra_ctrl),
//		.Ndata(Ndata_reg),
//		.enable_write(Write_En_Tx),
//		.control_write(ControlMemTx),
//		.StartTx(startTx),
//		.pin_Tx(pin_Tx),
//		.word_sent(word_sent)
//    );
    
//    always@(posedge clk)begin
//        case(state)
//            0:begin
//                resetTx         <= 0;
//                ReadyTx         <=0;
//                if(startTx_main)begin
//                    palabra_ctrl    <= 8'd16;
//                    Ndata_reg       <= Ndata;
//                    startCode       <= 1'b1;
//                    data32bit       <= {16'd0,data16bits_0};
//                    bytes           <= 3'd2;
//                    state           <= 1;
//                end
//            end
            
//            1:begin
//                if(readyCode)begin
//                    startCode       <= 1'b1;
//                    data32bit       <= {16'd0,data16bits_1};
//                    bytes           <= 3'd2;
//                    state           <= 2;
//                end
//                else begin
//                    startCode     <= 1'b0;
//                end
//            end
            
//            2:begin
//                if(readyCode)begin
//                    startCode       <= 1'b1;
//                    data32bit       <= {16'd0,data16bits_2};
//                    bytes           <= 3'd2;
//                    state           <= 3;
//                end
//                else begin
//                    startCode     <= 1'b0;
//                end
//            end
            
//            3:begin
//                if(readyCode)begin
//                    startCode       <= 1'b1;
//                    data32bit       <= data32bits_0;
//                    bytes           <= 3'd4;
//                    state           <= 4;
//                end
//                else begin
//                    startCode     <= 1'b0;
//                end
//            end
            
//            4:begin
//                if(readyCode)begin
//                    startCode       <= 1'b1;
//                    data32bit       <= data32bits_1;
//                    bytes           <= 3'd4;
//                    state           <= 126;//ahora si enviar la data 
//                end
//                else begin
//                    startCode     <= 1'b0;
//                end
//            end
            
            
            
//            126:begin
//                if(readyCode)begin
//                    startTx     <= 1'd1;
//                    state       <= 127;
//                end
//                else begin
//                    startCode   <= 1'b0;
//                end
//            end
            
//            127:begin
//                if(word_sent)begin
//                    resetTx     <= 1;
//                    ReadyTx     <= 1;
//                    state       <= 0;
//                end
//                else begin
//                    startTx     <= 1'd0;
//                end
//            end

//        endcase
//    end
    
//endmodule
