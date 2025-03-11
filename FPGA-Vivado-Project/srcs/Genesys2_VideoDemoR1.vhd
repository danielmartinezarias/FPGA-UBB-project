---------------------------------------------------------------------
Library ieee;
-- use ieee.numeric_std.all;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;
  use ieee.math_real.all;

library UNISIM;
  use UNISIM.vcomponents.all;

entity Genesys2_VideoDemoR1 is
  port(
    -- GLOBAL SIGNALS
    sysclk_p                  : in    std_logic;
    sysclk_n                  : in    std_logic;
    -- General I/O resources

    btnc                      : in    std_logic; -- '1' when pressed
    btnd                      : in    std_logic; -- '1' when pressed
    btnl                      : in    std_logic; -- '1' when pressed
    btnr                      : in    std_logic; -- '1' when pressed
    btnu                      : in    std_logic; -- '1' when pressed
    cpu_resetn                : in    std_logic; -- '0' when pressed
    led                       : out   std_logic_vector(7 downto 0);  -- '1' lights LEDs

    
    -- FMC Header
    --fmc_la_n_00                        : in    std_logic --sync
    fmc_la_n_00                        : out    std_logic;
    fmc_la_p_00                        : out   std_logic;
    fmc_la_p_01                        : out   std_logic;
    fmc_la_p_04                        : out   std_logic;
    fmc_la_p_06                        : out   std_logic;
    fmc_la_p_15                        : out   std_logic;
    fmc_la_p_17                        : out   std_logic;
    fmc_la_n_17                        : out   std_logic;
    fmc_la_p_18                        : out   std_logic;
    fmc_la_n_18                        : out   std_logic;
    fmc_la_n_24                        : out   std_logic;
    fmc_la_p_24                        : out   std_logic;
    fmc_la_p_26                        : out   std_logic;
    fmc_la_p_32                        : out    std_logic;
    fmc_la_n_32                        : out    std_logic;
    
    
    
    -- JC PMOD Header
    jc                        : out   std_logic_vector(7 downto 0);
    

    

    -- DPTI interface
    prog_clko                 : in    std_logic;
    prog_rxen                 : in    std_logic;
    prog_txen                 : in    std_logic;
    prog_spien                : in    std_logic; --called jtagen on some platforms
    prog_rdn                  : out   std_logic;
    prog_wrn                  : out   std_logic;
    prog_oen                  : out   std_logic;
    prog_siwun                : out   std_logic;
    prog_d                    : inout std_logic_vector (7 downto 0);

    -- DDR3 PHY interface
    ddr3_dq                   : inout  std_logic_vector(31 downto 0);
    ddr3_addr                 : out    std_logic_vector(14 downto 0);
    ddr3_ba                   : out    std_logic_vector(2 downto 0);
    ddr3_ck_p                 : out    std_logic_vector(0 downto 0);
    ddr3_ck_n                 : out    std_logic_vector(0 downto 0);
    ddr3_cke                  : out    std_logic_vector(0 downto 0);
    ddr3_cs_n                 : out    std_logic_vector(0 downto 0);
    ddr3_cas_n                : out    std_logic;
    ddr3_ras_n                : out    std_logic;
    ddr3_we_n                 : out    std_logic;
    ddr3_odt                  : out    std_logic_vector(0 downto 0);
    ddr3_dm                   : out    std_logic_vector(3 downto 0);
    ddr3_dqs_p                : inout  std_logic_vector(3 downto 0);
    ddr3_dqs_n                : inout  std_logic_vector(3 downto 0);
    ddr3_reset_n              : out    std_logic;

    -- J13 UART
    uart_rx_out               : out   std_logic;
    uart_tx_in                : in    std_logic;

    -- HDMI Out transmitter
    hdmi_tx_p                 : out  STD_LOGIC_VECTOR(2 downto 0);
    hdmi_tx_n                 : out  STD_LOGIC_VECTOR(2 downto 0);
    hdmi_tx_clk_p             : out  std_logic;
    hdmi_tx_clk_n             : out  std_logic
    -- FMC
--    fmc_clk0_m2c_n            : out std_logic
  );
end entity;

architecture rtl of Genesys2_VideoDemoR1 is

-------------------------------------------------------------------------------
--  Component Declarations
-------------------------------------------------------------------------------

---- Clocking Wizard
---- MMCM input is 40 global buffer
---- output 1 is 540 MHz, 50% Duty Cycle, 0 phase, BUFG
---- output 2 is 540 MHz, 50% Duty Cycle, 180 phase, BUFG
---- output 3 is 108 MHz, 50% Duty Cycle, 0 phase, BUFG
--component clk_wiz_1
--port
-- (-- Clock in ports
--  -- Clock out ports
--  clk_out1          : out    std_logic;
--  clk_out2          : out    std_logic;
--  clk_out3          : out    std_logic;
--  -- Status and control signals
--  reset             : in     std_logic;
--  locked            : out    std_logic;
--  clk_in1           : in     std_logic
-- );
--end component;

component display_clocks
generic(
    MULT_MASTER     : real;
    DIV_MASTER      : real;
    DIV_5X          : real;
    DIV_1X          : real;
    IN_PERIOD       : real
    );
port
 (-- Clock in ports
  -- Clock out ports
  o_clk_1x          : out    std_logic;
  o_clk_5x          : out    std_logic;
  o_clk_5x_n        : out    std_logic;
  -- Status and control signals
  i_rst             : in     std_logic;
  o_locked          : out    std_logic;
  i_clk             : in     std_logic
 );
end component;

-- Clocking Wizard
-- PLL input is 200 MHz Differential clock-capable pin
-- output 1 is 200 MHz, 50% Duty Cycle, 0 phase, BUFG
-- output 2 is 200 MHz, 50% Duty Cycle, 0 phase, BUFG
-- output 3 is 800 MHz, 50% Duty Cycle, 0 phase, BUFG
-- output 4 is 100 MHz, 50% Duty Cycle, 0 phase, BUFG
-- output 5 is  40 MHz, 50% Duty Cycle, 0 phase, BUFG
-- All other settings are Clocking Wizard defaults
component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  clk_out3          : out    std_logic;
  clk_out4          : out    std_logic;
  clk_out5          : out    std_logic;
  clk_out6          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1_p         : in     std_logic;
  clk_in1_n         : in     std_logic;
  psclk             : in     std_logic;
  psen              : in     std_logic;
  psincdec          : in     std_logic;
  psdone            : out    std_logic
 );
end component;
component dpti_ctrl
  Port (
  --User Write FIFO signals
     wr_clk     : in std_logic;
     wr_en      : in std_logic;
     wr_full    : out std_logic;
     wr_afull   : out std_logic;
     wr_err     : out std_logic;
     wr_count   : out std_logic_vector(11 downto 0);
     wr_di      : in std_logic_vector(7 downto 0);

  --User Read FIFO signals
     rd_clk      : in std_logic;
     rd_en       : in std_logic;
     rd_empty    : out std_logic;
     rd_aempty   : out std_logic;
     rd_err      : out std_logic;
     rd_count    : out std_logic_vector(11 downto 0);
     rd_do       : out std_logic_vector(7 downto 0);

  --misc. signals
     rst         : in std_logic;  -- Asynchronously resets the entire component.
                                  -- Must be held high for at least 100ns, or 6
                                  -- clock cycles of the slowest fifo clock if
                                  -- that is longer
  --DPTI Port signals
     prog_clko  : in  STD_LOGIC;
     prog_rxen  : in  STD_LOGIC;
     prog_txen  : in  STD_LOGIC;
     prog_spien : in  STD_LOGIC; --called jtagen on some platforms
     prog_rdn   : out  STD_LOGIC;
     prog_wrn   : out  STD_LOGIC;
     prog_oen   : out  STD_LOGIC;
     prog_siwun : out STD_LOGIC;
     prog_d     : inout  STD_LOGIC_VECTOR (7 downto 0));
end component;

    -- Vivado 2020.2 Genesys2 MIG
    -- 1 Controller
    -- xc7k325tffg900-2
    -- DDR3 SDRAM
    -- Clock Period: 1111ps (900.09 MHz)
    -- PHY-Controller Clock Ratio: 4:1
    -- Memory Type: Components
    -- Memory Part: MT41J256M16XX-107
    -- Memory Voldate: 1.5V
    -- Data Width: 32
    -- ECC: Disabled
    -- Data mask: Yes
    -- Number of Bank Machines: 8
    -- Ordering: Normal
    -- Input Clock Period: 5000ps
    -- Read Burst Type: Sequential
    -- Output Driver Impedance Control: RZQ/7
    -- Rtt: RZQ/6
    -- Rtt: RZQ/6
    -- Controller Chip Select Pin: Enable
    -- Memory Address Mapping Selection: BANK,ROW,COLUMN
    -- System Clock: No Buffer
    -- Reference Clock: Use System Clock
    -- System Reset Polarity: ACTIVE LOW
    -- Debug signals: OFF
    -- Internal Vref: no
    -- IO Power Reduction: ON
    -- XADC Instantiation: Disabled
    -- Internal Termination for High Range Banks: 50 ohms
    -- Pin assignments File: Genesys2_H_DDR.ucf
  component mig_7series_0
    Port (
      ddr3_dq             : inout STD_LOGIC_VECTOR ( 31 downto 0 );
      ddr3_dqs_n          : inout STD_LOGIC_VECTOR ( 3 downto 0 );
      ddr3_dqs_p          : inout STD_LOGIC_VECTOR ( 3 downto 0 );
      ddr3_addr           : out STD_LOGIC_VECTOR ( 14 downto 0 );
      ddr3_ba             : out STD_LOGIC_VECTOR ( 2 downto 0 );
      ddr3_ras_n          : out STD_LOGIC;
      ddr3_cas_n          : out STD_LOGIC;
      ddr3_we_n           : out STD_LOGIC;
      ddr3_reset_n        : out STD_LOGIC;
      ddr3_ck_p           : out STD_LOGIC_VECTOR ( 0 to 0 );
      ddr3_ck_n           : out STD_LOGIC_VECTOR ( 0 to 0 );
      ddr3_cke            : out STD_LOGIC_VECTOR ( 0 to 0 );
      ddr3_cs_n           : out STD_LOGIC_VECTOR ( 0 to 0 );
      ddr3_dm             : out STD_LOGIC_VECTOR ( 3 downto 0 );
      ddr3_odt            : out STD_LOGIC_VECTOR ( 0 to 0 );
      app_addr            : in STD_LOGIC_VECTOR ( 28 downto 0 );
      app_cmd             : in STD_LOGIC_VECTOR ( 2 downto 0 );
      app_en              : in STD_LOGIC;
      app_wdf_data        : in STD_LOGIC_VECTOR ( 255 downto 0 );
      app_wdf_end         : in STD_LOGIC;
      app_wdf_mask        : in STD_LOGIC_VECTOR ( 31 downto 0 );
      app_wdf_wren        : in STD_LOGIC;
      app_rd_data         : out STD_LOGIC_VECTOR ( 255 downto 0 );
      app_rd_data_end     : out STD_LOGIC;
      app_rd_data_valid   : out STD_LOGIC;
      app_rdy             : out STD_LOGIC;
      app_wdf_rdy         : out STD_LOGIC;
      app_sr_req          : in STD_LOGIC;
      app_ref_req         : in STD_LOGIC;
      app_zq_req          : in STD_LOGIC;
      app_sr_active       : out STD_LOGIC;
      app_ref_ack         : out STD_LOGIC;
      app_zq_ack          : out STD_LOGIC;
      ui_clk              : out STD_LOGIC;
      ui_clk_sync_rst     : out STD_LOGIC;
      init_calib_complete : out STD_LOGIC;
      sys_clk_i           : in  std_logic;
      device_temp_i       : in  std_logic_vector(11 downto 0);
      sys_rst             : in  STD_LOGIC
    );
  end component;


  COMPONENT dvid
  PORT(
     clk      : IN std_logic;
     clk_n    : IN std_logic;
     clk_pixel: IN std_logic;
     red_p   : IN std_logic_vector(7 downto 0);
     green_p : IN std_logic_vector(7 downto 0);
     blue_p  : IN std_logic_vector(7 downto 0);
     blank   : IN std_logic;
     hsync   : IN std_logic;
     vsync   : IN std_logic;
     red_s   : OUT std_logic;
     green_s : OUT std_logic;
     blue_s  : OUT std_logic;
     clock_s : OUT std_logic
     );
  END COMPONENT;

  component video_sync_generator
    generic(
      hori_line     : natural;
      hori_back     : natural;
      hori_front    : natural;
      vert_line     : natural;
      vert_back     : natural;
      vert_front    : natural;
      H_sync_cycle  : natural;
      V_sync_cycle  : natural);
    port(
      reset             : in  std_logic;
      vga_clk           : in  std_logic;
      blank             : out std_logic;
      HS                : out std_logic;
      VS                : out std_logic;
      Hbs               : out std_logic;
      Vbs               : out std_logic;
      Fbs               : out std_logic
    );
  end component;

  component VideoLineBuffer_1 is
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
  end component;

