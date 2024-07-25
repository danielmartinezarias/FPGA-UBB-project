`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2023 03:50:17 PM
// Design Name: 
// Module Name: control_DM
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

module control_DM(
    input wire clk,
    input wire sync, buttonStartTx,
    input wire [31:0] APD0,APD1,
    output reg startTx_main = 1'd0,
    input wire ReadyTx,
    input wire [7:0] controlDM,
    input wire [15:0] dataPoints,
    output wire gatedet,
    input wire vSync,
    input wire [31:0] width_det, delay_det,
    input wire [13:0] addraRead,
    output wire [15 : 0] douta0,
    output wire [31 : 0] douta1,douta2,
    input wire [7:0] mascara,
    output reg [31:0] mascara_out,
    output reg sclrAcc, EnAcc, EnACCCtrl
    );
    
    reg [3:0] control = 0;
    reg wea = 1'd0;
    wire ovSync;
    wire masterSync;
    wire [13 : 0] addra;
    reg [13 : 0] addraWrite;
    reg [15 : 0] dina0;
    reg [31 : 0] dina1,dina2;


    
    reg [3:0] control2 = 0;
    reg [31:0] count32bits = 32'd0, count32bits2 = 32'd0;
    reg [7:0] count8bits = 8'd0;
    reg [7:0] mascara_aux;

    
    assign addra = (wea) ? addraWrite:addraRead;
    assign gatedet = EnAcc;
    
    blk_mem_gen_1 MEM_DAC0 (
      .clka(clk),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [13 : 0] addra
      .dina(dina0),    // input wire [15 : 0] dina
      .douta(douta0)  // output wire [15 : 0] douta
    );
    
    blk_mem_gen_0 MEM_ADC0 (
      .clka(clk),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [13 : 0] addra
      .dina(dina1),    // input wire [31 : 0] dina
      .douta(douta1)  // output wire [31 : 0] douta
    );
    
    blk_mem_gen_0 MEM_ADC1 (
      .clka(clk),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [13 : 0] addra
      .dina(dina2),    // input wire [31 : 0] dina
      .douta(douta2)  // output wire [31 : 0] douta
    );
    
    OneShoot o1 (
    .clk(clk), 
    .signal(vSync), 
    .trigger(ovSync)
    );
    
    OneShoot o2 (
    .clk(clk), 
    .signal(sync), 
    .trigger(masterSync)
    );

    


    always@(posedge clk)begin//100MHz
        //cada mascara ocupa 2073600 bits de memoria DDR3
        mascara_out         <= {24'd0,mascara_aux}*32'd2073600;
        
        case(control2)
            0:begin//IDLE state
                if(buttonStartTx)begin//boton GUI
                wea                 <= 1'd0;//wea memoria, 0 leer,1 escribir
                addraWrite          <= 14'd0;//inicializa la direccion de blockRAM para APD
                control2            <= 1;
                case(controlDM)//seleccion de mascara
                    0:begin//mascara fija
                        mascara_aux         <= mascara;
                    end
                    1:begin//rampa
                        mascara_aux         <= 8'd0;
                    end

                    default:begin//
                        mascara_out               <= 8'd0;
                    end
                endcase
                end
            end
            
            1:begin//espero a que se cargue completamente la primer mascara
                if(ovSync)begin
                    if({2'b00,addraWrite}<dataPoints)begin//cuento las mascaras implementadas
                        count32bits     <= 32'd0;
                        sclrAcc         <= 1'b1;//reset de cuentas
                        control2        <= 9;
                    end
                    else begin
                        startTx_main    <= 1'd1;//cuando ya termine los dataPoints envio a Tx
                        control2        <= 5;
                    end

                end
            end
            
            9:begin
                if(ovSync)begin//ahora me aseguro qye la mascara esta completa
                    sclrAcc         <= 1'b0;
                    control2        <= 11;
                end
            end
            
            11:begin
                if(masterSync)begin//espero el sincronizmo maestro
                    control2        <= 2;
                end
            end
            
            2:begin//si el detector es free running...
                if(count32bits<delay_det)begin//entre que preparo el mascara y empiezo a adquirir
                    count32bits     <= count32bits + 32'd1;
                end
                else begin
                    EnAcc           <= 1'b1;
                    count32bits     <= 32'd0;
                    count8bits      <= 8'd0;
                    control2        <= 3;
                end
            end
            
            3:begin//abro el detector por un tiempo
                if(count32bits<width_det)begin
                    //+2 porque trabajo a 100 MHz y el pulse gen a 200 MHz
                    count32bits         <= count32bits + 32'd2;
                end
                else begin//terminamos el muestreo
                    EnAcc               <= 1'b0;//termino la adquisicion
                    sclrAcc             <= 1'b1;//reseto cuentas
                    EnACCCtrl           <= 1'b1;//adquiero registros
                    count32bits         <= 32'd0;
                    control2            <= 10;
                end
            end
            
            10:begin
                sclrAcc             <= 1'b0;
                EnACCCtrl           <= 1'b0;
                wea                 <= 1'd1;//guardo en la memoria
                dina0               <= {8'd0,mascara_aux};
                dina1               <= APD0;
                dina2               <= APD1;
                control2            <= 4;
            end
            
            4:begin
                wea                 <= 1'd0;
                addraWrite          <= addraWrite + 14'd1;//preparo para la siguiente
                control2            <= 7;//un delay de 5 ciclos de reloj yregreso a esperar sync
            end
            
            5:begin
                startTx_main    <= 1'd0;
                if(ReadyTx)begin//espero a que haya terminado y empiezo de nuevo 
                    control2                 <= 0;
                end
            end
            
            7:begin
                if(count8bits<8'd5)begin
                    count8bits     <= count8bits + 8'd1;
                end
                else begin
                    count8bits     <= 8'd0;
                    //elegimos la siguiente mascara
                    case(controlDM)
                    0:begin//fija
                        mascara_aux         <= mascara;
                    end
                    1:begin//rampa
                        if(mascara_aux <= mascara)begin
                        mascara_aux         <= mascara_aux + 8'd1;
                        end 
                        else begin
                            mascara_aux         <= 8'd0;
                        end
                    end

                    endcase
                    control2        <= 1;
                end
            end
            
            
            
            
        endcase
    end
    
    
    
    
    
endmodule
