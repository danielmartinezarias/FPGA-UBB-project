`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2021 10:28:45 AM
// Design Name: 
// Module Name: ID220
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


module ID220(
    input wire clk400MHz, // el original es input clk400MHz, creo que hace falta agregar un wire al igual para trigger y width (edit: CMD)
    input wire trigger_in_APD,
    input wire [31:0] width_ID220,delay_ID220,
    output reg gate_ID220 = 1'b0
    );
    
    reg [31:0] width_reg = 32'd0;
    reg [31:0] delay_reg = 32'd0;
    reg [31:0] count = 32'd0;
    reg [31:0] count_width = 32'd0;
    wire os_trigger_in_APD;               // Definimos como wire os_trigger ya que no estba definido (edit: CMD)
    reg [1:0]state = 0; 
    
    OneShoot o1 (
    .clk(clk400MHz), 
    .signal(trigger_in_APD), 
    .trigger(os_trigger_in_APD) // os trigger in apd no está definida la agregaré más arriba (edit: CMD)
    );
    
    always@(posedge clk400MHz)begin
        case(state)
            
            0:begin
                if(os_trigger_in_APD)begin
                    width_reg       <= width_ID220;
                    delay_reg       <= delay_ID220;
                    count           <= 32'd0;
                    state           <= 1;
                end
            end
        
            1:begin
                if(count<delay_reg)begin
                    count   <= count + 32'd1;
                end
                else begin
                    count   <= 32'd0;
                    gate_ID220  <= 1'b1;
                    state   <= 2;
                end
            end
            
            2:begin
                if(count<width_reg)begin
                    count   <= count + 32'd1;
                end
                else begin
                    count   <= 32'd0;
                    gate_ID220  <= 1'b0;
                    state   <= 0;
                end
            end
            
            
        endcase
    end
    
endmodule
