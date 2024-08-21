`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2024 12:18:17
// Design Name: 
// Module Name: tb_control_parametros
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


module tb_control_parametros(
reg clk;
reg ReadyRx;
reg [7:0] bufferRx;
wire [7:0] estadoRx;
wire ready_Tx_PC;
wire buttonStartTx;
wire [31:0] freq_sync;
wire [31:0] delay_pulse;
wire [31:0] width_pulse;
wire [31:0] delay_det;
wire [31:0] width_det;
wire [63:0] pixelColor;
wire image_load;
wire [7:0] image_address;
wire new_pixClr;
wire [31:0] ireg_read;
wire [31:0] ireg_write;
wire reset_DDR3;
wire enable_dac;
wire [11:0] data_in_A_dac, data_in_B_dac;
wire [7:0] dead_time_APD;
wire [7:0] controlDM;
wire [15:0] dataPoints;
wire pulse_control, CW, AliceBob;

// Instancia del módulo a probar
control_parametros uut (
    .clk(clk),
    .ReadyRx(ReadyRx),
    .bufferRx(bufferRx),
    .estadoRx(estadoRx),
    .ready_Tx_PC(ready_Tx_PC),
    .buttonStartTx(buttonStartTx),
    .freq_sync(freq_sync),
    .delay_pulse(delay_pulse),
    .width_pulse(width_pulse),
    .delay_det(delay_det),
    .width_det(width_det),
    .pixelColor(pixelColor),
    .image_load(image_load),
    .image_address(image_address),
    .new_pixClr(new_pixClr),
    .ireg_read(ireg_read),
    .ireg_write(ireg_write),
    .reset_DDR3(reset_DDR3),
    .enable_dac(enable_dac),
    .data_in_A_dac(data_in_A_dac),
    .data_in_B_dac(data_in_B_dac),
    .dead_time_APD(dead_time_APD),
    .controlDM(controlDM),
    .dataPoints(dataPoints),
    .pulse_control(pulse_control),
    .CW(CW),
    .AliceBob(AliceBob)
);

// Inicialización
initial begin
    clk = 0;
    ReadyRx = 0;
    bufferRx = 8'd0;
    #10 ReadyRx = 1; bufferRx = 8'd1;
    #10 ReadyRx = 0;
    // Continúa con más estímulos según los casos de prueba necesarios
end

// Generación de reloj
always #5 clk = ~clk;

    );
endmodule
