`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2021 04:08:11 PM
// Design Name: 
// Module Name: counter_ADP
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


module counter_ADP(
    input wire clk,
    input wire enable,
    input wire signal,
    input wire sclr,
    output reg [31:0] counter = 32'd0
    );
    
    
    always@(posedge clk)begin
        if(sclr)begin
            counter     <= 32'd0;
        end
        else begin
                    if(enable && signal)begin
                        counter     <= counter + 32'd1;
                    end
        end
    end
    
    
endmodule
