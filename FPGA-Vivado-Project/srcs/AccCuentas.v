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
input  wire clk,clk400MHz,sclr,EnACCCtrl,
input  wire EXPIO_P_APD0,
input  wire EXPIO_P_APD1,

output reg[31:0]APD0,
output reg[31:0]APD1,

input wire [7:0] dead_time_APD,
input wire [31:0] width_ID220,delay_ID220,
output wire gate_ID220
// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// Se�ales de entradas:
// clk se�al de reloj, sclr se�al de borrado, En se�al de habilitacion (si est� activada permite el conteo), EnACCCtrl control para
// acumular cuentas, EXPIO_P_APD0 y EXPIO_P_APD1 se�ales de entrada para los fotodetectores
// dead_time_APD tiempo muerto del detector (evito cuentas)
// Se�ales de Salidas:
// APD0 - APD1: Salidas de 32 bits para almacenar las cuentas de EXPIO_P_APD0 y AXPIO_P_APD1
//--------------------------------------------------------------------------------------------------------------------------------------
);
 

reg rsclr=0;	 
// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// rsclr: Registro para reiniciar el contador, lo iniciamos en 0
// oCs0: Bus de 7 biys que almacena los modulos
//--------------------------------------------------------------------------------------------------------------------------------------
wire [1:0]oCs0_ID220;
wire [1:0]gate_ID220;


// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// Instancias para procesar las se�ales de entrada EXPIO_P_APD0 y EXPIO_P_APD1
// Pre000 y Pre001: toman la se�al de reloj (clk), la se�al de entrada (EXPIO_P_APDX)
// y el tiempo de muerto (dead_time_APD)
// Con esto generamos una salida (Cs) que indica que si una cuenta debe ser registrada
//--------------------------------------------------------------------------------------------------------------------------------------
    
PreProc_Cs_ID220 Pre000 (
    .clk(clk400MHz), 
    .EXPIO_P_APD(EXPIO_P_APD0), 
    .Cs(oCs0_ID220[0]),
    .dead_time_APD(dead_time_APD)
    );

PreProc_Cs_ID220 Pre001 (
    .clk(clk400MHz), 
    .EXPIO_P_APD(EXPIO_P_APD1), 
    .Cs(oCs0_ID220[1]),
    .dead_time_APD(dead_time_APD)
    );

wire[1:0]oCs;
assign oCs=oCs0_ID220;
// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// oCs: Bus que toma el valor de oCs0
//--------------------------------------------------------------------------------------------------------------------------------------

	 
wire[31:0]wAPD0,wAPD1;	 



counter_ADP counter_ADP_0(
   .clk(clk400MHz),//DMA 22-09-24 no estoy seguro si deberia correr a 400 MHz
   .enable(gate_ID220),
   .signal(oCs[0]),
   .sclr(rsclr),
   .counter(wAPD0)
   );
    
counter_ADP counter_ADP_1(
   .clk(clk400MHz),//DMA 22-09-24 no estoy seguro si deberia correr a 400 MHz
   .enable(gate_ID220),
   .signal(oCs[1]),
   .sclr(rsclr),
   .counter(wAPD1)
   );

// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// Creamos dos instancias del Modulo counter_APD
// - counter_APD_0 y counter_APD_1 toman como entrada al reloj clk, la sea�l de habilitacion
// (en), la sea�al de conteo (oCs[0]) para counter_APD_0  y oCs[1] pra counter APD_1
// con la se�al de reincio (rsclr)
// - La salida counter (wAPD0 y wAPD1) es el valor actual del contador para cada entrada
//--------------------------------------------------------------------------------------------------------------------------------------


    

    
ID220 ID220_0(
   .clk400MHz(clk400MHz),
   .trigger_in_APD(trigger_in_APD),
   .width_ID220({width_ID220[31:4],4'd0}),
   .delay_ID220({delay_ID220[31:4],4'd0}),
   .gate_ID220(gate_ID220)
   );
    


always @(posedge clk) begin
    if (sclr) begin
        rsclr <= 1;
        // Resetear las cuentas si sclr est� activa
        APD0 <= 0;
        APD1 <= 0;
    end else begin
        rsclr <= 0;
        // Acumular cuentas en los registros APD0 y APD1
        APD0 <= wAPD0;
        APD1 <= wAPD1;
    end

end
    
endmodule
// -------------------Comentarios-------------------------------------------------------------------------------------------------------
// Este modulo toma el flanco de subida de� relok
// - Si rsclr esta acitvo, se estableve en 1 para reiniciar los contadores
// - Si EnACCCtrl esta activa las cuentas de wAPD0 y wAPD1 se transfieren a los registros de ADP0 y APD1
// - Si sclr no esta activo, rsclr se coloca en 0, asi los contadores operan de forma normal
// 
//--------------------------------------------------------------------------------------------------------------------------------------