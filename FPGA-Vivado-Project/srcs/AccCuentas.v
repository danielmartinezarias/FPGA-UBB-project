`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:04 05/25/2018 
// Design Name: 
// Module Name:    AccCuentas 
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
module AccCuentas(
//input  wire clk,sclr,En,EnACCCtrl, 
input  wire clk,clk400MHz,sclr,En,EnACCCtrl,
input  wire EXPIO_P_APD0,
input  wire EXPIO_P_APD1,

output reg[31:0]APD0,
output reg[31:0]APD1,

input wire [7:0] dead_time_APD,
input wire [31:0] width_ID220,delay_ID220,
input wire masterSync,
output wire gate_ID220

);
 

reg rsclr=0;	 
wire [1:0]oCs0_ID220;
//wire [1:0]gate_ID220;
//wire enable_counter = 1;

PreProc_Cs_ID220 Pre000 (
    .clk(clk400MHz), 
    .EXPIO_P_APD(EXPIO_P_APD0), 
    .Cs(oCs0_ID220[0]),
    .dead_time_APD(dead_time_APD)
    );

PreProc_Cs_ID220 Pre001 (
    .clk(clk400MHz), 
    .EXPIO_P_APD(EXPIO_P_APD1), //edit DMA, querio probar que el modulo funcione conectando el reloj aqui
    .Cs(oCs0_ID220[1]),
    .dead_time_APD(dead_time_APD)
    );
 
wire[31:0]wAPD0,wAPD1;	 


counter_ADP counter_ADP_0(
   .clk(clk400MHz),//DMA 22-09-24 no estoy seguro si deberia correr a 400 MHz
   .enable(En),
   .signal(oCs0_ID220[0]),
   .sclr(rsclr),
   .counter(wAPD0)
   );
    
counter_ADP counter_ADP_1(
   .clk(clk400MHz),//DMA 22-09-24 no estoy seguro si deberia correr a 400 MHz
   .enable(En),
   .signal(oCs0_ID220[1]),
   .sclr(rsclr),
   .counter(wAPD1)
   );
    
ID220 ID220_0(
   .clk400MHz(clk400MHz),
   .trigger_in_APD(masterSync),
   .width_ID220(width_ID220),
   .delay_ID220(delay_ID220),
   .gate_ID220(gate_ID220)
   );
    
always @(posedge clk) begin
    if(sclr)begin
        rsclr<=1;
        if(EnACCCtrl)begin
            APD0<=wAPD0;
            APD1<=wAPD1;
        end
    end
    else
        rsclr<=0;

end

endmodule
