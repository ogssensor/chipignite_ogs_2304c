###############################################################################
# Created by write_sdc
# Thu Nov 11 05:33:42 2021
###############################################################################
current_design pinmux
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name mclk -period 10.0000 [get_ports {mclk}]
set_propagated_clock [get_clocks {mclk}]
set_clock_uncertainty -rise_from [get_clocks {mclk}] -rise_to [get_clocks {mclk}]  -setup 0.2000
set_clock_uncertainty -rise_from [get_clocks {mclk}] -fall_to [get_clocks {mclk}]  -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {mclk}] -rise_to [get_clocks {mclk}]  -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {mclk}] -fall_to [get_clocks {mclk}]  -setup 0.2000

set_clock_uncertainty -rise_from [get_clocks {mclk}] -rise_to [get_clocks {mclk}]  -hold 0.1000
set_clock_uncertainty -rise_from [get_clocks {mclk}] -fall_to [get_clocks {mclk}]  -hold 0.1000
set_clock_uncertainty -fall_from [get_clocks {mclk}] -rise_to [get_clocks {mclk}]  -hold 0.1000
set_clock_uncertainty -fall_from [get_clocks {mclk}] -fall_to [get_clocks {mclk}]  -hold 0.1000

### ClkSkew Adjust
set_case_analysis 0 [get_ports {cfg_cska_pinmux[0]}]
set_case_analysis 0 [get_ports {cfg_cska_pinmux[1]}]
set_case_analysis 0 [get_ports {cfg_cska_pinmux[2]}]
set_case_analysis 0 [get_ports {cfg_cska_pinmux[3]}]


set_max_delay   3.5 -from [get_ports {wbd_clk_int}]
set_max_delay   2 -to   [get_ports {wbd_clk_pinmux}]
set_max_delay 3.5 -from wbd_clk_int -to wbd_clk_pinmux

set_input_delay 2.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {h_reset_n}]

set_input_delay -max 6.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_addr[*]}]
set_input_delay -max 6.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_be[*]}]
set_input_delay -max 6.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_cs}]
set_input_delay -max 6.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_wdata[*]}]
set_input_delay -max 6.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_wr}]

set_input_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_addr[*]}]
set_input_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_be[*]}]
set_input_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_cs}]
set_input_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_wdata[*]}]
set_input_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_wr}]


set_output_delay -max 4.5000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_ack}]
set_output_delay -max 4.5000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_rdata[*]}]

set_output_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_ack}]
set_output_delay -min 1.0000 -clock [get_clocks {mclk}] -add_delay [get_ports {reg_rdata[*]}]
###############################################################################
# Environment
###############################################################################
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_8 -pin $::env(SYNTH_DRIVING_CELL_PIN) [all_inputs]
set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]
###############################################################################
# Design Rules
###############################################################################
