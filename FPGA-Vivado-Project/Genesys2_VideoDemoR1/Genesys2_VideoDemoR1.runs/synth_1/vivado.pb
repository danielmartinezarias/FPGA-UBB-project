
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:022

00:00:072	
555.7662	
184.844Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen2g
ec:/Users/crist/OneDrive/Documentos/Dropbox/PC/Downloads/Genesys2VideoDemo_R1/Genesys2VideoDemo_R1/hdl2 
Can't find the specified path.Z19-2248h px� 
c
"Loaded Vivado IP repository '%s'.
1332*coregen2
D:/Vivado/2023.2/data/ipZ19-2313h px� 
�
�The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.cache/ipZ19-4995h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.srcs/utils_1/imports/synth_1/Genesys2_VideoDemoR1.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.srcs/utils_1/imports/synth_1/Genesys2_VideoDemoR1.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
p
Command: %s
53*	vivadotcl2?
=synth_design -top Genesys2_VideoDemoR1 -part xc7k325tffg900-2Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k325tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k325tZ17-349h px� 
�
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for new releases.
719*common2	
2023.10Z17-1540h px� 
E
Loading part %s157*device2
xc7k325tffg900-2Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
10620Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 1482.047 ; gain = 439.945
h px� 
�
synthesizing module '%s'638*oasys2
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
978@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	clk_wiz_02�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/clk_wiz_0_stub.v2
62
	PLL2_inst2
	clk_wiz_02p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
9018@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/clk_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/clk_wiz_0_stub.v2
68@Z8-6155h px� 
U
%s
*synth2=
;	Parameter MULT_MASTER bound to: 37.125000 - type: double 
h p
x
� 
S
%s
*synth2;
9	Parameter DIV_MASTER bound to: 5.000000 - type: double 
h p
x
� 
O
%s
*synth27
5	Parameter DIV_5X bound to: 1.000000 - type: double 
h p
x
� 
O
%s
*synth27
5	Parameter DIV_1X bound to: 5.000000 - type: double 
h p
x
� 
S
%s
*synth2;
9	Parameter IN_PERIOD bound to: 10.000000 - type: double 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
display_clocks2f
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/display_clocks.v2
102
display_clocks_inst2
display_clocks2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
9208@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
display_clocks2
 2h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/display_clocks.v2
108@Z8-6157h px� 
U
%s
*synth2=
;	Parameter MULT_MASTER bound to: 37.125000 - type: double 
h p
x
� 
S
%s
*synth2;
9	Parameter DIV_MASTER bound to: 5.000000 - type: double 
h p
x
� 
O
%s
*synth27
5	Parameter DIV_5X bound to: 1.000000 - type: double 
h p
x
� 
O
%s
*synth27
5	Parameter DIV_1X bound to: 5.000000 - type: double 
h p
x
� 
S
%s
*synth2;
9	Parameter IN_PERIOD bound to: 10.000000 - type: double 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
MMCME2_BASE2
 22
.D:/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
822948@Z8-6157h px� 
S
%s
*synth2;
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
h p
x
� 
Y
%s
*synth2A
?	Parameter CLKFBOUT_MULT_F bound to: 37.125000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
h p
x
� 
Y
%s
*synth2A
?	Parameter CLKOUT0_DIVIDE_F bound to: 1.000000 - type: double 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT1_DIVIDE bound to: 5 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
h p
x
� 
U
%s
*synth2=
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Q
%s
*synth29
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: double 
h p
x
� 
P
%s
*synth28
6	Parameter DIVCLK_DIVIDE bound to: 5 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
h p
x
� 
R
%s
*synth2:
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMCME2_BASE2
 2
02
122
.D:/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
822948@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2
 22
.D:/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
19518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2
 2
02
122
.D:/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
19518@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display_clocks2
 2
