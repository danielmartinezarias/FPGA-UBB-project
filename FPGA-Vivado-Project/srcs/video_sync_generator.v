module video_sync_generator #(
  parameter hori_line  = 800,
  parameter hori_back  = 48,
  parameter hori_front = 16,
  parameter vert_line  = 525,
  parameter vert_back  = 33,
  parameter vert_front = 10,
  parameter H_sync_cycle = 96,
  parameter V_sync_cycle = 2
  )
  (reset,
     vga_clk,
     blank,
     HS,
     VS,
     Hbs,
     Vbs,
     Fbs
);

input reset;
input vga_clk;
output reg blank;
output reg HS;
output reg VS;
output reg Hbs;
output reg Vbs;
output reg Fbs;

//  3/16/23 -- Modified from original by WC for Nexys Video Video Demo


///////////////////
/*
--VGA Timing
--Horizontal :
--                ______________                 _____________
--               |              |               |
--_______________|  VIDEO       |_______________|  VIDEO (next line)

--___________   _____________________   ______________________
--           |_|                     |_|
--            B <-C-><----D----><-E->
--           <------------A--------->
--The Unit used below are pixels;
--  B->Sync_cycle                   :H_sync_cycle
--  C->Back_porch                   :hori_back
--  D->Visable Area
--  E->Front porch                  :hori_front
--  A->horizontal line total length :hori_line
--Vertical :
--               ______________                 _____________
--              |              |               |
--______________|  VIDEO       |_______________|  VIDEO (next frame)
--
--__________   _____________________   ______________________
--          |_|                     |_|
--           P <-Q-><----R----><-S->
--          <-----------O---------->
--The Unit used below are horizontal lines;
--  P->Sync_cycle                   :V_sync_cycle
--  Q->Back_porch                   :vert_back
--  R->Visable Area
--  S->Front porch                  :vert_front
--  O->vertical line total length :vert_line
*////////////////////////////////////////////
////////////////////////
//parameter
// Original parameters
//parameter hori_line  = 800;
//parameter hori_back  = 144;
//parameter hori_front = 16;
//parameter vert_line  = 525;
//parameter vert_back  = 34;
//parameter vert_front = 11;
//parameter H_sync_cycle = 96;
//parameter V_sync_cycle = 2;
//parameter H_BLANK = hori_front+H_sync_cycle ; //add by yang

// modifief parameters for 480p display
//parameter hori_line  = 800;
//parameter hori_back  = 48;
//parameter hori_front = 16;
//parameter vert_line  = 525;
//parameter vert_back  = 33;
//parameter vert_front = 10;
//parameter H_sync_cycle = 96;
//parameter V_sync_cycle = 2;
//parameter H_BLANK = hori_front+hori_front+H_sync_cycle ;

//////////////////////////
reg [11:0] h_cnt;
reg [11:0]  v_cnt;
wire cHD,cVD,cDEN,hori_valid,vert_valid;
///////
always@(negedge vga_clk,posedge reset)
begin
  if (reset)
  begin
     h_cnt<=12'd0;
     v_cnt<=12'd0;
  end
    else
    begin
      if (h_cnt==hori_line-1)
      begin
         h_cnt<=12'd0;
         if (v_cnt==vert_line-1)
            v_cnt<=12'd0;
         else
            v_cnt<=v_cnt+1;
      end
      else
         h_cnt<=h_cnt+1;
    end
end
/////
assign cHD = (h_cnt<H_sync_cycle)?1'b0:1'b1;
assign cVD = (v_cnt<V_sync_cycle)?1'b0:1'b1;

assign hori_valid = (h_cnt<(hori_line-hori_front)&& h_cnt>=hori_back+H_sync_cycle)?1'b1:1'b0;
assign vert_valid = (v_cnt<(vert_line-vert_front)&& v_cnt>=vert_back+V_sync_cycle)?1'b1:1'b0;
//assign hori_valid = (h_cnt<(hori_line-hori_front)&& h_cnt>=hori_back)?1'b1:1'b0;
//assign vert_valid = (v_cnt<(vert_line-vert_front)&& v_cnt>=vert_back)?1'b1:1'b0;

assign cDEN = hori_valid && vert_valid;

always@(negedge vga_clk)
begin
  HS<=cHD;
  VS<=cVD;
  blank<=!cDEN;
  Hbs <= (vert_valid == 1'b1 && h_cnt == 12'd1)?1'b1:1'b0;
  Vbs <= !vert_valid;
  Fbs <= (v_cnt==vert_back && h_cnt == 12'd1)?1'b1:1'b0;
end

endmodule


