`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:29 05/25/2018 
// Design Name: 
// Module Name:    PreProc_Cs 
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
module PreProc_Cs(
input wire clk,
input  wire EXPIO_P_APD,
output  wire Cs,
input wire [7:0] dead_time_APD
);
SimpleOneShot o1  (
    .clock(clk), 
    .in(EXPIO_P_APD), 
    .out(Cs),
    .dead_time_APD(dead_time_APD)
    );
endmodule
