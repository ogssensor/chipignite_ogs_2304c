###############################################################################
# Created by write_sdc
# Wed Nov 10 17:08:57 2021
###############################################################################
current_design uart_i2c_usb_spi_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name app_clk -period 10.0000 [get_ports {app_clk}]
create_clock -name line_clk -period 100.0000 [get_pins {u_uart_core.u_lineclk_buf/X}]
create_clock -name usb_clk -period 100.0000 [get_ports {usb_clk}]
set_clock_uncertainty -rise_from [get_clocks {app_clk}] -rise_to [get_clocks {app_clk}]    -hold  0.1000
set_clock_uncertainty -rise_from [get_clocks {app_clk}] -rise_to [get_clocks {app_clk}]    -setup 0.2000
set_clock_uncertainty -rise_from [get_clocks {app_clk}] -fall_to [get_clocks {app_clk}]    -hold  0.1000
set_clock_uncertainty -rise_from [get_clocks {app_clk}] -fall_to [get_clocks {app_clk}]    -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {app_clk}] -rise_to [get_clocks {app_clk}]    -hold  0.1000
set_clock_uncertainty -fall_from [get_clocks {app_clk}] -rise_to [get_clocks {app_clk}]    -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {app_clk}] -fall_to [get_clocks {app_clk}]    -hold  0.1000
set_clock_uncertainty -fall_from [get_clocks {app_clk}] -fall_to [get_clocks {app_clk}]    -setup 0.2000
set_clock_uncertainty -rise_from [get_clocks {line_clk}] -rise_to [get_clocks {line_clk}]  -hold  0.1000
set_clock_uncertainty -rise_from [get_clocks {line_clk}] -rise_to [get_clocks {line_clk}]  -setup 0.2000
set_clock_uncertainty -rise_from [get_clocks {line_clk}] -fall_to [get_clocks {line_clk}]  -hold  0.1000
set_clock_uncertainty -rise_from [get_clocks {line_clk}] -fall_to [get_clocks {line_clk}]  -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {line_clk}] -rise_to [get_clocks {line_clk}]  -hold  0.1000
set_clock_uncertainty -fall_from [get_clocks {line_clk}] -rise_to [get_clocks {line_clk}]  -setup 0.2000
set_clock_uncertainty -fall_from [get_clocks {line_clk}] -fall_to [get_clocks {line_clk}]  -hold  0.1000
set_clock_uncertainty -fall_from [get_clocks {line_clk}] -fall_to [get_clocks {line_clk}]  -setup 0.2000
set_clock_groups -name async_clock -asynchronous \
 -group [get_clocks {app_clk}]\
 -group [get_clocks {line_clk}] -comment {Async Clock group}

### ClkSkew Adjust
set_case_analysis 0 [get_ports {cfg_cska_uart[0]}]
set_case_analysis 0 [get_ports {cfg_cska_uart[1]}]
set_case_analysis 0 [get_ports {cfg_cska_uart[2]}]
set_case_analysis 0 [get_ports {cfg_cska_uart[3]}]


set_max_delay   3.5 -from [get_ports {wbd_clk_int}]
set_max_delay   2 -to   [get_ports {wbd_clk_uart}]
set_max_delay 3.5 -from wbd_clk_int -to wbd_clk_uart



set_input_delay 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {i2c_rstn}]
set_input_delay 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {uart_rstn}]
set_input_delay 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {usb_rstn}]


set_input_delay  -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_addr[*]}]
set_input_delay  -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_be[*]}]
set_input_delay  -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_cs}]
set_input_delay  -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_wdata[*]}]
set_input_delay  -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_wr}]

set_input_delay  -min 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_addr[*]}]
set_input_delay  -min 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_be[*]}]
set_input_delay  -min 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_cs}]
set_input_delay  -min 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_wdata[*]}]
set_input_delay  -min 2.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_wr}]


set_output_delay -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_ack}]
set_output_delay -max 6.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_rdata[*]}]

set_output_delay -min 1.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_ack}]
set_output_delay -min 1.0000 -clock [get_clocks {app_clk}] -add_delay [get_ports {reg_rdata[*]}]

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

#disable clock gating check at static clock select pins
set_false_path -through [get_pins u_cpu_ref_sel.u_mux/S]
set_false_path -through [get_pins u_cpu_clk_sel.u_mux/S]
set_false_path -through [get_pins u_wbs_clk_sel.u_mux/S]
set_false_path -through [get_pins u_usb_clk_sel.u_mux/S]

###############################################################################
# Design Rules
###############################################################################
