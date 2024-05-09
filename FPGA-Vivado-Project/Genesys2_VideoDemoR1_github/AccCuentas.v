`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:04 05/25/2018 
// Design Name: 
// Module Name:    AccCuentas 
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
module AccCuentas(
input  wire clk,sclr,En,EnACCCtrl, 
input  wire EXPIO_P_APD0,
input  wire EXPIO_P_APD1,
//input  wire [6:0]EXPIO_P_APD,
output reg[31:0]APD0,
output reg[31:0]APD1,
//output reg[31:0]APD0,APD1,APD2,APD3,APD4,APD5,APD6,
input wire [7:0] dead_time_APD
//input Trigger_in_APD,gate_4,gate_5,gate_6,gate_7
//input wire [31:0] width_ID220,delay_ID220,
//input wire trigger_in_APD,
//output wire gate_ID220
);
 

reg rsclr=0;	 
wire[6:0]oCs0;
wire oCs0_ID220;
//wire gate_ID220;
PreProc_Cs Pre000 (
    .clk(clk), 
    .EXPIO_P_APD(EXPIO_P_APD0), 
//    .EXPIO_P_APD(EXPIO_P_APD[5:0]), 
    .Cs(oCs0[0]),
    .dead_time_APD(dead_time_APD)
    );

PreProc_Cs Pre001 (
    .clk(clk), 
    .EXPIO_P_APD(EXPIO_P_APD1), 
//    .EXPIO_P_APD(EXPIO_P_APD[5:0]), 
    .Cs(oCs0[1]),
    .dead_time_APD(dead_time_APD)
    );
    
//PreProc_Cs_ID220 Pre002 (
//    .clk(clk400MHz), 
//    .EXPIO_P_APD(EXPIO_P_APD[6]), 
//    .Cs(oCs0_ID220),
//    .dead_time_APD(dead_time_APD)
//    );

wire[6:0]oCs;
assign oCs=oCs0;
//assign oCs[0]=oCs0[0];
//assign oCs[1]=oCs0[1];
//assign oCs[2]=oCs0[2];
//assign oCs[3]=oCs0[3];
//assign oCs[4]=oCs0[4];
//assign oCs[5]=oCs0[5];
//assign oCs[6]=oCs0_ID220;


 
	 
wire[31:0]wAPD0,wAPD1;	 
//wire[31:0]wAPD0,wAPD1,wAPD2,wAPD3,wAPD4,wAPD5,wAPD6;	 

//counter your_instance_name (
//  .CLK(clk),    // input wire CLK
//  .CE(En && oCs[0]),      // input wire CE
//  .SCLR(rsc),  // input wire SCLR
//  .Q(wAPD0)        // output wire [31 : 0] Q
//);

counter_ADP counter_ADP_0(
    .clk(clk),
    .enable(En),
    .signal(oCs[0]),
//    .signal(oCs[0]),
    .sclr(rsclr),
    .counter(wAPD0)
    );
    
counter_ADP counter_ADP_1(
    .clk(clk),
    .enable(En),
    .signal(oCs[1]),
    .sclr(rsclr),
    .counter(wAPD1)
    );

//counter_ADP counter_ADP_2(
//    .clk(clk),
//    .enable(En),
//    .signal(oCs[2]),
//    .sclr(rsclr),
//    .counter(wAPD2)
//    );
    
//counter_ADP counter_ADP_3(
//    .clk(clk),
//    .enable(En),
//    .signal(oCs[3]),
//    .sclr(rsclr),
//    .counter(wAPD3)
//    );
    
//counter_ADP counter_ADP_4(
//    .clk(clk),
//    .enable(En),
//    .signal(oCs[4]),
//    .sclr(rsclr),
//    .counter(wAPD4)
//    );
    
//counter_ADP counter_ADP_5(
//    .clk(clk),
//    .enable(En),
//    .signal(oCs[5]),
//    .sclr(rsclr),
//    .counter(wAPD5)
//    );
    
//counter_ADP counter_ADP_6(
//    .clk(clk400MHz),
//    .enable(En&&gate_ID220),
//    .signal(oCs[6]),
//    .sclr(rsclr),
//    .counter(wAPD6)
//    );
    
//ID220 ID220_0(
//    .clk400MHz(clk400MHz),
//    .trigger_in_APD(trigger_in_APD),
//    .width_ID220(width_ID220),
//    .delay_ID220(delay_ID220),
//    .gate_ID220(gate_ID220)
//    );
    



  
always @(posedge clk)begin

    if(sclr)begin
        rsclr<=1;
        if(EnACCCtrl)begin
            APD0<=wAPD0;
    		APD1<=wAPD1;
    //		APD2<=wAPD2;
    //		APD3<=wAPD3;
    //		APD4<=wAPD4;
    //		APD5<=wAPD5;
    //		APD6<=wAPD6;
        end
    end
    else
    rsclr<=0;

end
endmodule
