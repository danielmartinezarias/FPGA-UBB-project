
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7k325tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7k325tZ17-349h px� 
�
�The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for new releases.
719*common2	
2023.10Z17-1540h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 2de8bbc62
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 2748.953 ; gain = 142.254h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 2de8bbc62
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 2748.953 ; gain = 142.254h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 2de8bbc62
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 2748.953 ; gain = 142.254h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 2bf7bb820
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:40 . Memory (MB): peak = 2953.375 ; gain = 346.676h px� 
{
Intermediate Timing Summary %s164*route2:
8| WNS=-4.700 | TNS=-6.502 | WHS=-1.450 | THS=-1176.140|
Z35-416h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 2b1117dea
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:29 ; elapsed = 00:00:43 . Memory (MB): peak = 2996.059 ; gain = 389.359h px� 
L

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101h px� 
M

Phase %s%s
101*constraints2
3.1 2
Global RoutingZ18-101h px� 
J
%s*common21
/Phase 3.1 Global Routing | Checksum: 2b1117dea
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:29 ; elapsed = 00:00:43 . Memory (MB): peak = 2996.059 ; gain = 389.359h px� 
R

Phase %s%s
101*constraints2
3.2 2
Initial Net RoutingZ18-101h px� 
O
%s*common26
4Phase 3.2 Initial Net Routing | Checksum: 2aab93f7a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:20 ; elapsed = 00:00:52 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
I
%s*common20
.Phase 3 Initial Routing | Checksum: 2aab93f7a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:20 ; elapsed = 00:00:52 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1842�
�The top 5 pins with tight setup and hold constraints:

+====================+====================+===================+
| Launch Setup Clock | Launch Hold Clock  | Pin               |
+====================+====================+===================+
| clk_out4_clk_wiz_0 | clk_out4_clk_wiz_0 | ureg_1_reg[0]/D   |
| clk_out4_clk_wiz_0 | clk_out4_clk_wiz_0 | ureg_1_reg[13]/CE |
| clk_out4_clk_wiz_0 | clk_out4_clk_wiz_0 | ureg_1_reg[10]/CE |
| clk_out4_clk_wiz_0 | clk_out4_clk_wiz_0 | ureg_1_reg[5]/CE  |
| clk_out4_clk_wiz_0 | clk_out4_clk_wiz_0 | ureg_1_reg[1]/CE  |
+--------------------+--------------------+-------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.716 | TNS=-149.081| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.1 Global Iteration 0 | Checksum: 36c727ad1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:38 ; elapsed = 00:01:08 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
Q

Phase %s%s
101*constraints2
4.2 2
Global Iteration 1Z18-101h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.716 | TNS=-138.339| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.2 Global Iteration 1 | Checksum: 1855bed0d
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:13 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
L
%s*common23
1Phase 4 Rip-up And Reroute | Checksum: 1855bed0d
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:13 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
X

Phase %s%s
101*constraints2
5 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
5.1 2
Delay CleanUpZ18-101h px� 
N

Phase %s%s
101*constraints2
5.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 5.1.1 Update Timing | Checksum: 234be5023
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.716 | TNS=-137.443| WHS=N/A    | THS=N/A    |
Z35-416h px� 
I
%s*common20
.Phase 5.1 Delay CleanUp | Checksum: 239d707d1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
V

Phase %s%s
101*constraints2
5.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 5.2 Clock Skew Optimization | Checksum: 239d707d1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
U
%s*common2<
:Phase 5 Delay and Skew Optimization | Checksum: 239d707d1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:41 ; elapsed = 00:01:14 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
J

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Hold Fix IterZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 29d9a5c7a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:42 ; elapsed = 00:01:16 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
z
Intermediate Timing Summary %s164*route29
7| WNS=-4.716 | TNS=-140.290| WHS=-0.280 | THS=-5.557 |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Hold Fix Iter | Checksum: 20412785f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
^

Phase %s%s
101*constraints2
6.2 2!
Non Free Resource Hold Fix IterZ18-101h px� 
[
%s*common2B
@Phase 6.2 Non Free Resource Hold Fix Iter | Checksum: 210839d56
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
�
�The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
962�
�	ureg_1_reg[11]/CE
	ureg_1_reg[10]/CE
	ureg_1_reg[18]/CE
	ureg_1_reg[19]/CE
	ureg_1_reg[12]/CE
	ureg_1_reg[0]/CE
	ureg_1_reg[3]/CE
	ureg_1_reg[2]/CE
	ureg_1_reg[23]/D
	ureg_1_reg[22]/D
	.. and 86 more pins.
Z35-468h px� 
G
%s*common2.
,Phase 6 Post Hold Fix | Checksum: 210839d56
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
K

Phase %s%s
101*constraints2
7 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 7 Route finalize | Checksum: 210839d56
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:16 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
R

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 8 Verifying routed nets | Checksum: 210839d56
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:45 ; elapsed = 00:01:17 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
N

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101h px� 
K
%s*common22
0Phase 9 Depositing Routes | Checksum: 1654e5132
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:47 ; elapsed = 00:01:18 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
P

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101h px� 
M

Phase %s%s
101*constraints2
10.1 2
Update TimingZ18-101h px� 
J
%s*common21
/Phase 10.1 Update Timing | Checksum: 1f1a3a90d
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:48 ; elapsed = 00:01:19 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
v
Estimated Timing Summary %s
57*route29
7| WNS=-4.716 | TNS=-213.336| WHS=0.027  | THS=0.000  |
Z35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
M
%s*common24
2Phase 10 Post Router Timing | Checksum: 1f1a3a90d
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:48 ; elapsed = 00:01:19 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
Y

Phase %s%s
101*constraints2
11 2
Post-Route Event ProcessingZ18-101h px� 
U
%s*common2<
:Phase 11 Post-Route Event Processing | Checksum: dca269fd
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:48 ; elapsed = 00:01:20 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
D
%s*common2+
)Ending Routing Task | Checksum: dca269fd
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:48 ; elapsed = 00:01:20 . Memory (MB): peak = 3228.102 ; gain = 621.402h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2032
42
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:01:502

00:01:222

3228.1022	
621.402Z17-268h px� 
�
%s4*runtcl2�
�Executing : report_drc -file Genesys2_VideoDemoR1_drc_routed.rpt -pb Genesys2_VideoDemoR1_drc_routed.pb -rpx Genesys2_VideoDemoR1_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_drc -file Genesys2_VideoDemoR1_drc_routed.rpt -pb Genesys2_VideoDemoR1_drc_routed.pb -rpx Genesys2_VideoDemoR1_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_drc_routed.rpt�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file Genesys2_VideoDemoR1_methodology_drc_routed.rpt -pb Genesys2_VideoDemoR1_methodology_drc_routed.pb -rpx Genesys2_VideoDemoR1_methodology_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file Genesys2_VideoDemoR1_methodology_drc_routed.rpt -pb Genesys2_VideoDemoR1_methodology_drc_routed.pb -rpx Genesys2_VideoDemoR1_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
2Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_methodology_drc_routed.rpt�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_methodology: 2

00:00:072

00:00:092

3228.1022
0.000Z17-268h px� 
�
%s4*runtcl2�
�Executing : report_power -file Genesys2_VideoDemoR1_power_routed.rpt -pb Genesys2_VideoDemoR1_power_summary_routed.pb -rpx Genesys2_VideoDemoR1_power_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file Genesys2_VideoDemoR1_power_routed.rpt -pb Genesys2_VideoDemoR1_power_summary_routed.pb -rpx Genesys2_VideoDemoR1_power_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2132
42
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_power: 2

00:00:052

00:00:092

3228.1022
0.000Z17-268h px� 
�
%s4*runtcl2w
uExecuting : report_route_status -file Genesys2_VideoDemoR1_route_status.rpt -pb Genesys2_VideoDemoR1_route_status.pb
h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file Genesys2_VideoDemoR1_timing_summary_routed.rpt -pb Genesys2_VideoDemoR1_timing_summary_routed.pb -rpx Genesys2_VideoDemoR1_timing_summary_routed.rpx -warn_on_violation 
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2
timing summaryZ38-282h px� 
{
%s4*runtcl2_
]Executing : report_incremental_reuse -file Genesys2_VideoDemoR1_incremental_reuse_routed.rpt
h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
{
%s4*runtcl2_
]Executing : report_clock_utilization -file Genesys2_VideoDemoR1_clock_utilization_routed.rpt
h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file Genesys2_VideoDemoR1_bus_skew_routed.rpt -pb Genesys2_VideoDemoR1_bus_skew_routed.pb -rpx Genesys2_VideoDemoR1_bus_skew_routed.rpx
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0612

3228.1022
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:022

00:00:022

3228.1022
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3228.1022
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:012
00:00:00.3082

3228.1022
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0322

3228.1022
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0092

3228.1022
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:032

00:00:022

3228.1022
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_routed.dcpZ17-1381h px� 


End Record