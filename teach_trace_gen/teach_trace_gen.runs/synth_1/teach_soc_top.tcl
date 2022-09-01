# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.cache/wt [current_project]
set_property parent.project_path D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/Code/VivadoProject/vivado_projects/VGAControl/teach_soft/3.coe
read_verilog -library xil_defaultlib {
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/alu.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/brUnit.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/new/bridge/bridge_1x2.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/new/confreg/confeg.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/cpu.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/ctrl.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/mux.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/pc.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/regFile.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/imports/new/signExt.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/new/vga.v
  D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/new/teach_soc_top.v
}
read_ip -quiet D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/inst_ram/inst_ram.xci
set_property used_in_implementation false [get_files -all d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/inst_ram/inst_ram_ooc.xdc]

read_ip -quiet D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_pll/clk_pll.xci
set_property used_in_implementation false [get_files -all d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_pll/clk_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_pll/clk_pll.xdc]
set_property used_in_implementation false [get_files -all d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/clk_pll/clk_pll_ooc.xdc]

read_ip -quiet D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/data_ram/data_ram.xci
set_property used_in_implementation false [get_files -all d:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/sources_1/ip/data_ram/data_ram_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc
set_property used_in_implementation false [get_files D:/Code/VivadoProject/vivado_projects/VGAControl/teach_trace_gen/teach_trace_gen.srcs/constrs_1/new/teach_soc.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top teach_soc_top -part xc7a35tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef teach_soc_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file teach_soc_top_utilization_synth.rpt -pb teach_soc_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