-- Modulo sync_pulse_det_generator
   COMPONENT sync_pulse_det_generator is
  PORT(
            clk         : in std_logic;
            freq_sync   : in std_logic_vector(31 downto 0);
            delay_pulse : in std_logic_vector(31 downto 0);
            width_pulse : in std_logic_vector(31 downto 0);
            delay_det   : in std_logic_vector(31 downto 0);
            width_det   : in std_logic_vector(31 downto 0);
            sync        : out std_logic;
            MZI         : out std_logic;
            det         : out std_logic;
            AliceBob    : in std_logic;
            sync_ext    : in std_logic;
            pulse_control: in std_logic;
            CW          : in std_logic
     );
  END COMPONENT;

  --Modulo Control_parametros
  COMPONENT control_parametros is
  PORT(
        clk            : in std_logic;
        ReadyRx        : in std_logic;
        bufferRx       : in std_logic_vector(7 downto 0);
        estadoRx       : out std_logic_vector(7 downto 0);
        ready_Tx_PC    : out std_logic ;
        buttonStartTx  : out std_logic ;
        freq_sync      : out std_logic_vector(31 downto 0) ;
        delay_pulse    : out std_logic_vector(31 downto 0) ;
        width_pulse    : out std_logic_vector(31 downto 0) ;
        delay_det      : out std_logic_vector(31 downto 0) ;
        width_det      : out std_logic_vector(31 downto 0) ;
        freq_1         : out std_logic_vector(31 downto 0);
        delay_1        : out std_logic_vector(31 downto 0);
        width_1        : out std_logic_vector(31 downto 0);
        freq_2         : out std_logic_vector(31 downto 0);
        delay_2        : out std_logic_vector(31 downto 0);
        width_2        : out std_logic_vector(31 downto 0);
        freq_3         : out std_logic_vector(31 downto 0);
        delay_3        : out std_logic_vector(31 downto 0);
        width_3        : out std_logic_vector(31 downto 0);
        freq_4         : out std_logic_vector(31 downto 0);
        delay_4        : out std_logic_vector(31 downto 0);
        width_4        : out std_logic_vector(31 downto 0);
        freq_5         : out std_logic_vector(31 downto 0);
        delay_5        : out std_logic_vector(31 downto 0);
        width_5        : out std_logic_vector(31 downto 0);
        freq_6         : out std_logic_vector(31 downto 0);
        delay_6        : out std_logic_vector(31 downto 0);
        width_6        : out std_logic_vector(31 downto 0);
        pixelColor     : out std_logic_vector(63 downto 0) ;
        image_load     : out std_logic;
        image_address  : out std_logic_vector(7 downto 0);
        new_pixClr     : out std_logic;
        ireg_read      : out std_logic_vector(31 downto 0);
        ireg_write     : out std_logic_vector(31 downto 0);
        reset_DDR3     : out std_logic;
        enable_dac     : out std_logic;
        data_in_A_dac  : out std_logic_vector(11 downto 0);
        data_in_B_dac  : out std_logic_vector(11 downto 0);
        dead_time_APD  : out std_logic_vector(7 downto 0);
        controlDM      : out std_logic_vector(7 downto 0);
        dataPoints     : out std_logic_vector(15 downto 0);
        pulse_control  : out std_logic;
        CW             : out std_logic;
        AliceBob       : out std_logic
     );
  END COMPONENT;

  --Modulo pmodDA2
  COMPONENT pmodDA2 is
  PORT(
        clk            : in std_logic;
        enable         : in std_logic;
        data_in_A      : in std_logic_vector(11 downto 0);
        data_in_B      : in std_logic_vector(11 downto 0);
        CS             : out std_logic;
        DIN_A          : out std_logic ;
        DIN_B          : out std_logic 
     );
  END COMPONENT;  
  
--Modulo UART_Rx
  COMPONENT UART_Rx is
  PORT(
        clk       : in std_logic;
        tick      : in std_logic;
        PinRx     : in std_logic; --***cambie in por out***
        bufferRx  : out std_logic_vector(7 downto 0);
        ReadyRx   : out std_logic := '0'
     );
  END COMPONENT;

--Modulo tick_generator
COMPONENT tick_generator is
PORT(
        clk       : in std_logic;
        tick      : out std_logic
    );
   END COMPONENT;
   
   
--Modulo AccCuentas
COMPONENT AccCuentas is
PORT(
        clk       : in std_logic;
        clk400MHz : in std_logic;
        sclr      : in std_logic;--simultaneo con EnACCCtrl
        En        : in std_logic;--counts enable 
        EnACCCtrl : in std_logic;-- retrieve data from counter
        EXPIO_P_APD0 : in  std_logic;
        EXPIO_P_APD1 : in  std_logic;
        APD0      : out std_logic_vector(31 downto 0);
        APD1      : out std_logic_vector(31 downto 0);
        dead_time_APD : in std_logic_vector(7 downto 0);
        width_ID220 : in std_logic_vector(31 downto 0);
        delay_ID220 : in std_logic_vector(31 downto 0);
        masterSync : in std_logic;
        gate_ID220 : out std_logic
    );
   END COMPONENT;
   
--Modulo UART_TX_control
COMPONENT UART_TX_control is
PORT(
        clk                 : in std_logic;
        tick                : in std_logic;
        pin_Tx              : out std_logic;
        Ndata               : in std_logic_vector(15 downto 0);
        data16bits_0        : in std_logic_vector(15 downto 0);
        data32bits_0        : in std_logic_vector(31 downto 0);
        data32bits_1        : in std_logic_vector(31 downto 0);
        data32bits_2        : in std_logic_vector(31 downto 0);
        data32bits_3        : in std_logic_vector(31 downto 0);
        data32bits_4        : in std_logic_vector(31 downto 0);
        --mascara     : in std_logic_vector(7 downto 0);
        startTx_main        : in std_logic;
        ReadyTx             : out std_logic;
        addraRead           : out std_logic_vector(13 downto 0);
        douta0              : in std_logic_vector(15 downto 0);
        douta1              : in std_logic_vector(31 downto 0);
        douta2              : in std_logic_vector(31 downto 0)
    );
   END COMPONENT;
   
--Modulo control_DM
COMPONENT control_DM is
PORT(
    clk                     : in std_logic;
    sync                    : in std_logic;
    buttonStartTx           : in std_logic;
    APD0                    : in std_logic_vector(31 downto 0);
    APD1                    : in std_logic_vector(31 downto 0);
    startTx_main            : out std_logic;
    ReadyTx                 : in std_logic;
    controlDM               : in std_logic_vector(7 downto 0);
    dataPoints              : in std_logic_vector(15 downto 0);
    gateDet                 : out std_logic;
    vSync                   : in std_logic;
    width_det               : in std_logic_vector(31 downto 0);
    delay_det               : in std_logic_vector(31 downto 0);
    addraRead               : in std_logic_vector(13 downto 0);
    douta0                  : out std_logic_vector(15 downto 0);
    douta1                  : out std_logic_vector(31 downto 0);
    douta2                  : out std_logic_vector(31 downto 0);
    mascara                 : in std_logic_vector(7 downto 0);
    mascara_out             : out std_logic_vector(31 downto 0);
    sclrAcc                 : out std_logic;
    EnAcc                   : out std_logic;
    EnACCCtrl               : out std_logic;
    gate_ID220              : in std_logic
    );
   END COMPONENT;
--Control Phase
component control_phase is
    port(
        clk100MHz : in std_logic;
        clk_slow  : in std_logic;
        N         : in std_logic_vector(15 downto 0);
        start     : in std_logic;
        psdone    : in std_logic;
        psen      : out std_logic;
        psincdec  : out std_logic
);
end component;

-------------------------------------------------------------------------------
--  Type Declarations
-------------------------------------------------------------------------------

  type sm_states is (s_idle, s_rd0, s_rd1, s_rd2, s_rd3, s_wr0, s_wr1, s_wr2, s_wr3);
  type d_states is (d_idle, d_wr0, d_wr1, d_rd0, d_rd1, d_rd2, d_rd3);
  type t_states is (ts_idle, ts_write, ts_d0, ts_read, ts_d1, ts_wait, ts_d2, ts_d3, ts_d4, ts_d5, ts_getwd,
                    ts_wrwd, ts_wrwd0, ts_rdwd0, ts_rdwd, ts_wrfifo, ts_readlb, ts_readlb1 );
  type u_states is (us_idle, us_write0, us_write1, us_write2, us_write3, us_read0, us_read1, us_read2);

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------

