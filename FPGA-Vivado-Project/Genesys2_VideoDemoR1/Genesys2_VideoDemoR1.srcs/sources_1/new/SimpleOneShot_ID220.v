`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:07 07/05/2015 
// Design Name: 
// Module Name:    SimpleOneShot 
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
module SimpleOneShot_ID220(
input wire clock,
input wire in,
output reg out,
input wire [7:0] dead_time_APD
    );

reg [1:0]  count=2'b00;
reg control = 1'd0;
reg [7:0] counter =8'd0;
  always @ (posedge clock) begin 
  
      case(control)
      
      0:begin
          if(count == 2'b01)begin
            out         <=1;
            count       <=2'b00;
            control     <= 1'b1;
          end
          else begin
            count       <={count[0],in};
            out         <=0;
          end
      end
      
      1:begin
        out         <=0;
        if(counter<{dead_time_APD[5:0],2'b00})begin
            counter     <= counter + 8'd1;
        end
        else begin
            counter     <= 8'd0;
            control     <= 1'b0;
        end
      end
      
      endcase
  
end

endmodule
