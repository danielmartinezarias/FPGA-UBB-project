`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 01:33:53 PM
// Design Name: 
// Module Name: pmodDA2
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


module pmodDA2(
    input wire clk, enable, 
    input wire [11:0] data_in_A, data_in_B,
    output reg CS = 1'b1,DIN_A = 1'b0, DIN_B = 1'b0
    );
    
    reg [1:0] control = 2'd0;
    reg [3:0] count = 4'd0;
    
    always @(posedge clk) begin
    
        case (control)
         
            0:begin
                if(enable)begin //comenzamos
                    CS          <= 1'b0;
                    DIN_A       <= 1'b0;
                    DIN_B       <= 1'b0;
                    count       <= 4'd0;
                    control     <= 2'd1;
                end
            end
            
            1:begin
                if(count < 4'd2)begin //durante 4(uno anterior,2aqui y uno en el siguiente) pulsos DIN = 0
                    count       <= count + 4'd1;
                end 
                else begin
                    control     <= 2'd2;
                    count       <= 4'd0;
                end
            end
            
            2:begin
                if(count < 4'd12)begin
                    DIN_A       <= data_in_A[4'd11-count];
                    DIN_B       <= data_in_B[4'd11-count];
                    count       <= count + 4'd1;
                end
                else begin
                    count       <= 4'd0;
                    DIN_A       <= 1'b0;
                    DIN_B       <= 1'b0;
                    CS          <= 1'b1;
                    control     <= 2'd0;
                end
            end
            
        endcase
    end
endmodule