constant  DEFAULT_TEST_WORDS    : std_logic_vector(31 downto 0) := X"00040000"; -- 65536 words = 1 MB
--constant  DEFAULT_TEST_WORDS    : std_logic_vector(31 downto 0) := X"00000010"; -- 4 words = 64 bytes
constant  DELAY_COUNT           : std_logic_vector(31 downto 0) := X"02FAF080";
constant  DDR_SIZE              : natural := 1024*1024*1024;
constant  PHY_BYTES             : natural := 4;  -- 32-bit DQ for Genesys2
constant  BURST_BYTES           : natural := 8;  -- MIG burst size BL8 = 8
constant  UI_APP_WORD_BYTES     : natural := 32; -- 256-bit UI read write DATA length
constant  UI_BURST_WORDS        : natural := PHY_BYTES*BURST_BYTES/UI_APP_WORD_BYTES; -- 2*8/16 = 1 for Genesys2 4:1 Controller
constant  CMD_WRITE             : std_logic_vector(2 downto 0) := "000";
constant  CMD_READ              : std_logic_vector(2 downto 0) := "001";
constant  XADC_ADDR_SPACE       : std_logic_vector(3 downto 0) := X"2";

-- VESA 1920x1080 60 f/s Timing
constant  VESADMT_ACTIVE_H_PIXELS   : natural := 1920;
constant  VESADMT_ACTIVE_V_LINES    : natural := 1080;
constant  VESADMT_HORI_LINE         : natural := 2200;
constant  VESADMT_HORI_BACK         : natural := 148;
constant  VESADMT_HORI_FRONT        : natural := 88;
constant  VESADMT_VERT_LINE         : natural := 1125;
constant  VESADMT_VERT_BACK         : natural := 36;
constant  VESADMT_VERT_FRONT        : natural := 4;
constant  VESADMT_H_SYNC_CYCLE      : natural := 44;
constant  VESADMT_V_SYNC_CYCLE      : natural := 5;
constant  VESADMT_H_BLANK_PIXELS    : natural := VESADMT_HORI_BACK+VESADMT_HORI_FRONT+VESADMT_H_SYNC_CYCLE; -- 88+40+128=256
constant  VESADMT_V_BLANK_LINES     : natural := VESADMT_VERT_BACK+VESADMT_VERT_FRONT+VESADMT_V_SYNC_CYCLE; -- 23+1+4=28

-------------------------------------------------------------------------------
--  Signal Declarations
-------------------------------------------------------------------------------

signal current_state         : sm_states;
signal d_state               : d_states;
signal tstate                : t_states;
signal ustate                : u_states;
signal clk100                : std_logic;
signal clk25                 : std_logic;
signal clk10                 : std_logic;
signal areset                : std_logic;
signal arstn                 : std_logic;
signal pll_islocked          : std_logic;
signal pll_islocked1         : std_logic;
signal target_wr_address     : std_logic_vector(23 downto 0);
signal target_dout           : std_logic_vector(127 downto 0);
signal target_wren           : std_logic;
signal target_rd_address     : std_logic_vector(23 downto 0);
signal target_din            : std_logic_vector(127 downto 0);
signal target_rden           : std_logic;

signal xadc_do               : std_logic_vector(15 downto 0);
signal xadc_dwe              : std_logic;
signal xadc_drdy             : std_logic;
signal xadc_den              : std_logic;
signal xadc_addr_r           : std_logic_vector(6 downto 0);
signal xadc_di_r             : std_logic_vector(15 downto 0);
signal xadc_alarm            : std_logic_vector(7 downto 0);
signal xadc_overtemp_alarm   : std_logic;

signal init_calib_complete    : std_logic;
signal rst                    : std_logic;
signal sys_rst_n              : std_logic := '1';
signal app_addr               : std_logic_vector(28 downto 0) := (others => '0');
signal app_cmd                : std_logic_vector(2 downto 0);
signal app_en                 : std_logic;
signal app_rdy                : std_logic;
signal app_rd_data            : std_logic_vector(255 downto 0);
signal app_rd_data_end        : std_logic;
signal app_rd_data_valid      : std_logic;
signal app_rd_data_valid_r    : std_logic;
signal app_wdf_data           : std_logic_vector(255 downto 0);
signal app_wdf_end            : std_logic;
signal app_wdf_mask           : std_logic_vector(31 downto 0);
signal app_wdf_rdy            : std_logic;
signal app_wdf_wren           : std_logic;
signal app_wdf_wren_i         : std_logic;
signal wtimer                 : std_logic_vector(31 downto 0);
signal rtimer                 : std_logic_vector(31 downto 0);
signal wr_addr                : std_logic_vector(28 downto 0) := (others => '0');
signal wr_addr_r              : std_logic_vector(28 downto 0) := (others => '0');
signal rd_addr                : std_logic_vector(28 downto 0) := (others => '0');
signal rd_addr_r              : std_logic_vector(28 downto 0) := (others => '0');
signal wr_addr_ld             : std_logic;
signal rd_addr_ld             : std_logic;

signal ui_clk                 : std_logic;
signal clk200                 : std_logic;
signal clk400                 : std_logic;
signal clk533                 : std_logic;
signal wcount                 : std_logic_vector(31 downto 0);
signal rcount                 : std_logic_vector(31 downto 0);
signal dcount                 : std_logic_vector(31 downto 0);
signal r_flg                  : std_logic;
signal w_flg                  : std_logic;

signal ddr_test_mode          : std_logic;

signal rst_cnt                : std_logic_vector(31 downto 0);
signal burst_word             : std_logic_vector(2 downto 0);
signal ADDRESS_BLOCK_SIZE     : std_logic_vector(app_addr'length-1 downto 0) := CONV_STD_LOGIC_VECTOR(BURST_BYTES,app_addr'length);
signal MAX_DDR_RST_COUNT      : std_logic_vector(31 downto 0);

signal wcount_r               : std_logic_vector(31 downto 0);
signal rcount_r               : std_logic_vector(31 downto 0);
signal ecount_r               : std_logic_vector(31 downto 0);
signal wtimer_r               : std_logic_vector(31 downto 0);
signal rtimer_r               : std_logic_vector(31 downto 0);
signal clr_stats              : std_logic;
signal ui_reg_update_stb      : std_logic;
signal ck120_reg_update_stb   : std_logic;
signal ck120_reg_update_stb_r : std_logic;
signal TEST_WORDS_r           : std_logic_vector(31 downto 0);
signal TEST_BASE_ADDR_r       : std_logic_vector(31 downto 0);
signal ui_TEST_WORDS_r        : std_logic_vector(31 downto 0);
signal ui_TEST_BASE_ADDR_r    : std_logic_vector(31 downto 0);

signal dpti_wfifo_wren        : std_logic;
signal dpti_rfifo_rden        : std_logic;
signal dpti_wr_req_n          : std_logic;
signal dpti_rd_req_n          : std_logic;
signal dpti_rst               : std_logic;
signal dpti_wr_data           : std_logic_vector(7 downto 0);
signal dpti_rd_data           : std_logic_vector(7 downto 0);
signal dpti_ui_wr_data        : std_logic_vector(255 downto 0);
signal dpti_ui_rd_data        : std_logic_vector(255 downto 0);
signal dpti_byte_count        : std_logic_vector(5 downto 0);
signal usrFull                : std_logic;

signal ui_ddr_test_start_stb_r    : std_logic;
signal ui_ddr_tscnt               : std_logic_vector(3 downto 0);
signal mig_temp                   : std_logic_vector(11 downto 0);

signal xdac_probe0                : std_logic_vector(7 downto 0);
signal xdac_probe1                : std_logic_vector(7 downto 0);
signal xdac_probe2                : std_logic_vector(7 downto 0);
signal xdac_probe3                : std_logic_vector(7 downto 0);

signal dbg_test_states            : std_logic_vector(4 downto 0);
signal ddr_test_complete_flg      : std_logic;
signal ddr_test_complete_flg_r    : std_logic;

signal dbg_cmd_i            : std_logic_vector(7 downto 0);
signal dbg_rxdata_i         : std_logic_vector(7 downto 0);
signal dbg_txdata_i         : std_logic_vector(7 downto 0);
signal report_data_r        : std_logic_vector(23 downto 0);
signal wreqcnt              : std_logic_vector(31 downto 0);
signal rdreqcnt             : std_logic_vector(31 downto 0);
signal rddvcnt              : std_logic_vector(31 downto 0);
signal clk_dvi              : std_logic := '0';
signal clk_dvin             : std_logic := '0';
signal clk_vga              : std_logic := '0';
signal reset                : std_logic;
signal red                  : std_logic_vector(7 downto 0) := (others => '0');
signal green                : std_logic_vector(7 downto 0) := (others => '0');
signal blue                 : std_logic_vector(7 downto 0) := (others => '0');
signal hsync                : std_logic := '0';
signal vsync                : std_logic := '0';
signal blank                : std_logic := '0';
signal red_s                : std_logic;
signal green_s              : std_logic;
signal blue_s               : std_logic;
signal clock_s              : std_logic;
signal pdata_r              : std_logic_vector(7 downto 0);
signal pdata_g              : std_logic_vector(7 downto 0);
signal pdata_b              : std_logic_vector(7 downto 0);
signal dly_hSync            : std_logic;
signal dly_vSync            : std_logic;
signal dly_blank            : std_logic;
signal vSync_r              : std_logic;
signal vSync_r1             : std_logic;
signal ts                   : std_logic_vector(31 downto 0);


signal ireg_address         : std_logic_vector(3 downto 0);
signal ireg_data_out        : std_logic_vector(31 downto 0);
signal ireg_write_stb       : std_logic;
signal ireg_data_in         : std_logic_vector(31 downto 0);
signal ireg_read_stb        : std_logic;
signal ibusy                : std_logic;
signal ureg_0               : std_logic_vector(31 downto 0);
signal ureg_1               : std_logic_vector(31 downto 0);
signal ureg_2               : std_logic_vector(31 downto 0);
signal ureg_3               : std_logic_vector(31 downto 0);
signal ureg_4               : std_logic_vector(31 downto 0);
signal ureg_5               : std_logic_vector(31 downto 0);
signal ureg_6               : std_logic_vector(31 downto 0);
signal ureg_7               : std_logic_vector(31 downto 0);
signal ureg_8               : std_logic_vector(31 downto 0);
signal ureg_9               : std_logic_vector(31 downto 0);
signal ureg_10              : std_logic_vector(31 downto 0);
signal ureg_11              : std_logic_vector(31 downto 0);
signal ureg_12              : std_logic_vector(31 downto 0);
signal ureg_13              : std_logic_vector(31 downto 0);
signal ureg_14              : std_logic_vector(31 downto 0);
signal ureg_15              : std_logic_vector(31 downto 0);
signal stat_r               : std_logic_vector(31 downto 0);
signal Hbs_flg              : std_logic;
signal Hbs_flg_r            : std_logic;
signal Hbs_flg_r1           : std_logic;
signal Vbs_flg              : std_logic;
signal Fbs_flg              : std_logic;
signal linebuffer_wren      : std_logic;
signal clut_addr            : std_logic_vector(7 downto 0);
signal clut_data            : std_logic_vector(23 downto 0);
signal clut_wren            : std_logic;
signal clut_wren_r          : std_logic;

