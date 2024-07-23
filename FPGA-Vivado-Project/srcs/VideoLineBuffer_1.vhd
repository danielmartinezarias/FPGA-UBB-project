-------------------------------------------------------------------------------
--  Copyright (c) 2018-2023 Eclektek LLC. All rights reserved.
--
--
--  Developed by: William Carter
--
--  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
--  associated documentation files (the "Software"), to deal with the Software without restriction,
--  including without limitation the rights to use, copy, modify, merge, publish, sublicense and/or
--  distribute copies of the Software, and to permit persons to whom the Software is furnished to do so,
--  subject to the following conditions:
--
--      Redistributions of source code must retain the above copyright notice, this list of conditions
--      and the following disclaimers.
--      Redistributions in binary form must reproduce the above copyright notice, this list of conditions
--      and the following disclaimers in the documentation and/or other materials provided with the distribution.
--      Neither the names of William Carter, Eclektek LLC, nor the names of its
--      contributors may be used to endorse or promote products derived from this Software without
--      specific prior written permission from Eclektek LLC.
--      This Software is provided free of charge and Eclektek LLC reserves the right to sell copies of the
--      Software in it original form. Anyone sub-licensing this Software will provide it free of charge.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
--  LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
--  IN NO EVENT SHALL THE CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
--  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
--  SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE SOFTWARE.
-------------------------------------------------------------------------------
--  History :
--
--  Date      By    Comments
--  --------  ----  ------------------------------------------------------------
--  03/30/23  W.C.  Created
--
-------------------------------------------------------------------------------
--  Project       : Nexys Video Video Demo
--  PCB           : Any
--  Device        : Any
--  Toolchain     : Vivado 2019.1
--  Entity Name   : VideoLineBuffer_1
--  File Name     : VideoLineBuffer_1.vhd
--  Design Parent : none
--
-------------------------------------------------------------------------------
--  Dependencies:
--
--  VideoLineBuffer_1.vhd is uses the following components:
--    none                 none
--
--  VideoLineBuffer_1.vhd is uses the following packages:
--    Package        none
--
-------------------------------------------------------------------------------
--  VideoLineBuffer_1.vhd
--
--
-------------------------------------------------------------------------------
--  Limitations
--
------------------------------------------------------------------------------
--  ToDo
--
-------------------------------------------------------------------------------
--  NOTES:
--
--
-------------------------------------------------------------------------------
--  CAUTIONS!!!
--
-------------------------------------------------------------------------------
Library ieee;
-- use ieee.numeric_std.all;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;
  use ieee.math_real.all;

--library UNISIM;
--  use UNISIM.vcomponents.all;

entity VideoLineBuffer_1 is
  generic(
    H_PIXELS           : natural);
  port(
    areset            : in  std_logic;
    p_clk             : in  std_logic;
    s_clk             : in  std_logic;
    hsync_in          : in  std_logic;
    vsync_in          : in  std_logic;
    blank_in          : in  std_logic;

    -- 32-bit pixel data read port
    p_data_out        : out  std_logic_vector(31 downto 0);

    -- Frame Buffer write port
    p_data_in         : in  std_logic_vector(255 downto 0);
    wren              : in  std_logic;
    add_rst           : in  std_logic;

    -- control signals aligned with p_data_out
    hsync_out         : out std_logic;
    vsync_out         : out std_logic;
    blank_out         : out std_logic

  );
end entity;

architecture rtl of VideoLineBuffer_1 is

-------------------------------------------------------------------------------
--  Component Declarations
-------------------------------------------------------------------------------


-- Block Memory Generator
--  DPRAM_W245_R32
--  true dual port ram
--  Native interface
--  PortA:
--    32 write and read widths
--    16384 depth
--    Primatives and Core output registers
--  PortB:
--    256 write and read widths
--    2048 depth
--    Primatives and Core output registers
--  No init file but fill with zeros
-- All other options are default
COMPONENT DPRAM_W245_R32
  PORT (
    clka  : IN STD_LOGIC;
    ena   : IN STD_LOGIC;
    wea   : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    dina  : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    clkb  : IN STD_LOGIC;
    enb   : IN STD_LOGIC;
    web   : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dinb  : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
  );
