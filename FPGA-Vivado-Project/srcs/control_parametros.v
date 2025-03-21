`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2023 11:09:04
// Design Name: 
// Module Name: control_parametros
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


module control_parametros(
    input wire clk,
	input wire ReadyRx,
	input wire [7:0] bufferRx,
	output reg [7:0] estadoRx = 8'd0,
	output reg ready_Tx_PC = 1'd0, 
	output reg buttonStartTx = 1'b0,
	output reg [31:0] freq_sync = 32'd50, 
	output reg [31:0] delay_pulse = 32'd0,
	output reg [31:0] width_pulse = 32'd5,
	output reg [31:0] delay_det = 32'd0,
	output reg [31:0] width_det = 32'd5,
	output reg [63:0] pixelColor = 64'd0,
	output reg image_load = 1'd0,
	output reg [7:0] image_address = 8'd0,
	output reg new_pixClr = 1'd0,
	output reg [31:0] ireg_read = 32'd0,
	output reg [31:0] ireg_write = 32'd0,
	output reg reset_DDR3 = 1'b0,
	output reg enable_dac = 1'd0,
	output reg [11:0] data_in_A_dac = 12'd0, data_in_B_dac = 12'd0,
	output reg [7:0] dead_time_APD = 8'd10,
	output reg [7:0] controlDM,
	output reg [15:0] dataPoints,
	output reg pulse_control = 1'b1, CW = 1'b0, AliceBob = 1'b1,
	//Nuevas declaraciones para las se�ales cuadradas
	output reg [31:0] freq_1 = 32'd50, 
    output reg [31:0] delay_1 = 32'd0,
    output reg [31:0] width_1 = 32'd5,
    output reg [31:0] freq_2 = 32'd50, 
    output reg [31:0] delay_2 = 32'd0,
    output reg [31:0] width_2 = 32'd5,
    output reg [31:0] freq_3 = 32'd50, 
    output reg [31:0] delay_3 = 32'd0,
    output reg [31:0] width_3 = 32'd5,
    output reg [31:0] freq_4 = 32'd50, 
    output reg [31:0] delay_4 = 32'd0,
    output reg [31:0] width_4 = 32'd5,
    output reg [31:0] freq_5 = 32'd50, 
    output reg [31:0] delay_5 = 32'd0,
    output reg [31:0] width_5 = 32'd5,
    output reg [31:0] freq_6 = 32'd50, 
    output reg [31:0] delay_6 = 32'd0,
    output reg [31:0] width_6 = 32'd5,
    // Phase Shifting
    output reg start = 1'b0,
    output wire reset,
    output reg [15:0] N = 16'd1,
    output reg inc_dec0 = 1'b0,
	output reg [31:0] freq_MZI_det = 32'd50
        );



wire os_readyRx;
OneShoot o1(
    .clk(clk), 
    .signal(ReadyRx), 
    .trigger(os_readyRx)
    );

reg [15:0] ctrl = 0;
reg [7:0] d1 = 0;
reg [7:0] d2 = 0;
reg [7:0] d3 = 0;
reg [7:0] d4 = 0;
reg [7:0] d5 = 0;
reg [7:0] d6 = 0;
reg [7:0] d7 = 0;
reg [7:0] d8 = 0;
reg [15:0] orden = 0;
reg [31:0] counter = 32'd0;





always @(posedge clk) begin

case (ctrl)
	0: begin
	   ready_Tx_PC    		   <= 1'b0;
	   new_pixClr              <= 1'd0;
	   reset_DDR3              <= 1'b0;
	   start                   <= 1'b0;
		if(os_readyRx)begin
			ctrl				<= {8'd0,bufferRx};
		end
	end
	
	1: begin
		if(os_readyRx) begin
			d8				<= bufferRx;
			ctrl			<= 16'd2;
		end
	end
	
	2: begin
		if(os_readyRx) begin
			d7				<= bufferRx;
			ctrl			<= 16'd3;
		end
	end
	
	3: begin
		if(os_readyRx) begin
			d6				<= bufferRx;
			ctrl			<= 16'd4;
		end
	end
	
	4: begin
		if(os_readyRx) begin
			d5				<= bufferRx;
			ctrl			<= 16'd5;
		end
	end
	
	5: begin
		if(os_readyRx) begin
			d4				<= bufferRx;
			ctrl			<= 16'd6;
		end
	end
	
	6: begin
		if(os_readyRx)begin
			d3				<= bufferRx;
			ctrl			<= 16'd7;
		end
	end
	
	7: begin
		if(os_readyRx)begin
			d2				<= bufferRx;
			ctrl			<= 16'd8;
		end
	end
	
	8: begin
		if(os_readyRx)begin
			d1				<= bufferRx;
			ctrl			<= 16'd9;
		end
	end	
	
	9:begin 
	   if(os_readyRx)begin
			orden[15:8]		<= bufferRx;
			ctrl			<= 16'd10;
		end
	end
	
	10:begin 
	   if(os_readyRx)begin
			orden[7:0]		<= bufferRx;
			ctrl			<= 16'd11;
		end
	end
	
	11:begin 
		ctrl			<= orden;
	end
	
	
	20: begin
		estadoRx       			<= {d1};
		ctrl					<= 16'd0;
	end
	
	21: begin
		buttonStartTx  			<= d1[0];
		ctrl					<= 16'd0;
	end
	
	22: begin
		ready_Tx_PC    			<= 1'b1;
		ctrl					<= 16'd0;
	end

	
	25: begin
		controlDM    			<= {d1};
		ctrl					<= 16'd0;
	end
	
	26: begin
		freq_sync    			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	27: begin
		delay_pulse    			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	28: begin
		width_pulse    			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	29: begin
		delay_det    			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	30: begin
		width_det    			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	31: begin
	    image_load		<= {1'd1};
		image_address  			<= {d1};
		ctrl					<= 16'd0;
	end
	
	32: begin
	    image_load		<= {1'd0};
		ctrl					<= 16'd0;
	end
	
	33: begin
		pixelColor    			<= {d8,d7,d6,d5,d4,d3,d2,d1};
		new_pixClr              <= 1'd1;
		ctrl					<= 16'd34;
	end
	
	34: begin
		ctrl					<= 16'd0;
	end
	
	35: begin
		ireg_write      <= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	36: begin
		ireg_read      <= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
	
	37: begin
		reset_DDR3            <= 1'b1;
		ctrl				  <= 16'd0;
	end
	
	38: begin
	    if(counter < 32'd4 )begin
	       counter     <= counter + 32'd1;
	    end
	    else begin
            enable_dac            <= 1'd0;
            ctrl				  <= 16'd0;
		end
	end
	
	39: begin
		data_in_A_dac             <= {d2[3:0],d1};
		enable_dac                <= 1'd1;
		counter                   <= 32'd0;
		ctrl      				  <= 16'd38;
	end
	
	40: begin
		data_in_B_dac             <= {d2[3:0],d1};
		enable_dac                <= 1'd1;
		counter                   <= 32'd0;
		ctrl      				  <= 16'd38;
	end
	
	41:begin
	    dead_time_APD    	    <= {d1};
		ctrl					<= 16'd0;
	end
	
	42: begin
		dataPoints    			<= {d2,d1};
		ctrl					<= 16'd0;
	end
	
	43: begin
		pulse_control    		<= d1[0];
		ctrl					<= 16'd0;
	end
	
	44: begin
		CW            			<= d1[0];
		ctrl					<= 16'd0;
	end 
	
	46: begin
		AliceBob       			<= d1[0];
		ctrl					<= 16'd0;
	end
	// Nuevas para las se�ales cuadradas
	50: begin
        freq_1 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    51: begin
        delay_1 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    52: begin
        width_1 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    53: begin
        freq_2 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    54: begin
        delay_2 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    55: begin
        width_2 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    56: begin
        freq_3 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    57: begin
        delay_3 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    58: begin
        width_3 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    59: begin
        freq_4 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    60: begin
        delay_4 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    61: begin
        width_4 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    62: begin
        freq_5 <= {d4, d3, d2, d1};
	    ctrl <= 16'd0;
    end
    
    63: begin
        delay_5 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    64: begin
        width_5 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    65: begin
        freq_6 <= {d4, d3, d2, d1};
	    ctrl <= 16'd0;
    end
    
    66: begin
        delay_6 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    67: begin
        width_6 <= {d4, d3, d2, d1};
        ctrl <= 16'd0;
    end
    
    68: begin
		N <= {d2, d1};
		ctrl <= 16'd0;
	end
	
	69: begin
		start <= 1'b1;
		ctrl <= 16'd0;
	end
	
	70: begin
		inc_dec0    			<= {d1[0]};
		ctrl					<= 16'd0;
	end

	71: begin
		freq_MZI_det   			<= {d4,d3,d2,d1};
		ctrl					<= 16'd0;
	end
    

	default:
		ctrl					<= 16'd0;
	
endcase
end
endmodule
