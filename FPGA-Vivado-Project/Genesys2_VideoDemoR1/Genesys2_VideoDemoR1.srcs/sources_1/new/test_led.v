`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 12:32:25
// Design Name: 
// Module Name: test_led
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


module test_led(
    input clk,
    output reg led_prueba = 1'd0
    );
    
    reg [31:0] counter = 32'd0;
    
    always @ (posedge clk) begin
        if(counter < 32'd100000000)begin
            counter     <= counter +32'd1;
        end
        else
        begin
            counter     <= 32'd0;
            led_prueba     <= ~led_prueba;
        end
    end
endmodule