END COMPONENT;

-------------------------------------------------------------------------------
--  Type Declarations
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------

constant  LAST_PIXEL_ADDRESS_A           : natural := (H_PIXELS) -1;
constant  LAST_PIXEL_ADDRESS_B           : natural := (4*H_PIXELS/32) -1;

-------------------------------------------------------------------------------
--  Signal Declarations
-------------------------------------------------------------------------------

signal mem_wea        : std_logic_vector(0 downto 0);
signal mem_web        : std_logic_vector(0 downto 0);
signal addra          : std_logic_vector(13 downto 0);
signal addrb          : std_logic_vector(10 downto 0);
signal hsync_r1       : std_logic;
signal vsync_r1       : std_logic;
signal blank_r1       : std_logic;
signal hsync_r2       : std_logic;
signal vsync_r2       : std_logic;
signal blank_r2       : std_logic;
signal hsync_r3       : std_logic;
signal vsync_r3       : std_logic;
signal blank_r3       : std_logic;
signal hsync_r4       : std_logic;
signal vsync_r4       : std_logic;
signal blank_r4       : std_logic;

begin


-------------------------------------------------------------------------------
--  Component Instantiations
-------------------------------------------------------------------------------

  rgb_mem_inst : DPRAM_W245_R32
    PORT MAP (
      clka    => p_clk,
      ena     => '1',
      wea     => "0",
      addra   => addra,
      dina    => X"00000000",
      douta   => p_data_out,
      clkb    => s_clk,
      enb     => '1',
      web     => mem_web,
      addrb   => addrb,
      dinb    => p_data_in,
      doutb   => open
  );


-------------------------------------------------------------------------------
--  Concurrent Assignments
-------------------------------------------------------------------------------

  mem_web(0)  <= '1' when wren = '1' else '0';

-------------------------------------------------------------------------------
--  Process Declarations
-------------------------------------------------------------------------------

  -- pixel read address generator
  process(p_clk, areset)
  begin
    if (areset = '1') then
      addra   <= (others => '0');
    elsif rising_edge(p_clk) then
      if  blank_in = '0' and addra < conv_std_logic_vector(LAST_PIXEL_ADDRESS_A,addra'length) then
        addra   <= addra +1;
      else
        addra   <= (others => '0');
      end if;
    end if;
  end process;

  -- pixel write address generator
  process(s_clk, areset)
  begin
    if (areset = '1') then
      addrb   <= (others => '0');
    elsif rising_edge(s_clk) then
      if wren = '1' and addrb < conv_std_logic_vector(LAST_PIXEL_ADDRESS_B,addrb'length) then
        addrb   <= addrb +1;
      elsif wren = '1' then
        addrb   <= (others => '0');
      end if;
    end if;
  end process;

  -- Re-align video data with the video control signals
  process(p_clk, areset)
  begin
   if (areset = '1') then
    hsync_r1 <= '1';
    vsync_r1 <= '1';
    blank_r1 <= '0';
    hsync_r2 <= '1';
    vsync_r2 <= '1';
    blank_r2 <= '0';
    hsync_r3 <= '1';
    vsync_r3 <= '1';
    blank_r3 <= '0';
    hsync_r4 <= '1';
    vsync_r4 <= '1';
    blank_r4 <= '0';
   elsif rising_edge(p_clk) then
    hsync_r1 <= hsync_in;
    vsync_r1 <= vsync_in;
    blank_r1 <= blank_in;
    hsync_r2 <= hsync_r1;
    vsync_r2 <= vsync_r1;
    blank_r2 <= blank_r1;
    hsync_r3 <= hsync_r2;
    vsync_r3 <= vsync_r2;
    blank_r3 <= blank_r2;
    hsync_r4 <= hsync_r3;
    vsync_r4 <= vsync_r3;
    blank_r4 <= blank_r3;
   end if;
  end process;

---------------------------------------------------------------------------------
----  Other Output Assignments
---------------------------------------------------------------------------------

  hsync_out <= hsync_r4;
  vsync_out <= vsync_r4;
  blank_out <= blank_r4;


end rtl;