signal rbg_32_data          : std_logic_vector(31 downto 0);

signal xadc_wr_data_bf      : std_logic_vector(15 downto 0);
signal xadc_add_bf          : std_logic_vector(6 downto 0);
signal xadc_wren_bit        : std_logic;
signal xadc_stb             : std_logic;
signal xadc_stb_r1          : std_logic;
signal xadc_stb_flg         : std_logic;
signal xadc_rd_reg          : std_logic_vector(11 downto 0);
signal xadc_flg             : std_logic;

signal soft_rst_bit         : std_logic;
signal soft_vbl_en_n_bit    : std_logic;

signal test_state_dgb       : std_logic_vector(4 downto 0);
signal test_state_dgb_1     : std_logic_vector(23 downto 0);

signal UI_WORDS_PER_LINE    : natural := 4*VESADMT_ACTIVE_H_PIXELS/UI_APP_WORD_BYTES;

-- Led Prueba
signal led_prueba           : std_logic;

--Sync pulse det generator
signal freq_sync            : std_logic_vector(31 downto 0);
signal delay_pulse          : std_logic_vector(31 downto 0);
signal width_pulse          : std_logic_vector(31 downto 0);
signal delay_det            : std_logic_vector(31 downto 0);
signal width_det            : std_logic_vector(31 downto 0);
signal sync                 : std_logic := '0';
signal MZI                  : std_logic := '0';
--------------------------
signal freq_1        : std_logic_vector(31 downto 0);
signal delay_1       : std_logic_vector(31 downto 0);
signal width_1       : std_logic_vector(31 downto 0);
signal freq_2        : std_logic_vector(31 downto 0);
signal delay_2       : std_logic_vector(31 downto 0);
signal width_2       : std_logic_vector(31 downto 0);
signal freq_3        : std_logic_vector(31 downto 0);
signal delay_3       : std_logic_vector(31 downto 0);
signal width_3       : std_logic_vector(31 downto 0);
signal freq_4        : std_logic_vector(31 downto 0);
signal delay_4       : std_logic_vector(31 downto 0);
signal width_4       : std_logic_vector(31 downto 0);
signal freq_5        : std_logic_vector(31 downto 0);
signal delay_5       : std_logic_vector(31 downto 0);
signal width_5       : std_logic_vector(31 downto 0);
signal freq_6        : std_logic_vector(31 downto 0);
signal delay_6       : std_logic_vector(31 downto 0);
signal width_6       : std_logic_vector(31 downto 0);
------Nuevas-------------- CMD
signal square_wave_1 : std_logic := '0';
signal square_wave_2 : std_logic := '0';
signal square_wave_3 : std_logic := '0';
signal square_wave_4 : std_logic := '0';
signal square_wave_5 : std_logic := '0';
signal square_wave_6 : std_logic := '0';
------------------------------
signal gateDet              : std_logic := '0';
signal det_sync_pulse_det_gen : std_logic := '0';
signal det0_in              : std_logic;
signal det1_in              : std_logic;
signal sync_ext             : std_logic;

--Control parametros
 signal ReadyRx             : std_logic;
 signal bufferRx            : std_logic_vector(7 downto 0);
 signal estadoRx            : std_logic_vector(7 downto 0);
 signal ready_Tx_PC         : std_logic;
 signal buttonStartTx       : std_logic;
 signal pixelColor          : std_logic_vector(63 downto 0);
 signal image_load          : std_logic;
 signal image_address       : std_logic_vector(7 downto 0);
 signal new_pixClr          : std_logic;
 signal ireg_read           : std_logic_vector(31 downto 0);
 signal ireg_write          : std_logic_vector(31 downto 0);
 signal reset_DDR3          : std_logic; 
 signal dead_time_APD       : std_logic_vector(7 downto 0);
 signal pulse_control       : std_logic;
 signal CW                  : std_logic;
 signal AliceBob            : std_logic;

--UART_Rx
signal tick : std_logic;
signal PinRx: std_logic;


--pmodDA2
signal enable_dac         : std_logic;
signal data_in_A_dac      : std_logic_vector(11 downto 0);
signal data_in_B_dac      : std_logic_vector(11 downto 0);
signal CS_dac             : std_logic;
signal DIN_A_dac          : std_logic ;
signal DIN_B_dac          : std_logic ;

--Modulo AccCuentas
signal sclrAcc       : std_logic;
signal EnAcc         : std_logic;
signal EnACCCtrl     : std_logic;
signal APD0          : std_logic_vector(31 downto 0);
signal APD1          : std_logic_vector(31 downto 0);
signal EXPIO_P_APD0  : std_logic;
signal EXPIO_P_APD1  : std_logic;
signal gate_idqube   : std_logic;

--Modulo UART_TX_control
signal pin_Tx               : std_logic;
signal mascara              : std_logic_vector(7 downto 0);
signal mascara_out          : std_logic_vector(31 downto 0);
signal startTx              : std_logic;
signal ReadyTx              : std_logic;
signal addraRead            : std_logic_vector(13 downto 0);
signal douta0               : std_logic_vector(15 downto 0);
signal douta1               : std_logic_vector(31 downto 0);
signal douta2               : std_logic_vector(31 downto 0);
-- Modulo control DM
signal controlDM            : std_logic_vector(7 downto 0);
signal dataPoints           : std_logic_vector(15 downto 0); 

--Modulo Control Phase
signal clk_slow    : std_logic;
signal N           : std_logic_vector(15 downto 0);
signal start       : std_logic;
signal psdone      : std_logic;
signal psen        : std_logic := '0';
signal start_phase       : std_logic;
signal psincdec         : std_logic;



begin
-------------------------------------------------------------------------------
--  Component Instantiations
-------------------------------------------------------------------------------

-- Main Clock Generator for 800x600 Display
  PLL2_inst : clk_wiz_0
    port map (
        clk_out1   => clk200,
        clk_out2   => clk400,
        clk_out3   => clk533,     
        clk_out4   => clk100,
        clk_out5   => clk25,
        clk_out6   => clk10,
        reset      => '0',
        locked     => pll_islocked,
        clk_in1_p  => sysclk_p,
        clk_in1_n  => sysclk_n,
        -- DPS signals:
        psen       => psen,
        psclk      => clk10, --10 Mhz
        psincdec   => psincdec,
        psdone     => psdone
    );

--  Cascaded 148.5 MHz Pixel Clocking
  display_clocks_inst : display_clocks
   generic map (
    MULT_MASTER     => 37.125,  -- 
    DIV_MASTER      => 5.0,       -- 
    DIV_5X          => 1.0,     -- 
    DIV_1X          => 5.0,       -- 
    IN_PERIOD       => 10.0     -- 
  )
   port map (
   o_clk_5x     => CLK_DVI,   -- 148.5*5 MHz
   o_clk_5x_n   => CLK_DVIn,  -- 148.5*5 MHz 180 phase
   o_clk_1x     => CLK_VGA,   -- 148.5 MHz Pixel clock
   i_rst        => '0',
   o_locked     => pll_islocked1,
   i_clk        => clk100      -- cascade clock from clk_wiz_0
 );

  -- XADC: Dual 12-Bit 1MSPS Analog-to-Digital Converter
  -- 7 Series
  -- Xilinx HDL Libraries Guide, version 13.4
  XADC_inst : XADC
  generic map (
    -- INIT_40 - INIT_42: XADC configuration registers
    INIT_40 => X"A000", -- 64 sample averaging enabled
    INIT_41 => X"2ef0",
    INIT_42 => X"0500", -- ADCCLK = 120/5 = 24 Mhz
    -- INIT_48 - INIT_4F: Sequence Registers
    INIT_48 => X"4701", -- CHSEL1 - enable Temp VCCINT, VCCAUX, VCCBRAM, and calibration
    INIT_49 => X"0000", -- CHSEL2 - enable nothing else
    INIT_4A => X"0001", -- SEQAVG1 disabled all channels
    INIT_4B => X"0000", -- SEQAVG2 disabled all channels
    INIT_4C => X"0000", -- SEQINMODE0 - all channels unipolar
    INIT_4D => X"0000", -- SEQINMODE1 - all channels unipolar
    INIT_4E => X"0000", -- SEQACQ0 - No extra settling time all channels
    INIT_4F => X"0000", -- SEQACQ1 - No extra settling time all channels
    -- INIT_50 - INIT_58, INIT5C: Alarm Limit Registers
    INIT_50 => X"b5ed", -- Temp upper alarm trigger 85�C
    INIT_51 => X"5999", -- Vccint upper alarm limit 1.05V
    INIT_52 => X"A147", -- Vccaux upper alarm limit 1.89V
    INIT_53 => X"dddd", -- OT upper alarm limit 125�C - see Thermal Management
    INIT_54 => X"a93a", -- Temp lower alarm reset 60�C
    INIT_55 => X"5111", -- Vccint lower alarm limit 0.95V
    INIT_56 => X"91Eb", -- Vccaux lower alarm limit 1.71V
    INIT_57 => X"ae4e", -- OT lower alarm reset 70�C - see Thermal Management
    INIT_58 => X"5999", -- VCCBRAM upper alarm limit 1.05V
    INIT_5C => X"5111", -- VCCBRAM lower alarm limit 0.95V
    -- Simulation attributes: Set for proepr simulation behavior
    SIM_DEVICE => "7SERIES", -- Select target device (values)
    SIM_MONITOR_FILE => "design.txt" -- Analog simulation data file name
  )
  port map (
    -- ALARMS: 8-bit (each) output: ALM, OT
    ALM             => xadc_alarm,          -- 8-bit output: Output alarm for temp, Vccint, Vccaux and Vccbram
    OT              => xadc_overtemp_alarm, -- 1-bit output: Over-Temperature alarm
    -- Dynamic Reconfiguration Port (DRP): 16-bit (each) output: Dynamic Reconfiguration Ports
    DO              => xadc_do,             -- 16-bit output: DRP output data bus
    DRDY            => xadc_drdy,           -- 1-bit output: DRP data ready
    -- STATUS: 1-bit (each) output: XADC status ports
    BUSY            => open, -- 1-bit output: ADC busy output
    CHANNEL         => open, -- 5-bit output: Channel selection outputs
    EOC             => open, -- 1-bit output: End of Conversion
    EOS             => open, -- 1-bit output: End of Sequence
    JTAGBUSY        => open, -- 1-bit output: JTAG DRP transaction in progress output
    JTAGLOCKED      => open, -- 1-bit output: JTAG requested DRP port lock
    JTAGMODIFIED    => open, -- 1-bit output: JTAG Write to the DRP has occurred
    MUXADDR         => open, -- 5-bit output: External MUX channel decode
    -- Auxiliary Analog-Input Pairs: 16-bit (each) input: VAUXP[15:0], VAUXN[15:0]
    VAUXN           => (others => '0'),     -- 16-bit input: N-side auxiliary analog input
    VAUXP           => (others => '0'),     -- 16-bit input: P-side auxiliary analog input
    -- CONTROL and CLOCK: 1-bit (each) input: Reset, conversion start and clock inputs
    CONVST          => '0',                 -- 1-bit input: Convert start input
    CONVSTCLK       => '0',                 -- 1-bit input: Convert start input
    RESET           => '0',                 -- 1-bit input: Active-high reset
    -- Dedicated Analog Input Pair: 1-bit (each) input: VP/VN
    VN              => '0',                 -- 1-bit input: N-side analog input
    VP              => '0',                 -- 1-bit input: P-side analog input
    -- Dynamic Reconfiguration Port (DRP): 7-bit (each) input: Dynamic Reconfiguration Ports
    DADDR           => xadc_addr_r,         -- 7-bit input: DRP address bus
    DCLK            => ui_clk,              -- 1-bit input: DRP clock clk100
    DEN             => xadc_den,            -- 1-bit input: DRP enable signal
    DI              => xadc_di_r,           -- 16-bit input: DRP input data bus
    DWE             => xadc_dwe             -- 1-bit input: DRP write enable
  );


  DPTI_inst : dpti_ctrl
  port map(
    wr_clk      => ui_clk,
    wr_en       => dpti_wfifo_wren,
    wr_full     => usrFull,
    wr_afull    => dpti_wr_req_n, -- asserted < 4000 bytes in the FIFO
    wr_err      => open,
    wr_count    => open,
    wr_di       => dpti_wr_data,
    rd_clk      => ui_clk,
    rd_en       => dpti_rfifo_rden,
    rd_empty    => dpti_rd_req_n,
    rd_aempty   => open,
    rd_err      => open,
    rd_count    => open,
    rd_do       => dpti_rd_data,
    rst         => dpti_rst,
    prog_clko   => prog_clko,
    prog_rxen   => prog_rxen,
    prog_txen   => prog_txen,
    prog_spien  => prog_spien,
    prog_rdn    => prog_rdn,
    prog_wrn    => prog_wrn,
    prog_oen    => prog_oen,
    prog_siwun  => prog_siwun,
    prog_d      => prog_d
  );


