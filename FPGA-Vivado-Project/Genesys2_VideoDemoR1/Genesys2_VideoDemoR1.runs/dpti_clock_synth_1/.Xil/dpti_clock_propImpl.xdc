set_property SRC_FILE_INFO {cfile:c:/Users/danie/Dropbox/physics/UdeC/FPGA_UBB/Final_FPGA_UBB/Genesys2_VideoDemoR1/Genesys2_VideoDemoR1.gen/sources_1/ip/dpti_clock/dpti_clock.xdc rfile:../../../Genesys2_VideoDemoR1.gen/sources_1/ip/dpti_clock/dpti_clock.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.167
