
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.466 . Memory (MB): peak = 1324.902 ; gain = 0.0002default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 1db83676a
*commonh px? 
?

%s
*constraints2t
`Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.140 . Memory (MB): peak = 1336.840 ; gain = 11.9382default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
12default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
;
&Phase 1 Retarget | Checksum: b01ba6c7
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.187 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
12default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
12default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
G
2Phase 2 Constant propagation | Checksum: de9bc497
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.227 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 3 Sweep | Checksum: 12051f3ad
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.284 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
92default:default2
02default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
12default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
4Inserted BUFG %s to drive %s load(s) on clock net %s141*opt2&
clk_IBUF_BUFG_inst2default:default2
23612default:default2!
clk_IBUF_BUFG2default:defaultZ31-194h px? 
W
!Inserted %s BUFG(s) on clock nets140*opt2
12default:defaultZ31-193h px? 
v
!Starts optimizing BUFG(s) with %s577*opt23
a common MMCM/DPLL/XPLL driver.2default:defaultZ31-1112h px? 
g
!Starts optimizing BUFG(s) with %s577*opt2$
a common driver.2default:defaultZ31-1112h px? 
r
;Phase BUFG optimization transformed %s BUFG(s) to MBUFG(s).565*opt2
02default:defaultZ31-1092h px? 
E
0Phase 4 BUFG optimization | Checksum: 11a3507f5
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.390 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
12default:default2
12default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
O
:Phase 5 Shift Register Optimization | Checksum: 11a3507f5
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.448 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
J
5Phase 6 Post Processing Netlist | Checksum: 7d7b63c1
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.467 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |               0  |               1  |                                              1  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               9  |               0  |                                              1  |
|  BUFG optimization            |               1  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
I
4Ending Logic Optimization Task | Checksum: e375dec6
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.599 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
I
4Ending Power Optimization Task | Checksum: e375dec6
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.007 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
D
/Ending Final Cleanup Task | Checksum: e375dec6
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1523.2382default:default2
0.0002default:defaultZ17-268h px? 
J
5Ending Netlist Obfuscation Task | Checksum: e375dec6
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.001 . Memory (MB): peak = 1523.238 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
582default:default2
562default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1523.2382default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0242default:default2
1523.2382default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
rD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.runs/impl_1/teach_soc_top_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
yExecuting : report_drc -file teach_soc_top_drc_opted.rpt -pb teach_soc_top_drc_opted.pb -rpx teach_soc_top_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
lreport_drc -file teach_soc_top_drc_opted.rpt -pb teach_soc_top_drc_opted.pb -rpx teach_soc_top_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
xD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.runs/impl_1/teach_soc_top_drc_opted.rptxD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.runs/impl_1/teach_soc_top_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record