-- MIG User Interface instantiation

  DDR_INF_inst : mig_7series_0
  Port map (
    ddr3_dq             => ddr3_dq,
    ddr3_dqs_n          => ddr3_dqs_n,
    ddr3_dqs_p          => ddr3_dqs_p,
    ddr3_addr           => ddr3_addr,
    ddr3_ba             => ddr3_ba,
    ddr3_ras_n          => ddr3_ras_n,
    ddr3_cas_n          => ddr3_cas_n,
    ddr3_we_n           => ddr3_we_n ,
    ddr3_reset_n        => ddr3_reset_n,
    ddr3_ck_p           => ddr3_ck_p,
    ddr3_ck_n           => ddr3_ck_n,
    ddr3_cke            => ddr3_cke,
    ddr3_cs_n           => ddr3_cs_n,
    ddr3_dm             => ddr3_dm,
    ddr3_odt            => ddr3_odt,
    app_addr            => app_addr(28 downto 0),
    app_cmd             => app_cmd,
    app_en              => app_en,
    app_wdf_data        => app_wdf_data,
    app_wdf_end         => app_wdf_end ,
    app_wdf_mask        => app_wdf_mask,
    app_wdf_wren        => app_wdf_wren,
    app_rd_data         => app_rd_data,
    app_rd_data_end     => app_rd_data_end,
    app_rd_data_valid   => app_rd_data_valid,
    app_rdy             => app_rdy,
    app_wdf_rdy         => app_wdf_rdy,
    app_sr_req          => '0',
    app_ref_req         => '0',
    app_zq_req          => '0',
    app_sr_active       => open,
    app_ref_ack         => open,
    app_zq_ack          => open,
    ui_clk              => ui_clk,
    ui_clk_sync_rst     => rst,
    init_calib_complete => init_calib_complete,
    sys_clk_i           => clk200,
    device_temp_i       => mig_temp,
    sys_rst             => sys_rst_n  -- in the MIG Wizard this is active low by default
  );

  Inst_dvid: dvid PORT MAP(
      clk       => clk_dvi,
      clk_n     => clk_dvin,
      clk_pixel => clk_vga,
      red_p     => pdata_r,
      green_p   => pdata_g,
      blue_p    => pdata_b,
      blank     => dly_blank,
      hsync     => dly_hSync,
      vsync     => dly_vSync,
      -- outputs to TMDS drivers
      red_s     => red_s,
      green_s   => green_s,
      blue_s    => blue_s,
      clock_s   => clock_s
   );


  LB_0 : VideoLineBuffer_1
    generic map(
      H_PIXELS      => VESADMT_ACTIVE_H_PIXELS)
    port map(
      areset        => reset,
      p_clk         => clk_vga,
      s_clk         => ui_clk,
      hsync_in      => hSync,
      vsync_in      => vSync,
      blank_in      => blank,
      p_data_out    => rbg_32_data,
      p_data_in     => app_rd_data,
      wren          => linebuffer_wren,
      add_rst       => '0',
      hsync_out     => dly_hSync,
      vsync_out     => dly_vSync,
      blank_out     => dly_blank
    );
-- Control Phase
control_phase_inst : control_phase
    port map(
        clk100MHz => clk100,
        clk_slow  => clk10,
        N         => N,                
        start     => start_phase,      
        psdone    => psdone,   
        psen      => psen,
        psincdec  => psincdec   
    );

 --Sync pulse det generator

 sync_pulse_det_gen_1 : sync_pulse_det_generator
 port map (
            clk         => clk200, 
            freq_sync   => freq_sync,
            delay_pulse => delay_pulse,
            width_pulse => width_pulse,
            delay_det   => delay_det,
            width_det   => width_det,
            sync        => sync,
            MZI         => MZI,
            det         => det_sync_pulse_det_gen,
            AliceBob    => AliceBob,
            sync_ext    => sync_ext,
            pulse_control => pulse_control,
            CW          => CW
        );
        
       
  sync_pulse_det_gen_2 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_1,
    delay_pulse => delay_1,
    width_pulse => width_1,
    delay_det   => delay_1,  
    width_det   => width_1,   
    sync        => open,
    MZI         => square_wave_1,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);

sync_pulse_det_gen_3 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_2,
    delay_pulse => delay_2,
    width_pulse => width_2,
    delay_det   => delay_2,  
    width_det   => width_2,   
    sync        => open,
    MZI         => square_wave_2,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);

sync_pulse_det_gen_4 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_3,
    delay_pulse => delay_3,
    width_pulse => width_3,
    delay_det   => delay_3,  
    width_det   => width_3,   
    sync        => open,
    MZI         => square_wave_3,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);

sync_pulse_det_gen_5 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_4,
    delay_pulse => delay_4,
    width_pulse => width_4,
    delay_det   => delay_4,  
    width_det   => width_4,   
    sync        => open,
    MZI         => square_wave_4,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);

sync_pulse_det_gen_6 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_5,
    delay_pulse => delay_5,
    width_pulse => width_5,
    delay_det   => delay_5,  
    width_det   => width_5,   
    sync        => open,
    MZI         => square_wave_5,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);   

sync_pulse_det_gen_7 : sync_pulse_det_generator
port map (
    clk         => clk533, 
    freq_sync   => freq_6,
    delay_pulse => delay_6,
    width_pulse => width_6,
    delay_det   => delay_6,  
    width_det   => width_6,   
    sync        => open,
    MZI         => square_wave_6,
    det         => open,
    AliceBob    => '1',
    sync_ext    => '0',
    pulse_control => '1', 
    CW          => '0'
);

  --Control_parametros
   control_parametros_inst : control_parametros
   port map (
            clk           => clk100,
            ReadyRx       => ReadyRx,
            bufferRx      => bufferRx,
            estadoRx      => estadoRx,
            ready_Tx_PC   => ready_Tx_PC,
            buttonStartTx => buttonStartTx,
            freq_sync     => freq_sync,
            delay_pulse   => delay_pulse,
            width_pulse   => width_pulse,
            delay_det     => delay_det,
            width_det     => width_det,
            freq_1      => freq_1,
            delay_1     => delay_1,
            width_1     => width_1,
            freq_2      => freq_2,
            delay_2     => delay_2,
            width_2     => width_2,
            freq_3      => freq_3,
            delay_3     => delay_3,
            width_3     => width_3,
            freq_4      => freq_4,
            delay_4     => delay_4,
            width_4     => width_4,
            freq_5      => freq_5,
            delay_5     => delay_5,
            width_5     => width_5,
            freq_6      => freq_6,
            delay_6     => delay_6,
            width_6     => width_6,
            pixelColor    => pixelColor,
            image_load    => image_load,
            image_address => image_address,
            new_pixClr    => new_pixClr,
            ireg_read     => ireg_read,
            ireg_write     => ireg_write,
            reset_DDR3    => reset_DDR3,
            enable_dac    => enable_dac,
            data_in_A_dac => data_in_A_dac,
            data_in_B_dac => data_in_B_dac,
            dead_time_APD => dead_time_APD,
            controlDM     => controlDM,
            dataPoints    => dataPoints,
            pulse_control => pulse_control,
            CW            => CW,
            AliceBob      => AliceBob
     );
     
    --Modulo pmodDA2
  pmodDA2_inst : pmodDA2
  port map (
        clk           => clk25,
        enable        => enable_dac,
        data_in_A     => data_in_A_dac,
        data_in_B     => data_in_B_dac,
        CS            => CS_dac,
        DIN_A         => DIN_A_dac,
        DIN_B         => DIN_B_dac
     );


  --UART_Rx
  UART_Rx_inst: UART_Rx
  port map (
            clk      => clk100,
            tick     => tick,
            PinRx    => uart_tx_in,
            bufferRx => bufferRx,
            ReadyRx  => ReadyRx            
  );
  
  --tick_generator
  tick_generator_inst: tick_generator
  port map (
            clk      => clk100,
            tick     => tick
  );
  -- HDMI Differential output buffers
  OBUFDS_blue  : OBUFDS port map ( O  => hdmi_tx_p(0), OB => hdmi_tx_n(0), I  => blue_s  );
  OBUFDS_red   : OBUFDS port map ( O  => hdmi_tx_p(1), OB => hdmi_tx_n(1), I  => green_s );
  OBUFDS_green : OBUFDS port map ( O  => hdmi_tx_p(2), OB => hdmi_tx_n(2), I  => red_s   );
  OBUFDS_clock : OBUFDS port map ( O  => hdmi_tx_clk_p, OB => hdmi_tx_clk_n, I  => clock_s );
      -- generic map ( IOSTANDARD => "DEFAULT")