02
12h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/display_clocks.v2
108@Z8-6155h px� 
M
%s
*synth25
3	Parameter INIT_40 bound to: 16'b1010000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_41 bound to: 16'b0010111011110000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_42 bound to: 16'b0000010100000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_48 bound to: 16'b0100011100000001 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_49 bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4A bound to: 16'b0000000000000001 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4B bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4C bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4D bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4E bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_4F bound to: 16'b0000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_50 bound to: 16'b1011010111101101 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_51 bound to: 16'b0101100110011001 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_52 bound to: 16'b1010000101000111 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_53 bound to: 16'b1101110111011101 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_54 bound to: 16'b1010100100111010 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_55 bound to: 16'b0101000100010001 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_56 bound to: 16'b1001000111101011 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_57 bound to: 16'b1010111001001110 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_58 bound to: 16'b0101100110011001 
h p
x
� 
M
%s
*synth25
3	Parameter INIT_5C bound to: 16'b0101000100010001 
h p
x
� 
R
%s
*synth2:
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
h p
x
� 
[
%s
*synth2C
A	Parameter SIM_MONITOR_FILE bound to: design.txt - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	XADC_inst2
XADC2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
9408@Z8-113h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	dpti_ctrl2c
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
392
	DPTI_inst2
	dpti_ctrl2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
10058@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	dpti_ctrl2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
748@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

dpti_clock2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/dpti_clock_stub.v2
62
clkwiz_inst2

dpti_clock2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
1838@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

dpti_clock2
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/dpti_clock_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

dpti_clock2
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/dpti_clock_stub.v2
68@Z8-6155h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
I
%s
*synth21
/	Parameter DRIVE bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter SLEW bound to: FAST - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IOBUF_inst2
IOBUF2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
2458@Z8-113h px� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111110100000 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DEVICE bound to: 7SERIES - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter FIFO_SIZE bound to: 36Kb - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FIFO_DUALCLOCK_MACRO2B
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
362
usr2dpti_fifo2
FIFO_DUALCLOCK_MACRO2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
3348@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
unimacro_FIFO_DUALCLOCK_MACRO2D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
708@Z8-638h px� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111110100000 
h p
x
� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DEVICE bound to: 7SERIES - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter FIFO_SIZE bound to: 36Kb - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
%s
*synth2j
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2k
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter SIM_MODE bound to: SAFE - type: string 
h p
x
� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111110100000 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 9 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter DO_REG bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter EN_SYN bound to: 0 - type: bool 
h p
x
� 
P
%s
*synth28
6	Parameter FIFO_MODE bound to: FIFO36 - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
%s
*synth2j
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
R
%s
*synth2:
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
h p
x
� 
�
%s
*synth2k
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

fifo_36_bl2

FIFO36E12D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
8438@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
unimacro_FIFO_DUALCLOCK_MACRO2
02
12D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
708@Z8-256h px� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111111110000 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DEVICE bound to: 7SERIES - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter FIFO_SIZE bound to: 36Kb - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FIFO_DUALCLOCK_MACRO2B
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
362
dpti2usr_fifo2
FIFO_DUALCLOCK_MACRO2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
3698@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2/
-unimacro_FIFO_DUALCLOCK_MACRO__parameterized02D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
708@Z8-638h px� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111111110000 
h p
x
� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter DEVICE bound to: 7SERIES - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter FIFO_SIZE bound to: 36Kb - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
%s
*synth2j
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
%s
*synth2k
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
M
%s
*synth25
3	Parameter SIM_MODE bound to: SAFE - type: string 
h p
x
� 
Y
%s
*synth2A
?	Parameter ALMOST_EMPTY_OFFSET bound to: 16'b0000000000001111 
h p
x
� 
X
%s
*synth2@
>	Parameter ALMOST_FULL_OFFSET bound to: 16'b0000111111110000 
h p
x
� 
M
%s
*synth25
3	Parameter DATA_WIDTH bound to: 9 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter DO_REG bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter EN_SYN bound to: 0 - type: bool 
h p
x
� 
P
%s
*synth28
6	Parameter FIFO_MODE bound to: FIFO36 - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter FIRST_WORD_FALL_THROUGH bound to: 1 - type: bool 
h p
x
� 
�
%s
*synth2j
h	Parameter INIT bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
R
%s
*synth2:
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
h p
x
� 
�
%s
*synth2k
i	Parameter SRVAL bound to: 72'b000000000000000000000000000000000000000000000000000000000000000000000000 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

fifo_36_bl2

FIFO36E12D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
8438@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2/
-unimacro_FIFO_DUALCLOCK_MACRO__parameterized02
02
12D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
708@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	dpti_ctrl2
02
12e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dpti_ctrl.vhd2
748@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
mig_7series_02�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/mig_7series_0_stub.v2
62
DDR_INF_inst2
mig_7series_02p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
10368@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
mig_7series_02
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/mig_7series_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mig_7series_02
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/mig_7series_0_stub.v2
68@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
dvid2^
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
152
	Inst_dvid2
dvid2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
10798@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
dvid2`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
318@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TDMS_encoder2f
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/TMDS_encoder.vhd2
142
TDMS_encoder_red2
TDMS_encoder2`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
568@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TDMS_encoder2h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/TMDS_encoder.vhd2
228@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TDMS_encoder2
02
12h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/TMDS_encoder.vhd2
228@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TDMS_encoder2f
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/TMDS_encoder.vhd2
142
TDMS_encoder_green2
TDMS_encoder2`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
578@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TDMS_encoder2f
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/TMDS_encoder.vhd2
142
TDMS_encoder_blue2
TDMS_encoder2`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
588@Z8-3491h px� 
P
%s
*synth28
6	Parameter DDR_ALIGNMENT bound to: C0 - type: string 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
L
%s
*synth24
2	Parameter SRTYPE bound to: ASYNC - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	ODDR2_red2
ODDR22`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
608@Z8-113h px� 
P
%s
*synth28
6	Parameter DDR_ALIGNMENT bound to: C0 - type: string 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
L
%s
*synth24
2	Parameter SRTYPE bound to: ASYNC - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
ODDR2_green2
ODDR22`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
638@Z8-113h px� 
P
%s
*synth28
6	Parameter DDR_ALIGNMENT bound to: C0 - type: string 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
L
%s
*synth24
2	Parameter SRTYPE bound to: ASYNC - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

ODDR2_blue2
ODDR22`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
668@Z8-113h px� 
P
%s
*synth28
6	Parameter DDR_ALIGNMENT bound to: C0 - type: string 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
L
%s
*synth24
2	Parameter SRTYPE bound to: ASYNC - type: string 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
ODDR2_clock2
ODDR22`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
698@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
dvid2
02
12`
\C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dvid.vhd2
318@Z8-256h px� 
N
%s
*synth26
4	Parameter H_PIXELS bound to: 1920 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VideoLineBuffer_12k
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/VideoLineBuffer_1.vhd2
812
LB_02
VideoLineBuffer_12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
10978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
VideoLineBuffer_12m
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/VideoLineBuffer_1.vhd2
1088@Z8-638h px� 
N
%s
*synth26
4	Parameter H_PIXELS bound to: 1920 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DPRAM_W245_R322�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/DPRAM_W245_R32_stub.v2
62
rgb_mem_inst2
DPRAM_W245_R322m
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/VideoLineBuffer_1.vhd2
1868@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
DPRAM_W245_R322
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/DPRAM_W245_R32_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DPRAM_W245_R322
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/DPRAM_W245_R32_stub.v2
68@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VideoLineBuffer_12
02
12m
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/VideoLineBuffer_1.vhd2
1088@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
control_phase2e
cC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_phase.v2
232
control_phase_inst2
control_phase2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
11168@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
control_phase2
 2g
cC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_phase.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2g
cC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_phase.v2
678@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control_phase2
 2
02
12g
cC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_phase.v2
238@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sync_pulse_det_generator2p
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
232
sync_pulse_det_gen_12
sync_pulse_det_generator2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
11288@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
sync_pulse_det_generator2
 2r
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

OneShoot2
 2b
^C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/OneShoot.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

OneShoot2
 2
02
12b
^C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/OneShoot.v2
238@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2r
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
1018@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2r
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
1348@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2r
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
1708@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sync_pulse_det_generator2
 2
02
12r
nC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/sync_pulse_det_generator.v2
238@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
control_parametros2j
hC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_parametros.v2
232
control_parametros_inst2
control_parametros2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
12508@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
control_parametros2
 2l
hC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_parametros.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control_parametros2
 2
02
12l
hC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_parametros.v2
238@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
pmodDA22_
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/pmodDA2.v2
232
pmodDA2_inst2	
pmodDA22p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13048@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2	
pmodDA22
 2a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/pmodDA2.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/pmodDA2.v2
348@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
pmodDA22
 2
02
12a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/pmodDA2.v2
238@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
UART_Rx2_
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Rx.v2
232
UART_Rx_inst2	
UART_Rx2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13178@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2	
UART_Rx2
 2a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Rx.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
UART_Rx2
 2
02
12a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Rx.v2
238@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
tick_generator2f
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/tick_generator.v2
232
tick_generator_inst2
tick_generator2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13278@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
tick_generator2
 2h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/tick_generator.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tick_generator2
 2
02
12h
dC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/tick_generator.v2
238@Z8-6155h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
OBUFDS_blue2
OBUFDS2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13338@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2

OBUFDS_red2
OBUFDS2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13348@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
OBUFDS_green2
OBUFDS2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13358@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
OBUFDS_clock2
OBUFDS2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13368@Z8-113h px� 
O
%s
*synth27
5	Parameter hori_line bound to: 2200 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter hori_back bound to: 148 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter hori_front bound to: 88 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter vert_line bound to: 1125 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter vert_back bound to: 36 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter vert_front bound to: 4 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter H_sync_cycle bound to: 44 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter V_sync_cycle bound to: 5 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
video_sync_generator2l
jC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/video_sync_generator.v2
12
vga_gen_inst2
video_sync_generator2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13418@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
video_sync_generator2
 2n
jC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/video_sync_generator.v2
18@Z8-6157h px� 
O
%s
*synth27
5	Parameter hori_line bound to: 2200 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter hori_back bound to: 148 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter hori_front bound to: 88 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter vert_line bound to: 1125 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter vert_back bound to: 36 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter vert_front bound to: 4 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter H_sync_cycle bound to: 44 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter V_sync_cycle bound to: 5 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
video_sync_generator2
 2
02
12n
jC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/video_sync_generator.v2
18@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

AccCuentas2b
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/AccCuentas.v2
212
AccCuentas_inst2

AccCuentas2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13638@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

AccCuentas2
 2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/AccCuentas.v2
218@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PreProc_Cs_ID2202
 2j
fC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/PreProc_Cs_ID220.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
SimpleOneShot_ID2202
 2m
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/SimpleOneShot_ID220.v2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SimpleOneShot_ID2202
 2
02
12m
iC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/SimpleOneShot_ID220.v2
218@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PreProc_Cs_ID2202
 2
02
12j
fC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/PreProc_Cs_ID220.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
counter_ADP2
 2e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/counter_ADP.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
counter_ADP2
 2
02
12e
aC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/counter_ADP.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ID2202
 2_
[C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/ID220.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2_
[C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/ID220.v2
448@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ID2202
 2
02
12_
[C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/ID220.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

AccCuentas2
 2
02
12d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/AccCuentas.v2
218@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UART_TX_control2g
eC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_TX_control.v2
222
UART_TX_control_inst2
UART_TX_control2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
13828@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
UART_TX_control2
 2i
eC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_TX_control.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	dcodeNto82
 2c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dcodeNto8.v2
238@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dcodeNto8.v2
598@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dcodeNto8.v2
408@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	dcodeNto82
 2
02
12c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/dcodeNto8.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	modulo_Tx2
 2c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/modulo_Tx.v2
218@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
MemTx_12
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/MemTx_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
MemTx_12
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/MemTx_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

control_Tx2
 2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_Tx.v2
218@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_Tx.v2
468@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

control_Tx2
 2
02
12d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_Tx.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
UART_Tx2
 2a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Tx.v2
218@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Tx.v2
518@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
UART_Tx2
 2
02
12a
]C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_Tx.v2
218@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	modulo_Tx2
 2
02
12c
_C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/modulo_Tx.v2
218@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2i
eC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_TX_control.v2
828@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
UART_TX_control2
 2
02
12i
eC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/UART_TX_control.v2
228@Z8-6155h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

control_DM2b
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
222
control_DM_inst2

control_DM2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
14058@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2

control_DM2
 2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
228@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
blk_mem_gen_12
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/blk_mem_gen_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
blk_mem_gen_12
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/blk_mem_gen_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
blk_mem_gen_02
 2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/blk_mem_gen_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
blk_mem_gen_02
 2
02
12�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/.Xil/Vivado-29028-LAPTOP-RR96MLV1/realtime/blk_mem_gen_0_stub.v2
68@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
2008@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
1028@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

control_DM2
 2
02
12d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
228@Z8-6155h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

reset_DDR32p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
16428@Z8-614h px� 
�
default block is never used226*oasys2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
18188@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Genesys2_VideoDemoR12
02
12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
978@Z8-256h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dip_pattern2
unimacro_FIFO_DUALCLOCK_MACRO2D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
5908@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dip_pattern2/
-unimacro_FIFO_DUALCLOCK_MACRO__parameterized02D
@D:/Vivado/2023.2/data/vhdl/src/unimacro/FIFO_DUALCLOCK_MACRO.vhd2
5908@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2
control_parametros2l
hC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_parametros.v2
698@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
count32bits_reg2d
`C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/control_DM.v2
1268@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
xadc_rd_reg_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
14888@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

ureg_3_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
16818@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
wreqcnt_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
17668@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

wtimer_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
19448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

rtimer_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
19458@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dpti_ui_wr_data_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
20598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
test_state_dgb_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
14718@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
test_state_dgb_1_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
14708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
app_rd_data_valid_r_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
22608@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ts_reg2p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
22718@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_p_012
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
328@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_p_062
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
358@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_p_152
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
368@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_n_172
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
388@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_n_242
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
418@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_p_262
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
438@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
fmc_la_n_322
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
458@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ireg_data_out2
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
7308@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ireg_address2
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
7298@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ireg_write_stb2
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
7318@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2
Genesys2_VideoDemoR12p
lC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys2_VideoDemoR1.vhd2
7078@Z8-3848h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[7]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[6]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[5]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[4]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[3]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[2]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[1]2
0Z8-3917h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[31]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[30]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[29]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[28]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[27]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[26]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[25]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[24]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[23]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[22]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[21]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[20]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[19]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[18]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[17]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[16]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[15]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[14]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[13]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[12]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[11]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[10]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[9]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[8]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[7]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[6]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[5]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[4]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[3]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[2]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[1]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[0]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[31]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[30]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[29]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[28]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[27]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[26]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[25]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[24]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[23]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[22]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[21]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[20]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[19]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[18]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[17]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[16]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[15]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[14]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[13]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[12]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[11]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[10]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[9]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[8]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[7]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[6]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[5]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[4]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[3]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[2]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[1]2

control_DMZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
delay_det[0]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
control_parametrosZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
control_phaseZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
add_rst2
VideoLineBuffer_1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_p_012
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_p_062
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_p_152
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_n_172
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_n_242
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_p_262
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_n_322
Genesys2_VideoDemoR1Z8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
jc[7]2
Genesys2_VideoDemoR1Z8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
jc[6]2
Genesys2_VideoDemoR1Z8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
jc[5]2
Genesys2_VideoDemoR1Z8-7129h px� 
|
9Port %s in module %s is either unconnected or has no load4866*oasys2
jc[4]2
Genesys2_VideoDemoR1Z8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnc2
Genesys2_VideoDemoR1Z8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnd2
Genesys2_VideoDemoR1Z8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnl2
Genesys2_VideoDemoR1Z8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnr2
Genesys2_VideoDemoR1Z8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnu2
Genesys2_VideoDemoR1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
fmc_la_p_322
Genesys2_VideoDemoR1Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1630.383 ; gain = 588.281
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1630.383 ; gain = 588.281
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1630.383 ; gain = 588.281
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0722

1630.3832
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
20Z29-17h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_blue2
ODDR22
ODDR2
clk_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_clock2
ODDR22
ODDR2
clk_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_green2
ODDR22
ODDR2
clk_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_red2
ODDR22
ODDR2
clk_nZ29-151h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
control_DM_inst/MEM_ADC0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
control_DM_inst/MEM_ADC0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
control_DM_inst/MEM_ADC1	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
control_DM_inst/MEM_ADC1	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1/blk_mem_gen_1_in_context.xdc2
control_DM_inst/MEM_DAC0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1/blk_mem_gen_1_in_context.xdc2
control_DM_inst/MEM_DAC0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/MemTx_1/MemTx_1/MemTx_1_in_context.xdc24
0UART_TX_control_inst/modulo_Tx_1/MemTx_8x65535_2	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/MemTx_1/MemTx_1/MemTx_1_in_context.xdc24
0UART_TX_control_inst/modulo_Tx_1/MemTx_8x65535_2	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/DPRAM_W245_R32/DPRAM_W245_R32/DPRAM_W245_R32_in_context.xdc2
LB_0/rgb_mem_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/DPRAM_W245_R32/DPRAM_W245_R32/DPRAM_W245_R32_in_context.xdc2
LB_0/rgb_mem_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/dpti_clock/dpti_clock/dpti_clock_in_context.xdc2
DPTI_inst/clkwiz_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/dpti_clock/dpti_clock/dpti_clock_in_context.xdc2
DPTI_inst/clkwiz_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/mig_7series_0/mig_7series_0/mig_7series_0_in_context.xdc2
DDR_INF_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/mig_7series_0/mig_7series_0/mig_7series_0_in_context.xdc2
DDR_INF_inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0/clk_wiz_0_in_context.xdc2
	PLL2_inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0/clk_wiz_0_in_context.xdc2
	PLL2_inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2k
gC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys-2_Video.xdc8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2"
 PLL2_inst/inst/clk_in1_clk_wiz_02k
gC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys-2_Video.xdc2
4388@Z12-507h px�
�
Finished Parsing XDC File [%s]
178*designutils2k
gC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys-2_Video.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2i
gC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys-2_Video.xdc2(
&.Xil/Genesys2_VideoDemoR1_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
gC:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/Genesys-2_Video.xdc2(
&.Xil/Genesys2_VideoDemoR1_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2b
^C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/timing.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2b
^C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/timing.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
^C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/srcs/timing.xdc2(
&.Xil/Genesys2_VideoDemoR1_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/dont_touch.xdc8Z20-178h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1708.4102
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 17 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 8 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 4 instances
  ODDR2 => ODDR: 4 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0282

1708.4102
0.000Z17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
LB_0/rgb_mem_inst2
clka2
6.734Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.00022
0UART_TX_control_inst/modulo_Tx_1/MemTx_8x65535_22
clka2
10.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
control_DM_inst/MEM_ADC02
clka2
10.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
control_DM_inst/MEM_ADC12
clka2
10.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
control_DM_inst/MEM_DAC02
clka2
10.000Z38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:22 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7k325tffg900-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:22 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:23 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
stPtiCur_reg2
	dpti_ctrlZ8-802h px� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
control2_reg2
control_phaseZ8-802h px� 

3inferred FSM for state register '%s' in module '%s'802*oasys2
control4_reg2
sync_pulse_det_generatorZ8-802h px� 

3inferred FSM for state register '%s' in module '%s'802*oasys2
control2_reg2
sync_pulse_det_generatorZ8-802h px� 

3inferred FSM for state register '%s' in module '%s'802*oasys2
control3_reg2
sync_pulse_det_generatorZ8-802h px� 
m
3inferred FSM for state register '%s' in module '%s'802*oasys2
control_reg2	
pmodDA2Z8-802h px� 
l
3inferred FSM for state register '%s' in module '%s'802*oasys2

ctrlRx_reg2	
UART_RxZ8-802h px� 
i
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
ID220Z8-802h px� 
s
3inferred FSM for state register '%s' in module '%s'802*oasys2
controlCode_reg2
	dcodeNto8Z8-802h px� 
s
3inferred FSM for state register '%s' in module '%s'802*oasys2
regControl_reg2

control_TxZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
controlTx_reg2	
UART_TxZ8-802h px� 
z
3inferred FSM for state register '%s' in module '%s'802*oasys2
d_state_reg2
Genesys2_VideoDemoR1Z8-802h px� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2

ustate_reg2
Genesys2_VideoDemoR1Z8-802h px� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2

tstate_reg2
Genesys2_VideoDemoR1Z8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                               10 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
control2_reg2

sequential2
control_phaseZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
control2_reg2	
one-hot2
sync_pulse_det_generatorZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
control3_reg2	
one-hot2
sync_pulse_det_generatorZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                                0 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                                1 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
control4_reg2

sequential2
sync_pulse_det_generatorZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
control_reg2	
one-hot2	
pmodDA2Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                           000001 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                           000010 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                           000100 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                           001000 |                              011
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                           010000 |                              100
h p
x
� 
y
%s
*synth2a
_                 iSTATE4 |                           100000 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

ctrlRx_reg2	
one-hot2	
UART_RxZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
ID220Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE4 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              101 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
controlCode_reg2

sequential2
	dcodeNto8Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
regControl_reg2

sequential2

control_TxZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
controlTx_reg2

sequential2	
UART_TxZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 us_idle |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_               us_write0 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_               us_write1 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_               us_write2 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_               us_write3 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_                us_read0 |                              101 |                              101
h p
x
� 
y
%s
*synth2a
_                us_read1 |                              110 |                              110
h p
x
� 
y
%s
*synth2a
_                us_read2 |                              111 |                              111
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

ustate_reg2

sequential2
Genesys2_VideoDemoR1Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 ts_idle |                   00000000000001 |                            00000
h p
x
� 
y
%s
*synth2a
_                ts_write |                   00000000000010 |                            00001
h p
x
� 
y
%s
*synth2a
_                   ts_d0 |                   00000000000100 |                            00010
h p
x
� 
y
%s
*synth2a
_                   ts_d1 |                   00000000001000 |                            00100
h p
x
� 
y
%s
*synth2a
_                 ts_read |                   00000000010000 |                            00011
h p
x
� 
y
%s
*synth2a
_                   ts_d3 |                   00000000100000 |                            00111
h p
x
� 
y
%s
*synth2a
_                 ts_wait |                   00000001000000 |                            00101
h p
x
� 
y
%s
*synth2a
_                   ts_d4 |                   00000010000000 |                            01000
h p
x
� 
y
%s
*synth2a
_                   ts_d5 |                   00000100000000 |                            01001
h p
x
� 
y
%s
*synth2a
_                ts_getwd |                   00001000000000 |                            01010
h p
x
� 
y
%s
*synth2a
_                ts_wrwd0 |                   00010000000000 |                            01100
h p
x
� 
y
%s
*synth2a
_                 ts_wrwd |                   00100000000000 |                            01011
h p
x
� 
y
%s
*synth2a
_               ts_readlb |                   01000000000000 |                            10000
h p
x
� 
y
%s
*synth2a
_              ts_readlb1 |                   10000000000000 |                            10001
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

tstate_reg2	
one-hot2
Genesys2_VideoDemoR1Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  d_idle |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_                   d_rd1 |                            00010 |                              100
h p
x
� 
y
%s
*synth2a
_                   d_rd2 |                            00100 |                              101
h p
x
� 
y
%s
*synth2a
_                   d_rd3 |                            01000 |                              110
h p
x
� 
y
%s
*synth2a
_                   d_wr1 |                            10000 |                              010
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
d_state_reg2	
one-hot2
Genesys2_VideoDemoR1Z8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:25 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   29 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   26 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   8 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   9 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	  11 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	  10 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 5     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 42    
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              256 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               64 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 45    
h p
x
� 
H
%s
*synth20
.	               29 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 8     
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 26    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 11    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 94    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  256 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  14 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  11 Input   29 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   29 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   8 Input   29 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  14 Input   29 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  59 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   6 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	  11 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  14 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input   10 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   4 Input   10 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   6 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    8 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  13 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  11 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    7 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   6 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  14 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   5 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  13 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  59 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 116   
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 19    
h p
x
� 
F
%s
*synth2.
,	  59 Input    1 Bit        Muxes := 55    
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 20    
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  13 Input    1 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	  10 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	  14 Input    1 Bit        Muxes := 12    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB18 140 RAMB36 70)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
f
%s
*synth2N
LDSP Report: Generating DSP mascara_out, operation Mode is: (A:0x1fa400)*B2.
h p
x
� 
a
%s
*synth2I
GDSP Report: register mascara_aux_reg is absorbed into DSP mascara_out.
h p
x
� 
^
%s
*synth2F
DDSP Report: operator mascara_out0 is absorbed into DSP mascara_out.
h p
x
� 
g
%s
*synth2O
MDSP Report: Generating DSP mascara_out0, operation Mode is: (A:0x1fa400)*B2.
h p
x
� 
b
%s
*synth2J
HDSP Report: register mascara_aux_reg is absorbed into DSP mascara_out0.
h p
x
� 
_
%s
*synth2G
EDSP Report: operator mascara_out0 is absorbed into DSP mascara_out0.
h p
x
� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[7]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[6]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[5]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[4]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[3]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[2]2
0Z8-3917h px� 
t
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12
led[1]2
0Z8-3917h px� 
x
+design %s has port %s driven by constant %s3447*oasys2
Genesys2_VideoDemoR12

prog_siwun2
1Z8-3917h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[31]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[30]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[29]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[28]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[27]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[26]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[25]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[24]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[23]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[22]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[21]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[20]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[19]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[18]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[17]2

control_DMZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
width_det[16]2

control_DMZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_control3_reg[2]2
sync_pulse_det_generatorZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_control3_reg[1]2
sync_pulse_det_generatorZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_control3_reg[0]2
sync_pulse_det_generatorZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_onehot_d_state_reg[4]2
Genesys2_VideoDemoR1Z8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:39 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
X
%s
*synth2@
> Sort Area is  mascara_out0_0 : 0 0 : 388 388 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  mascara_out_2 : 0 0 : 388 388 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name | DSP Mapping     | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|control_DM  | (A:0x1fa400)*B2 | 21     | 8      | -      | -      | 29     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|control_DM  | (A:0x1fa400)*B2 | 21     | 8      | -      | -      | 29     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:48 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:49 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:51 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
*BlackBox module %s has unconnected pin %s
3599*oasys2
	PLL2_inst2
resetZ8-4442h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:24 ; elapsed = 00:00:57 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name          | RTL Name          | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Genesys2_VideoDemoR1 | LB_0/hsync_r4_reg | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|Genesys2_VideoDemoR1 | LB_0/vsync_r4_reg | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|Genesys2_VideoDemoR1 | LB_0/blank_r4_reg | 4      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+---------------------+-------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2~
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2
}|control_DM  | A*B'        | 21     | 8      | -      | -      | 29     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}|control_DM  | A*B'        | 21     | 8      | -      | -      | 29     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
>
%s
*synth2&
$+------+---------------+----------+
h p
x
� 
>
%s
*synth2&
$|      |BlackBox name  |Instances |
h p
x
� 
>
%s
*synth2&
$+------+---------------+----------+
h p
x
� 
>
%s
*synth2&
$|1     |clk_wiz_0      |         1|
h p
x
� 
>
%s
*synth2&
$|2     |mig_7series_0  |         1|
h p
x
� 
>
%s
*synth2&
$|3     |dpti_clock     |         1|
h p
x
� 
>
%s
*synth2&
$|4     |DPRAM_W245_R32 |         1|
h p
x
� 
>
%s
*synth2&
$|5     |MemTx_1        |         1|
h p
x
� 
>
%s
*synth2&
$|6     |blk_mem_gen_1  |         1|
h p
x
� 
>
%s
*synth2&
$|7     |blk_mem_gen_0  |         2|
h p
x
� 
>
%s
*synth2&
$+------+---------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |      |Cell           |Count |
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
:
%s*synth2"
 |1     |DPRAM_W245_R32 |     1|
h px� 
:
%s*synth2"
 |2     |MemTx          |     1|
h px� 
:
%s*synth2"
 |3     |blk_mem_gen    |     1|
h px� 
:
%s*synth2"
 |4     |blk_mem_gen_0  |     1|
h px� 
:
%s*synth2"
 |5     |blk_mem_gen    |     1|
h px� 
:
%s*synth2"
 |6     |clk_wiz        |     1|
h px� 
:
%s*synth2"
 |7     |dpti_clock     |     1|
h px� 
:
%s*synth2"
 |8     |mig_7series    |     1|
h px� 
:
%s*synth2"
 |9     |BUFG           |     2|
h px� 
:
%s*synth2"
 |10    |CARRY4         |   172|
h px� 
:
%s*synth2"
 |11    |DSP48E1        |     2|
h px� 
:
%s*synth2"
 |12    |FIFO36E1       |     2|
h px� 
:
%s*synth2"
 |14    |LUT1           |    45|
h px� 
:
%s*synth2"
 |15    |LUT2           |   519|
h px� 
:
%s*synth2"
 |16    |LUT3           |   250|
h px� 
:
%s*synth2"
 |17    |LUT4           |   410|
h px� 
:
%s*synth2"
 |18    |LUT5           |   277|
h px� 
:
%s*synth2"
 |19    |LUT6           |   400|
h px� 
:
%s*synth2"
 |20    |MMCME2_BASE    |     1|
h px� 
:
%s*synth2"
 |21    |MUXF7          |     3|
h px� 
:
%s*synth2"
 |22    |MUXF8          |     1|
h px� 
:
%s*synth2"
 |23    |ODDR2          |     4|
h px� 
:
%s*synth2"
 |24    |SRL16E         |     3|
h px� 
:
%s*synth2"
 |25    |XADC           |     1|
h px� 
:
%s*synth2"
 |26    |FDCE           |   335|
h px� 
:
%s*synth2"
 |27    |FDPE           |     5|
h px� 
:
%s*synth2"
 |28    |FDRE           |  1563|
h px� 
:
%s*synth2"
 |29    |FDSE           |     5|
h px� 
:
%s*synth2"
 |30    |IBUF           |     8|
h px� 
:
%s*synth2"
 |31    |IOBUF          |     8|
h px� 
:
%s*synth2"
 |32    |OBUF           |    22|
h px� 
:
%s*synth2"
 |33    |OBUFDS         |     4|
h px� 
:
%s*synth2"
 |34    |OBUFT          |    11|
h px� 
:
%s*synth2"
 +------+---------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:24 ; elapsed = 00:00:57 . Memory (MB): peak = 1708.410 ; gain = 666.309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 1 critical warnings and 97 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:52 . Memory (MB): peak = 1708.410 ; gain = 588.281
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:57 . Memory (MB): peak = 1708.410 ; gain = 666.309
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0582

1708.4102
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
198Z29-17h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_blue2
ODDR22
ODDR2

o_clk_5x_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_clock2
ODDR22
ODDR2

o_clk_5x_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_green2
ODDR22
ODDR2

o_clk_5x_nZ29-151h px� 
�
�Pin '%s' on instance '%s' of cell type '%s' does not have an equivalent function on the new cell type '%s'. Net '%s' that is connected to this pin will not be connected to the replacement instance.326*netlist2
C12
Inst_dvid/ODDR2_red2
ODDR22
ODDR2

o_clk_5x_nZ29-151h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1718.7342
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 17 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 8 instances
  MMCME2_BASE => MMCME2_ADV: 1 instance 
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 4 instances
  ODDR2 => ODDR: 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

36e81948Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1842
1632
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:262

00:01:132

1718.7342

1131.262Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0062

1718.7342
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/synth_1/Genesys2_VideoDemoR1.dcpZ17-1381h px� 
�
%s4*runtcl2�
~Executing : report_utilization -file Genesys2_VideoDemoR1_utilization_synth.rpt -pb Genesys2_VideoDemoR1_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Apr  1 12:59:48 2025Z17-206h px� 


End Record