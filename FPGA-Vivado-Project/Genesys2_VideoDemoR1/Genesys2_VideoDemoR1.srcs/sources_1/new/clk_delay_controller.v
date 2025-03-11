`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 09:02:58
// Design Name: 
// Module Name: clk_delay_controller
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


module clk_delay_controller(
    input wire clk533,       
    input wire reset,        
    input wire psclk,        
    input wire psen,         
    input wire psincdec,     
    output wire clk_out,     
    output wire locked,      
    output wire psdone       
);

    
    clk_wiz_0 clk_wizard_inst (
        .clk_in1(clk533),
        .reset(reset),
        .psclk(psclk),
        .psen(psen),
        .psincdec(psincdec),
        .clk_out3(clk_out),
        .locked(locked),
        .psdone(psdone)
    );
endmodule
