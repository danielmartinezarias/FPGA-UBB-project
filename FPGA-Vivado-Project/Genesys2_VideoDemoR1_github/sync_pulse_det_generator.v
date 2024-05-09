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
    output reg sync = 1'b0,
    output reg pulse = 1'b0,
    output reg det = 1'b0,
    input SW,sync_ext
    );
    
    reg control = 1'b0;
    reg [31:0] counter = 32'd0;
    wire os_sync;
    wire sync_master;
    
    assign sync_master = (SW) ? sync:sync_ext;
    
   OneShoot o1 (
    .clk(clk), 
    .signal(sync_master), 
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
                    sync       <= 1'b1;
                    control     <= 1'd1;
                end
            end
            
            1:begin
                if(counter < freq_sync) begin
                    counter     <=  counter + 32'd1;
                end
                else begin
                    counter     <= 32'd0;
                    sync       <= 1'b0;
                    control     <= 1'd0;
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
                    pulse       <= 1'b1;
                    counter2    <= 32'd0;
                    control2    <= 2'd2;
                end
            end
            
            2:begin
                if(counter2 < width_pulse)begin
                    counter2    <= counter2 + 32'd1;
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
                    det         <= 1'b1;
                    counter3    <= 32'd0;
                    control3    <= 2'd2;
                end
            end
            
            2:begin
                if(counter3 < width_det)begin
                    counter3    <= counter3 + 32'd1;
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
