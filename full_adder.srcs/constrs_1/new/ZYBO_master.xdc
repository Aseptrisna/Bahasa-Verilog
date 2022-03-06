##Switches
##IO_L19N_T3_VREF_35
set_property PACKAGE_PIN G15 [get_ports a]
set_property IOSTANDARD LVCMOS33 [get_ports a]
##IO_L24P_T3_34
set_property PACKAGE_PIN P15 [get_ports b]
set_property IOSTANDARD LVCMOS33 [get_ports b]
##IO_L4N_T0_34
set_property PACKAGE_PIN W13 [get_ports c]
set_property IOSTANDARD LVCMOS33 [get_ports c]
##LEDs
##IO_L23P_T3_35
set_property PACKAGE_PIN M14 [get_ports sum]
set_property IOSTANDARD LVCMOS33 [get_ports sum]
#IO_L23N_T3_35
set_property PACKAGE_PIN M15 [get_ports carry]
set_property IOSTANDARD LVCMOS33 [get_ports carry]
set_property PACKAGE_PIN L16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports
clk]
##Buttons
##IO_L20N_T3_34
set_property PACKAGE_PIN R18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property MARK_DEBUG true [get_nets a_IBUF]
set_property MARK_DEBUG true [get_nets b_IBUF]
set_property MARK_DEBUG true [get_nets c_IBUF]
set_property MARK_DEBUG true [get_nets sum_OBUF]
set_property MARK_DEBUG true [get_nets carry_OBUF]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list a_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list b_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list c_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list carry_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list sum_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