-- 1920x1080 24-bit Display Mode Video control signal generator
  vga_gen_inst : video_sync_generator
    generic map(
      hori_line     => VESADMT_HORI_LINE,
      hori_back     => VESADMT_HORI_BACK,
      hori_front    => VESADMT_HORI_FRONT,
      vert_line     => VESADMT_VERT_LINE,
      vert_back     => VESADMT_VERT_BACK,
      vert_front    => VESADMT_VERT_FRONT,
      H_sync_cycle  => VESADMT_H_SYNC_CYCLE,
      V_sync_cycle  => VESADMT_V_SYNC_CYCLE)
    port map(
      reset       => reset,
      vga_clk     => clk_vga,
      blank       => blank,
      HS          => hSync,
      VS          => vSync,
      Hbs         => Hbs_flg,
      Vbs         => Vbs_flg,
      Fbs         => Fbs_flg
    );
    
    --AccCuentas
  AccCuentas_inst: AccCuentas
  port map (
            clk             => clk100,
            clk400MHz       => clk400,
            sclr            => sclrAcc,
            En              => EnAcc,
            EnACCCtrl       => EnACCCtrl,
            EXPIO_P_APD0    => det0_in,
            EXPIO_P_APD1    => det1_in,
            APD0            => APD0,
            APD1            => APD1,
            dead_time_APD   => dead_time_APD,
            width_ID220     => width_det,
            delay_ID220     => delay_det,
            masterSync      => sync,
            gate_ID220      => gate_idqube
  );
    
    --UART_TX_control
  UART_TX_control_inst: UART_TX_control
  port map (
            clk                 => clk100,
            tick                => tick,
            pin_Tx              => uart_rx_out,
            Ndata               => dataPoints,
            data16bits_0        => freq_sync(15 downto 0),--listo para agregar otro registro
            data32bits_0        => freq_sync,
            data32bits_1        => delay_pulse,
            data32bits_2        => width_pulse,
            data32bits_3        => delay_det,
            data32bits_4        => width_det,
            --mascara             => mascara,
            startTx_main        => startTx,
            ReadyTx             => ReadyTx,
            addraRead           => addraRead,
            douta0              => douta0,
            douta1              => douta1,
            douta2              => douta2
  );  
  
  
  --control_DM
  control_DM_inst: control_DM
  port map (
    clk                     => clk100,
    sync                    => sync,
    buttonStartTx           => buttonStartTx,
    APD0                    => APD0,
    APD1                    => APD1,
    startTx_main            => startTx,
    ReadyTx                 => ReadyTx,
    controlDM               => controlDM,
    dataPoints              => dataPoints,
    gateDet                 => gateDet,
    vSync                   => vSync,
    width_det               => width_det,
    delay_det               => delay_det,
    addraRead               => addraRead,
    douta0                  => douta0,
    douta1                  => douta1,
    douta2                  => douta2,
    mascara                 => estadoRx,
    mascara_out             => mascara_out,
    sclrAcc                 => sclrAcc,
    EnAcc                   => EnAcc,
    EnACCCtrl               => EnACCCtrl,
    gate_ID220              => gate_idqube
  );

  


------------------------------------------------------------------------------
--  Concurrent Assignments
-------------------------------------------------------------------------------

--  areset            <= (not cpu_resetn OR reset_DDR3);--da problemas en timing
  areset            <= (not cpu_resetn);
  arstn             <= cpu_resetn;


  MAX_DDR_RST_COUNT <= X"00100000";
  app_wdf_data  <= (others => '0') when ddr_test_complete_flg = '0' else  dpti_ui_rd_data;
  app_wdf_mask  <= (others => '0');

  -- For DDR test Status
  xdac_probe0   <= w_flg & r_flg & app_en & app_wdf_wren & app_wdf_end & app_rd_data_valid & app_rd_data_end & Hbs_flg;
  xdac_probe1   <= app_addr(7 downto 0);
  xdac_probe2   <= rdreqcnt(7 downto 0);
  xdac_probe3   <= rcount(7 downto 0);
  ddr_test_mode <= '0';

  ui_TEST_BASE_ADDR_r  <= (others => '0');
  ui_TEST_WORDS_r      <= DEFAULT_TEST_WORDS;

  linebuffer_wren <= '1' when (tstate = ts_readlb and app_rd_data_valid = '1') else
                     '1' when (tstate = ts_readlb1 and app_rd_data_valid = '1') else
                     '0';
  clut_addr   <= ureg_12(31 downto 24);
  clut_data   <= ureg_12(23 downto 0);

  UI_WORDS_PER_LINE <= 4*VESADMT_ACTIVE_H_PIXELS/UI_APP_WORD_BYTES;

  pdata_r   <= rbg_32_data(7 downto 0);
  pdata_g   <= rbg_32_data(15 downto 8);
  pdata_b   <= rbg_32_data(23 downto 16);

  stat_r    <= test_state_dgb_1 &         -- history
               "000" & test_state_dgb;    -- current state



-------------------------------------------------------------------------------
--  Process Declarations
-------------------------------------------------------------------------------

--  type d_states is (d_idle, d_wr0, d_wr1, d_rd0, d_rd1, d_rd2, d_rd3);
  XADC_SM : process (ui_clk, areset, soft_rst_bit)
  begin
    if (areset = '1' or soft_rst_bit = '1') then
      xadc_dwe    <= '0';
      xadc_den    <= '0';
      xadc_addr_r <= (others => '0');
      xadc_di_r   <= (others => '0');
      mig_temp    <= (others => '0');
      xadc_rd_reg <= (others => '0');
      xadc_flg    <= '0';
      xadc_stb_flg  <= '0';
      d_state     <= d_idle;
    elsif rising_edge(ui_clk) then
      if xadc_stb_r1 = '1' then
        xadc_stb_flg <= '1';
      elsif xadc_flg = '1' and d_state = d_rd1 then
        xadc_stb_flg <= '0';
      else
        xadc_stb_flg <= xadc_stb_flg;
      end if;
      case d_state is
        when d_idle =>
          xadc_addr_r <= (others => '0');
          mig_temp    <= mig_temp;
          xadc_den    <= '0';
          xadc_rd_reg <= xadc_rd_reg;
          xadc_flg    <= '0';
          -- allow UART interface to read an XDAC register
          if xadc_stb_flg = '1' and xadc_wren_bit = '0' then
            xadc_dwe        <= '0';
            xadc_den        <= '1';
            xadc_addr_r     <= xadc_add_bf;
            xadc_di_r       <= (others => '0');
            xadc_flg        <= '1';
            d_state         <= d_rd1;
          -- allow UART interface to write an XDAC register
          elsif xadc_stb_flg = '1' and xadc_wren_bit = '1' then
            xadc_dwe        <= '1';
            xadc_den        <= '1';
            xadc_addr_r     <= xadc_add_bf;
            xadc_di_r       <= xadc_wr_data_bf;
            xadc_flg        <= '1';
            d_state         <= d_wr1;
          -- update mig_temp
          elsif xadc_stb_flg = '0' then
            -- keep updating the temperature for the DDR Controller
            xadc_dwe        <= '0';
            xadc_den        <= '1';
            xadc_addr_r     <= (others => '0');
            xadc_di_r       <= (others => '0');
            xadc_flg        <= '0';
            d_state         <= d_rd1;
          else
            xadc_dwe        <= '0';
            xadc_den        <= '0';
            xadc_addr_r     <= (others => '0');
            xadc_di_r       <= (others => '0');
            xadc_flg        <= '0';
            d_state         <= d_idle;
          end if;

        when d_rd0 =>
          xadc_dwe        <= '0';
          xadc_den        <= '1';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          mig_temp        <= mig_temp;
          xadc_rd_reg     <= xadc_rd_reg;
          xadc_flg        <= xadc_flg;
          d_state         <= d_rd1;

        when d_rd1 =>
          xadc_dwe        <= '0';
          xadc_den        <= '0';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          xadc_flg        <= xadc_flg;
          if xadc_drdy = '0' then
            mig_temp      <= mig_temp;
            xadc_rd_reg   <= xadc_rd_reg;
            d_state       <= d_rd1;
          elsif xadc_drdy = '1' and xadc_flg = '1' then
            mig_temp      <= mig_temp;
            xadc_rd_reg   <= xadc_do(15 downto 4);
            d_state       <= d_rd2;
          else
            xadc_rd_reg   <= xadc_rd_reg;
            mig_temp      <= xadc_do(15 downto 4);
            d_state       <= d_rd2;
          end if;

        when d_rd2 =>
          xadc_dwe        <= '0';
          xadc_den        <= '0';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          mig_temp        <= mig_temp;
          xadc_rd_reg     <= xadc_rd_reg;
          xadc_flg        <= '0';
          d_state         <= d_rd3;

        when d_rd3 =>
          xadc_dwe        <= '0';
          xadc_den        <= '0';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          mig_temp        <= mig_temp;
          xadc_rd_reg     <= xadc_rd_reg;
          xadc_flg        <= '0';
          d_state         <= d_idle;

        when d_wr0 =>
          xadc_dwe        <= '1';
          xadc_den        <= '1';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          mig_temp        <= mig_temp;
          xadc_rd_reg     <= xadc_rd_reg;
          xadc_flg        <= '0';
          d_state         <= d_wr0;

        when d_wr1 =>
          xadc_dwe        <= '0';
          xadc_den        <= '0';
          xadc_addr_r     <= xadc_addr_r;
          xadc_di_r       <= xadc_di_r;
          mig_temp        <= mig_temp;
          xadc_rd_reg     <= xadc_rd_reg;
          xadc_flg        <= '0';
          d_state         <= d_idle;

        when others =>
          d_state  <= d_idle;

      end case;
    end if;
  end process XADC_SM;

  -- RegAccess R/W Registers

  -- ureg_0 Control Register
  -- ureg_0(0) enables VideoLineBuffer update when '1'
  process(ui_clk, areset)
  begin
    if areset = '1' then
      ureg_0      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if (ireg_write_stb = '1') then
        if ireg_address = X"0" then
          ureg_0   <= ireg_data_out;
        end if;
      else
        ureg_0     <= ureg_0;
      end if;
    end if;
  end process;

  -- Uart Control register bit assignments
  soft_rst_bit        <= ureg_0(31);
  soft_vbl_en_n_bit   <= ureg_0(0);

  -- ureg_1 DDR Write Base Address Register
  process(ui_clk, areset)
  begin
    if(reset_DDR3 = '1')then
        ureg_1      <= (others => '0');
        if (areset = '1') then
          ureg_1      <= (others => '0');
        elsif rising_edge(ui_clk) then
          if (ireg_write_stb = '1') then
            if ireg_address = X"1" then
              ureg_1   <= ireg_data_out;
            end if;
          else
            ureg_1     <= ireg_write;
          end if;
        end if;
     end if;
  end process;

  -- ureg_2 DDR Read Base Address Register
  process(ui_clk, areset)
  begin
    if areset = '1' then
      ureg_2      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if (ireg_write_stb = '1') then
        if ireg_address = X"2" then
          ureg_2   <= ireg_data_out; --prueba *ireg_data_out*
        end if;
      else
        --ureg_2     <= ireg_read; --ureg_2
        ureg_2     <= mascara_out; --ureg_2
      end if;
    end if;
  end process;

  -- ureg_3 DDR Block Length ( 128-bit Words) Register
  process(ui_clk, areset)
  begin
    if areset = '1' then
      ureg_3      <= DEFAULT_TEST_WORDS;
    elsif rising_edge(ui_clk) then
      if (ireg_write_stb = '1') then
        if ireg_address = X"3" then
          ureg_3   <= ireg_data_out;
        end if;
      else
        ureg_3     <= ureg_3;
      end if;
    end if;
  end process;

  -- XADC access from UART
  process(ui_clk, areset)
  begin
    if areset = '1' then
      ureg_13      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if (ireg_write_stb = '1') then
        if ireg_address = X"D" then
          ureg_13   <= ireg_data_out;
        end if;
      else
        ureg_13     <= ureg_13;
      end if;
    end if;
  end process;

  xadc_wr_data_bf   <= ureg_13(15 downto 0);
  xadc_add_bf       <= ureg_13(22 downto 16);
  xadc_wren_bit     <= ureg_13(31);

  process(ui_clk, areset)
  begin
    if areset = '1' then
      xadc_stb    <= '0';
      xadc_stb_r1 <= '0';
    elsif rising_edge(ui_clk) then
      xadc_stb_r1 <= xadc_stb;
      if (ireg_write_stb = '1') then
        if ireg_address = X"D" then
          xadc_stb   <= '1';
        end if;
      else
          xadc_stb   <= '0';
      end if;
    end if;
  end process;

  -- count DDR read requests
  process(ui_clk, areset)
  begin
    if areset = '1' then
      rdreqcnt      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if clr_stats = '1' then
        rdreqcnt      <= (others => '0');
      elsif (r_flg = '1' and app_en = '1' and app_rdy = '1') then
        rdreqcnt   <= rdreqcnt +1;
      else
        rdreqcnt     <= rdreqcnt;
      end if;
    end if;
  end process;

  -- count DDR data valid words
  process(ui_clk, areset)
  begin
    if areset = '1' then
      rddvcnt      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if clr_stats = '1' then
        rddvcnt      <= (others => '0');
      elsif (app_rd_data_valid = '1') then
        rddvcnt   <= rddvcnt +1;
      else
        rddvcnt     <= rddvcnt;
      end if;
    end if;
  end process;

  -- count DDR write requests
  process(ui_clk, areset)
  begin
    if areset = '1' then
      wreqcnt      <= (others => '0');
    elsif rising_edge(ui_clk) then
      if clr_stats = '1' then
        wreqcnt      <= (others => '0');
      elsif (ustate = us_write1) then
        wreqcnt   <= wreqcnt +1;
      else
        wreqcnt     <= wreqcnt;
      end if;
    end if;
  end process;


  MIG_RESET_proc : process(clk200)
  begin
    if rising_edge(clk200) then
      if rst_cnt < MAX_DDR_RST_COUNT then
        rst_cnt <= rst_cnt + 1;
        sys_rst_n <= '0';
      else
        rst_cnt <= rst_cnt;
        sys_rst_n <= '1';
      end if;
    end if;
  end process MIG_RESET_proc;


