// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jan 26 14:33:01 2024
// Host        : donaufeld running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top DPRAM_W245_R32 -prefix
//               DPRAM_W245_R32_ DPRAM_W245_R32_stub.v
// Design      : DPRAM_W245_R32
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module DPRAM_W245_R32(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="ena,wea[0:0],addra[13:0],dina[31:0],douta[31:0],enb,web[0:0],addrb[10:0],dinb[255:0],doutb[255:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input ena;
  input [0:0]wea;
  input [13:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb /* synthesis syn_isclock = 1 */;
  input enb;
  input [0:0]web;
  input [10:0]addrb;
  input [255:0]dinb;
  output [255:0]doutb;
endmodule