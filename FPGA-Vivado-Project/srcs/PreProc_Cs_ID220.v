`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 11:52:06 AM
// Design Name: 
// Module Name: PreProc_Cs_ID220
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


module PreProc_Cs_ID220(
input clk,
input  EXPIO_P_APD,
output  Cs,
input [7:0] dead_time_APD
);
SimpleOneShot_ID220 o1  (
    .clock(clk), 
    .in(EXPIO_P_APD), 
    .out(Cs),
    .dead_time_APD(dead_time_APD)
    );
endmodule
