
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 
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
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:03 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
1.002
3.58Z4-1435h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

2598.3632
0.000Z17-268h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
2Z32-721h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5592
-7.361Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 18b9ddc65
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5592
-7.361Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
S
%s*common2:
8Phase 2 DSP Register Optimization | Checksum: 18b9ddc65
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5592
-7.361Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_1x_predisplay_clocks_inst/clk_1x_pre8Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth26
vga_gen_inst/VS_reg_0[0]vga_gen_inst/VS_reg_0[0]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth26
vga_gen_inst/VS_reg_0[0]vga_gen_inst/VS_reg_0[0]8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5422
-7.344Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Inst_dvid/shift_blue_reg_n_0_[8] Inst_dvid/shift_blue_reg_n_0_[8]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_5x_predisplay_clocks_inst/clk_5x_pre8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_02D
Inst_dvid/shift_red[9]_i_1_comp	Inst_dvid/shift_red[9]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2B
Inst_dvid/shift_red[9]_i_2_n_0Inst_dvid/shift_red[9]_i_2_n_08Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5422
-6.998Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_2_n_0Inst_dvid/shift_red[9]_i_2_n_08Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-571h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
Inst_dvid/shift_clock__0[8]Inst_dvid/shift_clock__0[8]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]2H
!control_DM_inst/o1/monitor_reg[0]	!control_DM_inst/o1/monitor_reg[0]8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5252
-6.981Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_1x_predisplay_clocks_inst/clk_1x_pre8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN2<
vga_gen_inst/VS_reg_replica	vga_gen_inst/VS_reg_replica8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5192
-6.975Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Inst_dvid/shift_blue_reg_n_0_[8] Inst_dvid/shift_blue_reg_n_0_[8]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_5x_predisplay_clocks_inst/clk_5x_pre8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_2_n_0Inst_dvid/shift_red[9]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
Inst_dvid/shift_clock__0[8]Inst_dvid/shift_clock__0[8]8Z32-702h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5192
-6.975Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0192

2598.3632
0.000Z17-268h px� 
T
%s*common2;
9Phase 3 Critical Path Optimization | Checksum: 26580284f
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5192
-6.975Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_1x_predisplay_clocks_inst/clk_1x_pre8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Inst_dvid/shift_blue_reg_n_0_[8] Inst_dvid/shift_blue_reg_n_0_[8]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_5x_predisplay_clocks_inst/clk_5x_pre8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_2_n_0Inst_dvid/shift_red[9]_i_2_n_08Z32-702h px� 
�
+Net %s was not replicated. - no resolution
314*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-571h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
Inst_dvid/shift_clock__0[8]Inst_dvid/shift_clock__0[8]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
control_DM_inst/o1/monitor[0]control_DM_inst/o1/monitor[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_1x_predisplay_clocks_inst/clk_1x_pre8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
vga_gen_inst/VS_reg_0[0]_repNvga_gen_inst/VS_reg_0[0]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 Inst_dvid/shift_blue_reg_n_0_[8] Inst_dvid/shift_blue_reg_n_0_[8]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
display_clocks_inst/clk_5x_predisplay_clocks_inst/clk_5x_pre8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_2_n_0Inst_dvid/shift_red[9]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
Inst_dvid/shift_red[9]_i_1_n_0Inst_dvid/shift_red[9]_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
Inst_dvid/shift_clock__0[8]Inst_dvid/shift_clock__0[8]8Z32-702h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-4.5192
-6.975Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

2598.3632
0.000Z17-268h px� 
T
%s*common2;
9Phase 4 Critical Path Optimization | Checksum: 26580284f
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0092

2598.3632
0.000Z17-268h px� 
v
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-4.5192
-6.975Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.040  |          0.386  |            1  |              0  |                     4  |           0  |           2  |  00:00:02  |
|  Total          |          0.040  |          0.386  |            1  |              0  |                     4  |           0  |           3  |  00:00:02  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0092

2598.3632
0.000Z17-268h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 180b0ed25
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2598.363 ; gain = 0.000h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1582
22
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
phys_opt_design: 2

00:00:042

00:00:082

2598.3632
0.000Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.0962

2598.3632
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:032

00:00:022

2598.3632
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2598.3632
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

00:00:002
00:00:00.0342

2598.3632
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0362

2598.3632
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0102

2598.3632
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:032

00:00:022

2598.3632
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/crist/OneDrive/Documentos/GitHub/FPGA-UBB-project/FPGA-Vivado-Project/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.runs/impl_1/Genesys2_VideoDemoR1_physopt.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:052

00:00:062

2598.3632
0.000Z17-268h px� 


End Record