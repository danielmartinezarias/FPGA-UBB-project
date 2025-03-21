`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2025 11:31:51 AM
// Design Name: 
// Module Name: control_phase
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


module control_phase(
    input wire clk100MHz,
    input wire clk_slow,
    input wire reset,  // Nuevo reset
    input wire [15:0] N,
    input wire start,
    input wire psdone,
    output reg psen = 1'd0
    );
    
    
    reg [6:0] delay=7'd0;
    reg control = 1'd0;
    reg start_slow = 1'd0;
    reg [1:0] control2 = 2'd0;
    reg [15:0] counterN = 16'd0;
    
    
    always@(posedge clk100MHz)begin
        
        case(control)
            0:begin
                if(start)begin
                    delay           <= 7'd1;
                    control         <= 1'd1;
                    start_slow      <= 1'd1;
                end
            end
            
            1:begin
                if(delay<7'd10)begin
                    delay   <= delay + 7'd1;
                end
                else begin
                    start_slow      <= 1'd0;
                    delay           <= 7'd0;
                    control         <= 1'd0;
                end
            end
        endcase
        
    end
    
always @(posedge clk_slow) begin
    case (control2)
        0: begin
            if (start_slow) begin
                control2 <= 2'd1;
                counterN <= 16'd0;
            end
        end
        
        1: begin
            if (counterN < N) begin
                counterN <= counterN + 16'd1;
                psen     <= 1'd1;  
                control2 <= 2'd2;
            end
            else begin
                counterN <= 16'd0;
                control2 <= 2'd0;
            end
        end
        
        2: begin
            psen     <= 1'd0; 
            if (psdone) begin
                control2 <= 2'd1;
            end
        end
    endcase
end

endmodule
