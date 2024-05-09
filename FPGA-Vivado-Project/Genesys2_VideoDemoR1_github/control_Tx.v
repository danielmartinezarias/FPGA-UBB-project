`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:29 09/05/2016 
// Design Name: 
// Module Name:    control_Tx 
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
module control_Tx(
		input wire clk,
		input wire readyTx,
		input wire startTx,
		input wire [7:0] bufferIn,
		input wire [15:0] lmax,
		input wire [7:0] PalabraCtrl,
		input wire [15:0] Ndata,
		output reg CtrlStartTx = 0,word_sent = 0,
		output reg [15:0] index = 0,
		output reg [7:0] bufferOut = 0
    );

reg [2:0] regControl = 0;
wire readyTx_OneShoot;

	 OneShoot o1 (
    .clk(clk), 
    .signal(readyTx), 
    .trigger(readyTx_OneShoot)
    );


always @(posedge clk) begin

case (regControl)
	
	3'd0:	begin
	   word_sent	<= 0;
		if (startTx) begin
			regControl	<= 3'd1;
			index		<= 16'd0;
		end			
	end
	
	3'd1: begin
		CtrlStartTx	<= 1;
		bufferOut	<= 8'd0;//primero envio un 0
		regControl	<= 3'd2;
		index			<= index + 16'd1;
		end
	
	3'd2: begin
		if (readyTx_OneShoot) begin
			if(index > 16'd5) begin
				regControl	<= 3'd3;
				index			<= 16'd0;
				bufferOut	<= PalabraCtrl;//la palabra de control
			end
			else begin
			    if(index == 16'd1)
				    bufferOut	<= 8'd255;//luego 255
                if(index == 16'd2)
                    bufferOut	<= 8'd0;// otra vez 0
                if(index == 16'd3)
                    bufferOut	<= 8'd255;//otra vez 255
                if(index == 16'd4)
                    bufferOut	<= Ndata[15:8];//numero de datos a enviar
                if(index == 16'd5)
                    bufferOut	<= Ndata[7:0];//numero de datos a enviar
                    
				index			<= index + 16'd1;//subo el index
			end
		end
	end
	
	3'd3: begin
		if (readyTx_OneShoot) begin//cada vez que me llegue el readyTx guardo otro dato
			bufferOut	<= bufferIn;
			if (index < (lmax-16'd1)) begin//porque el dcode siempre queda un index adelante
				index			<= index + 16'd1;
			end
			else begin
				regControl	<= 3'd4;
				index			<= 16'd0;
		    end
		end
	end
	
	3'd4: begin
		if (readyTx_OneShoot) begin
            if(index == 16'd0)
                bufferOut	<= 8'd1;
            if(index == 16'd1)
                bufferOut	<= 8'd254;
            if(index == 16'd2)
                bufferOut	<= 80'd1;
            if(index == 16'd3)
                bufferOut	<= 8'd254;
            if(index > 16'd3) begin
                regControl	<= 3'd0;
                index			<= 16'd0;
                CtrlStartTx	<= 0;
                word_sent	<= 1;
            end
		else
			index			<= index + 16'd1;
		end
	end
endcase

end

endmodule
