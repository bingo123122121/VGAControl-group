
y
Command: %s
53*	vivadotcl2H
4link_design -top teach_soc_top -part xc7a35tcsg324-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
V
Loading part %s157*device2#
xc7a35tcsg324-12default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
vd:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz.dcp2default:default2!
vga/u_clk_wiz2default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0432default:default2
638.7812default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
16972default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt23
vga/u_clk_wiz/inst/clkin1_ibufg2default:default2
clk2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2+
vga/u_clk_wiz/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
|d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz_board.xdc2default:default2(
vga/u_clk_wiz/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
|d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz_board.xdc2default:default2(
vga/u_clk_wiz/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
vd:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc2default:default2(
vga/u_clk_wiz/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2?
vd:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2?
vd:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:062default:default2
00:00:062default:default2
1324.9022default:default2
575.4022default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
vd:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc2default:default2(
vga/u_clk_wiz/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
312default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
322default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
332default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
342default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
352default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
362default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
372default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
382default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
392default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
402default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
412default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
422default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
432default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2#
digital_num1[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
442default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[7]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
462default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
472default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
482default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
482default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
492default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
492default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
502default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
502default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
512default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
512default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
522default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
522default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
532default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
542default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
552default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
562default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
572default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
572default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
582default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
582default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
592default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
602default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
602default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	switch[7]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
612default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
612default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[7]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
622default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
622default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
632default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
632default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
642default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
652default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
662default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
662default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
672default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
682default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
692default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
692default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[0]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
702default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
702default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[1]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
712default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
712default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[2]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
722default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
722default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[3]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
732default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[4]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
742default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
742default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[5]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
752default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
752default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[6]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
762default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
762default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
led[7]2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
772default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
772default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
down_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
842default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
842default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
left_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
852default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
852default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
mid_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
862default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
862default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
right_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
872default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
872default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

up_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
882default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
882default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
right_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
892default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
892default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
left_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
902default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
902default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2 
down_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
912default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
912default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
mid_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
922default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
922default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2

up_btn_key2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
932default:default8@Z12-584h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default2
932default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
qD:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1324.9022default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
102default:default2
582default:default2
562default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:112default:default2
00:00:112default:default2
1324.9022default:default2
983.9022default:defaultZ17-268h px? 


End Record