`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2022 10:47:13 AM
// Design Name: 
// Module Name: sync_pulse_det_generator
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


module sync_pulse_det_generator(
    input wire clk,
    input wire [31:0] freq_sync,
    input wire [31:0] delay_pulse,
    input wire [31:0] width_pulse,
    input wire [31:0] delay_det,
    input wire [31:0] width_det,
    output wire sync,
    output wire MZI,
    output reg det = 1'b0,
    input wire AliceBob,
    input wire sync_ext,
    input wire pulse_control, 
    input wire CW,
    input wire [31:0] freq_MZI_det
    );
    
    reg control = 1'b0;
    reg pulse = 1'b0;
    reg [31:0] counter = 32'd0;
    wire os_sync;
    reg sync_internal = 1'b0;
    reg sync_internal_MZI = 1'b0;
    
    //si el SW0 es 1, usa el sync propio, o sea, esa FPGA es Alice
    //si el SW0 es 0, usa el sync de la otra FPGA, o sea es BOB
    assign sync = (AliceBob) ? sync_internal:sync_ext;
    assign MZI = (CW) ? 1'b1:pulse;
    
   OneShoot o1 (
    .clk(clk), 
    .signal(sync_internal_MZI), 
    .trigger(os_sync)
    );
    
    always@(posedge clk)begin
        case (control)
            
            0:begin
                if(counter < freq_sync) begin
                    counter     <=  counter + 32'd1;
                end
                else begin
                    counter     <= 32'd0;
                    control     <= 1'd1;
                end
            end
            
            1:begin
                if(counter < freq_sync) begin
                    counter         <=  counter + 32'd1;
                    sync_internal   <= 1'b1;
                end
                else begin
                    counter         <= 32'd0;
                    sync_internal   <= 1'b0;
                    control         <= 1'd0;
                end
            end
            
        endcase
    end

    reg [1:0] control4 = 2'b0;
    reg [31:0] counter4 = 32'd0;
    always@(posedge clk)begin
        case (control4)
            
            0:begin
                if(counter4 < freq_MZI_det) begin
                    counter4     <=  counter4 + 32'd1;
                end
                else begin
                    counter4     <= 32'd0;
                    control4     <= 1'd1;
                end
            end
            
            1:begin
                if(counter4 < freq_MZI_det) begin
                    counter4         <=  counter4 + 32'd1;
                    sync_internal_MZI   <= 1'b1;
                end
                else begin
                    counter4         <= 32'd0;
                    sync_internal_MZI   <= 1'b0;
                    control4         <= 1'd0;
                end
            end
            
        endcase
    end
    
    
    reg [1:0] control2 = 2'b0;
    reg [31:0] counter2 = 32'd0;
    always@(posedge clk)begin
        case(control2)
            0:begin
                if(os_sync)begin
                    control2    <= 2'd1;
                    counter2    <= 32'd0;
                end
            end
            
            1:begin
                if(counter2 < delay_pulse)begin
                    counter2    <= counter2 + 32'd1;
                end
                else begin
                    counter2    <= 32'd0;
                    control2    <= 2'd2;
                end
            end
            
            2:begin
                if(counter2 < width_pulse)begin
                    counter2    <= counter2 + 32'd1;
                    pulse       <= pulse_control;
                end
                else begin
                    pulse       <= 1'b0;
                    counter2    <= 32'd0;
                    control2    <= 2'd0;
                end
            end
        endcase
    end
    
    
    reg [1:0] control3 = 2'b0;
    reg [31:0] counter3 = 32'd0;
    always@(posedge clk)begin
        case(control3)
            0:begin
                if(os_sync)begin
                    control3    <= 2'd1;
                    counter3    <= 32'd0;
                end
            end
            
            1:begin
                if(counter3 < delay_det)begin
                    counter3    <= counter3 + 32'd1;
                end
                else begin
                    counter3    <= 32'd0;
                    control3    <= 2'd2;
                end
            end
            
            2:begin
                if(counter3 < width_det)begin
                    counter3    <= counter3 + 32'd1;
                    det         <= 1'b1;
                end
                else begin
                    det         <= 1'b0;
                    counter3    <= 32'd0;
                    control3    <= 2'd0;
                end
            end
        endcase
    end
    
endmodule