--  This implementation of a Mig UI controller issues one 16-byte read or write command
--  at at time. It provides a data rate performance just north of 1620 MB/s, which is about
--  75% of the Genesys2 maximum average rate. The theoretical peak data rate for the Nexys
--  Video Mig 4:1 controller operating with a 900 MHz PHY clock is 7200 MiB/s. I've achieved
--  over 90% of the peak data rate for the Genesys2 board using a different scheme. The following
--  is adequate for most purposes like DDR video frame buffers and uses less power.

--  A state Machine to issue one write or one read command at a time
--  type u_states is (us_idle, us_write0, us_write1, us_write2, us_write3, us_read0, us_read1, us_read2);
  UI_SM : process (ui_clk, areset)
  begin
    if (areset = '1') then
      app_en            <= '0';
      app_cmd           <= CMD_WRITE;
      wr_addr           <= (others => '0');
      rd_addr           <= (others => '0');
      app_wdf_wren      <= '0';
      app_wdf_end       <= '0';
      burst_word        <= (others => '0');
      ustate            <= us_idle;

    elsif rising_edge(ui_clk) then
      app_en            <= '0';
      app_wdf_wren      <= '0';
      app_wdf_end       <= '0';
      case ustate is
        when us_idle =>
          burst_word    <= CONV_STD_LOGIC_VECTOR(UI_BURST_WORDS-1, burst_word'length);
          app_cmd       <= CMD_WRITE;
          if wr_addr_ld = '1' then
            wr_addr     <= ureg_1(28 downto 0); -- Write Base Address
          end if;
          if rd_addr_ld = '1' then
            rd_addr     <= ureg_2(28 downto 0); -- Read Base Address
          end if;
           if (init_calib_complete = '1' and w_flg = '1') then
            ustate <= us_write0;
          elsif (init_calib_complete = '1' and r_flg = '1')  then
            ustate <= us_read0;
          end if;

        -- write enough data to the MIG UI to do 8 burst writes
        when us_write0 =>
          if app_wdf_rdy = '1' and burst_word > 0 then
            app_wdf_wren  <= '1';
            app_wdf_end   <= '0';
            burst_word    <= burst_word -1;
            ustate <= us_write0;
          elsif app_wdf_rdy = '1' and burst_word = 0 then
            app_wdf_wren  <= '1';
            app_wdf_end   <= '1';
            ustate <= us_write1;
          else
            ustate <= us_write0;
          end if;


        when us_write1 =>
          app_en        <= '1';
          app_cmd       <= CMD_WRITE;
          ustate <= us_write2;

        when us_write2 =>
          if app_rdy = '1' then
            wr_addr <= wr_addr + ADDRESS_BLOCK_SIZE;
            ustate <= us_write3;
          else
            app_en        <= '1';
            app_cmd       <= CMD_WRITE;
            ustate <= us_write2;
          end if;

        when us_write3 =>
          ustate <= us_idle;


        when us_read0 =>
          app_en        <= '1';
          app_cmd       <= CMD_READ;
          ustate <= us_read1;

        when us_read1 =>
          if app_rdy = '1' then
            app_cmd       <= CMD_READ;
            rd_addr  <= rd_addr + ADDRESS_BLOCK_SIZE;
            ustate   <= us_read2;
          else
            app_en        <= '1';
            app_cmd       <= CMD_READ;
            ustate <= us_read1;
          end if;

        -- read enough data from the MIG UI to do 8 burst reads
        when us_read2 =>
          if burst_word > 0 then
            burst_word    <= burst_word -1;
            ustate <= us_read2;
          else
            ustate <= us_idle;
          end if;

        when others =>
          ustate  <= us_idle;

      end case;
    end if;
  end process UI_SM;

-- No DPTI upload for this demo
--  dpti_wfifo_wren  <= '1' when ddr_test_mode = '0' and usrFull = '0' and dpti_rd_req_n = '0' else -- loopback
--                      '0';
  dpti_wfifo_wren  <= '0';

  dpti_rfifo_rden  <= '1' when dpti_rd_req_n = '0' and tstate = ts_getwd and dpti_byte_count < "100000" else
                      '0';

  dpti_rst         <= areset;
  dpti_wr_data     <= dpti_rd_data;

  -- clock domain crossing sampling
  process(ui_clk, areset)
  begin
    if areset = '1' then
      Hbs_flg_r      <= '0';
      Hbs_flg_r1     <= '0';
    elsif rising_edge(ui_clk) then
      Hbs_flg_r      <= Hbs_flg;
      Hbs_flg_r1     <= Hbs_flg_r;
    end if;
  end process;

  -- clock domain crossing sampling
  process(ui_clk, areset)
  begin
    if areset = '1' then
      vSync_r      <= '0';
      vSync_r1     <= '0';
    elsif rising_edge(ui_clk) then
      vSync_r      <= vSync;
      vSync_r1     <= vSync_r;
    end if;
  end process;

--  type t_states is (ts_idle, ts_write, ts_d0, ts_read, ts_d1, ts_wait, ts_d2, ts_d3, ts_d4, ts_getwd,
--                    ts_wrwd, ts_wrwd0, ts_rdwd0, ts_rdwd, ts_wrfifo);
  TEST_SM : process (ui_clk, areset, soft_rst_bit)
  begin
    if (areset = '1' or soft_rst_bit = '1') then
      wcount          <= (others => '0');
      rcount          <= (others => '0');
      dcount          <= (others => '0');
      wtimer          <= (others => '0');
      rtimer          <= (others => '0');
      app_addr        <= (others => '0');
      dpti_byte_count <= (others => '0');
      w_flg           <= '0';
      r_flg           <= '0';
      wr_addr_ld      <= '0';
      rd_addr_ld      <= '0';
      ddr_test_complete_flg <= '0';
      tstate          <= ts_idle;
      clr_stats       <= '0';

    elsif rising_edge(ui_clk) then
      w_flg           <= '0';
      r_flg           <= '0';
      wr_addr_ld      <= '0';
      rd_addr_ld      <= '0';
      case tstate is
        -- Simple Priority Multi-Channel MIG controller
        when ts_idle =>
          clr_stats       <= '1';
          dpti_byte_count <= (others => '0');
          if ddr_test_complete_flg = '1' and vSync_r1 = '0' then
            rd_addr_ld      <= '1';
          else
            rd_addr_ld      <= '0';
          end if;
          -- After DDR Calibration Clear a few DDR Video Frame Buffers
          if init_calib_complete = '1' and ddr_test_complete_flg = '0' then
            clr_stats <= '0';
            tstate <= ts_write;
            wcount    <= (others => '0');
            rcount    <= (others => '0');
            dcount    <= (others => '0');
            wtimer    <= (others => '0');
            rtimer    <= (others => '0');
          -- If There's DPTI data to write the DDR Video Frame Buffer, and we're in a Vertical Blanking Period
          -- then service the request
          elsif ddr_test_complete_flg = '1' and dpti_rd_req_n = '0' then
            wcount    <= (others => '0');
            clr_stats <= '0';
            tstate <= ts_getwd;
          -- Fill VideoLineBuffer before every displayable horizontal Line period
          elsif ddr_test_complete_flg = '1' and Hbs_flg_r = '1' and Hbs_flg_r1 = '0' and  dpti_rd_req_n = '1' then
            clr_stats <= '0';
            tstate      <= ts_readlb;
          else
            tstate <= ts_idle;
          end if;

        -- DDR <-- DPTI upload data
        when ts_getwd =>
          app_addr  <= wr_addr;
          w_flg     <= '0';
          if dpti_rd_req_n = '0' and dpti_byte_count < "100000" then
            dpti_ui_rd_data <= dpti_rd_data & dpti_ui_rd_data(255 downto 8);
            dpti_byte_count <= dpti_byte_count +1;
            wcount <= wcount;
            tstate <= ts_getwd;
          elsif dpti_rd_req_n = '1' and dpti_byte_count < "100000" then
            dpti_ui_rd_data <= dpti_ui_rd_data;
            dpti_byte_count <= dpti_byte_count;
            wcount <= wcount;
            tstate <= ts_getwd;
          else
            dpti_ui_rd_data <= dpti_ui_rd_data;
            dpti_byte_count <= (others => '0');
            wcount <= wcount + 1;
            tstate <= ts_wrwd0;
          end if;

        -- issue a ui write operation and wait for it to complete
        when ts_wrwd0 =>
          dpti_byte_count <= (others => '0');
          app_addr  <= wr_addr;
          wcount    <= wcount;
          dpti_ui_rd_data <= dpti_ui_rd_data;
          w_flg     <= '1';
          if app_wdf_wren = '1' then
            w_flg     <= '0';
            tstate <= ts_wrwd;
          else
            w_flg     <= '1';
            tstate <= ts_wrwd0;
          end if;

        when ts_wrwd =>
          dpti_byte_count <= (others => '0');
          app_addr  <= wr_addr;
          wcount    <= wcount;
          dpti_ui_rd_data <= dpti_ui_rd_data;
          w_flg     <= '0';
          wr_addr_ld      <= '1';
          tstate <= ts_idle;

        -- DDR --> DPTI download data

        when ts_rdwd0 =>
          dpti_byte_count <= (others => '0');
          app_addr  <= rd_addr;
          dpti_byte_count <= (others => '0');
          if app_en = '1' or dpti_wr_req_n = '1' then
            r_flg       <= '0';
            tstate <= ts_rdwd0;
          else
            r_flg       <= '1';
            tstate <= ts_rdwd;
          end if;


        when ts_rdwd =>
          r_flg         <= '0';
          app_addr  <= rd_addr;
          dpti_byte_count <= (others => '0');
          if  rcount < ui_TEST_WORDS_r and app_rd_data_valid = '1' then
            dpti_ui_wr_data <= app_rd_data;
            rcount <= rcount + 1;
            tstate <= ts_wrfifo;
          elsif rcount < ui_TEST_WORDS_r and app_rd_data_valid = '0' then
            tstate <= ts_rdwd;
          else
            tstate <= ts_wait;
          end if;

        when ts_wrfifo =>
          r_flg         <= '0';
          app_addr  <= rd_addr;
          if dpti_byte_count < "10000" then
            dpti_byte_count <= dpti_byte_count +1;
            dpti_ui_wr_data <= X"00" & dpti_ui_wr_data(255 downto 8);
            tstate <= ts_wrfifo;
          else
            tstate <= ts_rdwd0;
          end if;


        -- ddr_test_mode = '0'
        when ts_write =>
          app_addr  <= wr_addr;
          w_flg     <= '1';
          wtimer    <= wtimer +1;
          ddr_test_complete_flg <= '0';
          if wcount < ui_TEST_WORDS_r and app_wdf_wren = '1' then
            wcount <= wcount + 1;
            tstate <= ts_write;
          elsif wcount < ui_TEST_WORDS_r and app_wdf_wren = '0' then
            tstate <= ts_write;
            dpti_byte_count <= (others => '0');
          else
            tstate <= ts_d0;
          end if;

        when ts_d0 =>
          ddr_test_complete_flg <= '0';
          wr_addr_ld      <= '1';
          tstate    <= ts_d1;

        when ts_d1 =>
          ddr_test_complete_flg <= '0';
          tstate    <= ts_read;

        when ts_read =>
          r_flg         <= '1';
          app_addr  <= rd_addr;
          rtimer    <= rtimer+ 1;
          ddr_test_complete_flg <= '0';
          if rdreqcnt < ui_TEST_WORDS_r and app_rd_data_valid = '1' then
            rcount <= rcount + 1;
            tstate <= ts_read;
          elsif rdreqcnt < ui_TEST_WORDS_r and app_rd_data_valid = '0' then
            tstate <= ts_read;
          else
            r_flg         <= '0';
            tstate <= ts_d3; -- test
          end if;

        when ts_readlb =>
          r_flg         <= '1';
          app_addr  <= rd_addr;
          if rdreqcnt < CONV_STD_LOGIC_VECTOR(UI_WORDS_PER_LINE,rdreqcnt'length) then
            tstate <= ts_readlb;
          else
            r_flg         <= '0';
            tstate <= ts_readlb1;
          end if;

        when ts_readlb1 =>
          r_flg         <= '0';
          app_addr  <= rd_addr;
          if rddvcnt < CONV_STD_LOGIC_VECTOR(UI_WORDS_PER_LINE,rdreqcnt'length) then
            tstate <= ts_readlb1;
          else
            tstate <= ts_idle;
          end if;


        when ts_d2 =>
          r_flg         <= '0';
          rtimer    <= rtimer+ 1;
          ddr_test_complete_flg <= '0';
          if app_rd_data_valid = '1' then
            rcount    <= rcount + 1;
          end if;
          if rddvcnt < ui_TEST_WORDS_r then
            tstate    <= ts_d2;
          else
            tstate    <= ts_d3;
          end if;


        when ts_d3 =>
          ddr_test_complete_flg <= '1';
          tstate    <= ts_wait;

        when ts_wait =>
          ddr_test_complete_flg <= '0';
          if dcount < DELAY_COUNT then
            dcount <= dcount + 1;
            tstate <= ts_wait;
          else
            tstate <= ts_d4;
          end if;

        when ts_d4 =>
          ddr_test_complete_flg <= '1';
          tstate    <= ts_d5;

        when ts_d5 =>
          ddr_test_complete_flg <= '1';
          tstate    <= ts_idle;


        when others =>
          tstate  <= ts_idle;

      end case;
    end if;
  end process TEST_SM;

  -- I've left in the following UART based debug process to show how
  -- to debug a state machine without using Vivado Hardware Manager
  -- because sometimes a board design, for certain HDL applications
  -- is incompatible with recent versions of Vivado Hardware Manager
  -- and ILA or VIO components.
  process(ui_clk, areset)
  begin
    if areset = '1' then
      test_state_dgb   <= (others => '0'); -- Current State
      test_state_dgb_1 <= (others => '0'); -- State History
    elsif rising_edge(ui_clk) then
      case tstate is
        when ts_idle =>
          test_state_dgb   <= "00000"; -- 0
          test_state_dgb_1 <= test_state_dgb_1 or X"000001";
        when ts_getwd =>
          test_state_dgb   <= "00001"; -- 1
          test_state_dgb_1 <= test_state_dgb_1 or X"000002";
        when ts_wrwd0 =>
          test_state_dgb   <= "00010"; -- 2
          test_state_dgb_1 <= test_state_dgb_1 or X"000004";
        when ts_wrwd =>
          test_state_dgb   <= "00011"; -- 3
          test_state_dgb_1 <= test_state_dgb_1 or X"000008";
        when ts_rdwd0 =>
          test_state_dgb   <= "00100"; -- 4
          test_state_dgb_1 <= test_state_dgb_1 or X"000010";
        when ts_rdwd =>
          test_state_dgb   <= "00101"; -- 5
          test_state_dgb_1 <= test_state_dgb_1 or X"000020";
        when ts_wrfifo =>
          test_state_dgb   <= "00110"; -- 6
          test_state_dgb_1 <= test_state_dgb_1 or X"000040";
        when ts_write =>
          test_state_dgb   <= "00111"; -- 7
          test_state_dgb_1 <= test_state_dgb_1 or X"000080";
        when ts_d0 =>
          test_state_dgb   <= "01000"; -- 8
          test_state_dgb_1 <= test_state_dgb_1 or X"000100";
        when ts_d1 =>
          test_state_dgb   <= "01001"; -- 9
          test_state_dgb_1 <= test_state_dgb_1 or X"000200";
        when ts_read =>
          test_state_dgb   <= "01010"; -- A
          test_state_dgb_1 <= test_state_dgb_1 or X"000400";
        when ts_readlb =>
          test_state_dgb   <= "01011"; -- B
          test_state_dgb_1 <= test_state_dgb_1 or X"000800";
        when ts_readlb1 =>
          test_state_dgb   <= "01100"; -- C
          test_state_dgb_1 <= test_state_dgb_1 or X"001000";
        when ts_d2 =>
          test_state_dgb   <= "01101"; -- D
          test_state_dgb_1 <= test_state_dgb_1 or X"002000";
        when ts_d3 =>
          test_state_dgb   <= "01110"; -- E
          test_state_dgb_1 <= test_state_dgb_1 or X"004000";
        when ts_wait =>
          test_state_dgb   <= "01111"; -- F
          test_state_dgb_1 <= test_state_dgb_1 or X"008000";
        when ts_d4 =>
          test_state_dgb   <= "10000"; -- 10
          test_state_dgb_1 <= test_state_dgb_1 or X"010000";
        when ts_d5 =>
          test_state_dgb   <= "10001"; -- 11
          test_state_dgb_1 <= test_state_dgb_1 or X"020000";
        when others =>
          test_state_dgb   <= "11111"; -- 1F
          test_state_dgb_1 <= test_state_dgb_1 or X"800000";
        end case;
    end if;
  end process;


  process(ui_clk, areset)
  begin
    if areset = '1' then
      app_rd_data_valid_r   <= '0';
    elsif rising_edge(ui_clk) then
      app_rd_data_valid_r   <= app_rd_data_valid;
    end if;
  end process;


  -- rolling timestamp
  process(clk100, areset)
  begin
    if areset = '1' then
      ts   <= (others => '0');
    elsif rising_edge(clk100) then
      ts   <= ts + 1;
    end if;
  end process;
  
---------------------------------------------------------------------------------
----  Other Output Assignments
---------------------------------------------------------------------------------
  led(7 downto 1)   <= "0000000";
  led(0)        <= sync;
  
  --led(0)  <= led_prueba;

  --fmc_la_p_00 <=  sync;
  fmc_la_p_04 <=  gate_idqube; --edit DMA 22-09-24
  --fmc_la_p_18 <=  MZI;
  --fmc_la_p_24 <=  sync;
  

-- FMC
  --sync_ext   <= fmc_la_n_00;
  --det0_in    <= fmc_la_p_32;
  --det1_in    <= fmc_la_p_17;
  
  jc(0) <=  CS_dac;
  jc(1) <=  DIN_A_dac;
  jc(2) <=  DIN_B_dac;
  jc(3) <=  clk25;

-- Nuevas

 fmc_la_p_00 <= square_wave_1;
 fmc_la_n_00 <= square_wave_2;
 fmc_la_p_17 <= square_wave_3;
 fmc_la_n_17 <= square_wave_4;
 fmc_la_p_18 <= square_wave_5;
 fmc_la_n_18 <= square_wave_6;

end rtl;
