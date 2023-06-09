
        set ::env(USER_ROOT)    ".."
        set ::env(CARAVEL_ROOT) "/home/dinesha/workarea/efabless/MPW-7/caravel"
        set ::env(CARAVEL_PDK_ROOT)     "/opt/pdk_mpw7/sky130B"
        set ::env(TECH_LEF) {/opt/pdk_mpw7/sky130B/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef}


    read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_sram_macros/lib/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_sram_macros/lib/sky130_sram_1kbyte_1rw1r_32x256_8_TT_1p8V_25C.lib
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_sc_hvl/lib/sky130_fd_sc_hvl__tt_025C_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_sc_hvl/lib/sky130_fd_sc_hvl__tt_025C_3v30_lv1v80.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_gpiov2_tt_tt_025C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_hvc_wpad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_025C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_ground_lvc_wpad_tt_100C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_power_lvc_wpad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_fd_io__top_xres4v2_tt_tt_025C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_tt_tt_025C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vdda_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssa_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped3_pad_tt_025C_1v80_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped3_pad_tt_025C_1v80_3v30_3v30.lib	
	read_liberty $::env(CARAVEL_PDK_ROOT)/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_025C_1v80_3v30.lib	
	read_verilog $::env(CARAVEL_ROOT)/mgmt_core_wrapper/verilog/gl/mgmt_core.v	
	read_verilog $::env(CARAVEL_ROOT)/mgmt_core_wrapper/verilog/gl/DFFRAM.v	
	read_verilog $::env(CARAVEL_ROOT)/mgmt_core_wrapper/verilog/gl/mgmt_core_wrapper.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/caravel_clocking.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/digital_pll.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/housekeeping.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/gpio_logic_high.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/gpio_control_block.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/gpio_defaults_block.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/gpio_defaults_block_0403.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/gpio_defaults_block_1803.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/mgmt_protect_hv.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/mprj_logic_high.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/mprj2_logic_high.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/mgmt_protect.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/user_id_programming.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/xres_buf.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/spare_logic_block.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/chip_io.v	
	read_verilog $::env(CARAVEL_ROOT)/verilog/gl/caravel.v	

	# User project netlist
        read_verilog $::env(USER_ROOT)/verilog/gl/qspim_top.v
        read_verilog $::env(USER_ROOT)/verilog/gl/ycr_iconnect.v
        read_verilog $::env(USER_ROOT)/verilog/gl/ycr_intf.v
        read_verilog $::env(USER_ROOT)/verilog/gl/ycr_core_top.v
        read_verilog $::env(USER_ROOT)/verilog/gl/uart_i2c_usb_spi_top.v
        read_verilog $::env(USER_ROOT)/verilog/gl/wb_host.v  
        read_verilog $::env(USER_ROOT)/verilog/gl/wb_interconnect.v
        read_verilog $::env(USER_ROOT)/verilog/gl/pinmux_top.v
        read_verilog $::env(USER_ROOT)/verilog/gl/user_project_wrapper.v  


	link_design caravel	

	read_spef -path soc/DFFRAM_0                        $::env(CARAVEL_ROOT)/mgmt_core_wrapper/spef/DFFRAM.spef	
	read_spef -path soc/core                            $::env(CARAVEL_ROOT)/mgmt_core_wrapper/spef/mgmt_core.spef	
	read_spef -path soc                                 $::env(CARAVEL_ROOT)/mgmt_core_wrapper/spef/mgmt_core_wrapper.spef	
	read_spef -path padframe                            $::env(CARAVEL_ROOT)/spef/chip_io.spef	
	read_spef -path rstb_level                          $::env(CARAVEL_ROOT)/spef/xres_buf.spef	
	read_spef -path pll                                 $::env(CARAVEL_ROOT)/spef/digital_pll.spef	
	read_spef -path housekeeping                        $::env(CARAVEL_ROOT)/spef/housekeeping.spef	
	read_spef -path mgmt_buffers/powergood_check        $::env(CARAVEL_ROOT)/spef/mgmt_protect_hv.spef	
	read_spef -path mgmt_buffers/mprj_logic_high_inst   $::env(CARAVEL_ROOT)/spef/mprj_logic_high.spef	
	read_spef -path mgmt_buffers/mprj2_logic_high_inst  $::env(CARAVEL_ROOT)/spef/mprj2_logic_high.spef	
	read_spef -path clocking                            $::env(CARAVEL_ROOT)/spef/caravel_clocking.spef
	read_spef -path mgmt_buffers                        $::env(CARAVEL_ROOT)/spef/mgmt_protect.spef	
	read_spef -path \gpio_control_bidir_1[0]            $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_bidir_1[1]            $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_bidir_2[1]            $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_bidir_2[2]            $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[0]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[10]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[1]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[2]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[3]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[4]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[5]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[6]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[7]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[8]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1[9]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[0]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[1]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[2]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[3]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[4]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_1a[5]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[0]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[10]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[11]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[12]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[13]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[14]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[15]              $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[1]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[2]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[3]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[4]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[5]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[6]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[7]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[8]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path \gpio_control_in_2[9]               $::env(CARAVEL_ROOT)/spef/gpio_control_block.spef	
	read_spef -path gpio_defaults_block_0[0]            $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_0[1]            $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_5               $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_6               $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_7               $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_8               $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_9               $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_10              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_11              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_12              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_13              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_14              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_15              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_16              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_17              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_18              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_19              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_20              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_21              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_22              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_23              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_24              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_25              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_26              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_27              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_28              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_29              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_2[0]            $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_2[1]            $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_2[2]            $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_30              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_31              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_32              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_33              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_34              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_35              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_36              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	
	read_spef -path gpio_defaults_block_37              $::env(CARAVEL_ROOT)/spef/gpio_defaults_block.spef	

	## User Project Spef

        read_spef -path mprj/u_riscv_top.u_connect            $::env(USER_ROOT)/spef/ycr_iconnect.spef
        read_spef -path mprj/u_riscv_top.u_intf               $::env(USER_ROOT)/spef/ycr_intf.spef
        read_spef -path mprj/u_riscv_top.i_core_top_0         $::env(USER_ROOT)/spef/ycr_core_top.spef
        read_spef -path mprj/u_pinmux                         $::env(USER_ROOT)/spef/pinmux_top.spef
        read_spef -path mprj/u_qspi_master                    $::env(USER_ROOT)/spef/qspim_top.spef
        read_spef -path mprj/u_uart_i2c_usb_spi               $::env(USER_ROOT)/spef/uart_i2c_usb_spi_top.spef
        read_spef -path mprj/u_wb_host                        $::env(USER_ROOT)/spef/wb_host.spef
        read_spef -path mprj/u_intercon                       $::env(USER_ROOT)/spef/wb_interconnect.spef
	read_spef -path mprj/u_pll                            $::env(USER_ROOT)/spef/digital_pll.spef	
        read_spef -path mprj                                  $::env(USER_ROOT)/spef/user_project_wrapper.spef  


	read_sdc -echo ./sdc/caravel.sdc	
	set_propagated_clock [all_clocks]
	check_setup  -verbose >  unconstraints.rpt
	report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 50	
	report_checks -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 50	
	report_worst_slack -max 	
	report_worst_slack -min 	
	report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -slack_max 0.18 -group_count 10	
	report_check_types -max_slew -max_capacitance -max_fanout -violators  > slew.cap.fanout.vio.rpt

	echo "Wishbone Interface Timing.................." > wb.max.rpt
	echo "Wishbone Interface Timing.................." > wb.min.rpt
	set wb_port [get_pins {mprj/wbs_adr_i[*]}]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_cyc_i}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_dat_i[*]}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_sel_i[*]}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_stb_i}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_we_i}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_ack_o}]]
	set wb_port [concat $wb_port [get_pins {mprj/wbs_dat_o[*]}]]
	foreach pin $wb_port {
	   echo "Wishbone Interface Timing for : [get_full_name $pin]"  >> wb.max.rpt
           report_checks -path_delay max -fields {slew cap input nets fanout} -through $pin  >> wb.max.rpt 
        }
	foreach pin $wb_port {
	   echo "Wishbone Interface Timing for [get_full_name $pin]" >> wb.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> wb.min.rpt
        }
       
	echo "SRAM Interface Timing.................." > sram.min.rpt
	echo "SRAM Interface Timing.................." > sram.min.summary.rpt

    ### Caravel SRAM Path ######################################
    #set sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/din0[*]}]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/addr0[*]}]]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/addr1[*]}]]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/csb0[*]}]]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/csb1[*]}]]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/web0[*]}]]
	#set sram_iport [concat $sram_iport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/wmask0[*]}]]
 
    #set sram_oport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/dout0[*]}]
	#set sram_oport [concat $sram_oport [get_pins {soc/core/sky130_sram_2kbyte_1rw1r_32x512_8/dout1[*]}]]
    ### Caravel SRAM Path ######################################
   
    #TCM SRAM 
    set tsram_iport [get_pins {mprj/u_tsram0_2kb/din0[*]}]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/addr0[*]}]]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/addr1[*]}]]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/csb0}]]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/csb1}]]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/web0}]]
	set tsram_iport [concat $tsram_iport [get_pins {mprj/u_tsram0_2kb/wmask0[*]}]]

    set tsram_oport [get_pins {mprj/u_tsram0_2kb/dout0[*]}]
	set tsram_oport [concat $tsram_oport [get_pins {mprj/u_tsram0_2kb/dout1[*]}]]

	foreach pin $tsram_iport {
	   echo "SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

	foreach pin $tsram_oport {
	   echo "SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

    #ICACHE SRAM 
    set isram_iport [                     get_pins {mprj/u_icache_2kb/din0[*]}]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/addr0[*]}]]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/addr1[*]}]]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/csb0}]]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/csb1}]]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/web0}]]
	set isram_iport [concat $isram_iport [get_pins {mprj/u_icache_2kb/wmask0[*]}]]

    set isram_oport [                     get_pins {mprj/u_icache_2kb/dout0[*]}]
	set isram_oport [concat $isram_oport [get_pins {mprj/u_icache_2kb/dout1[*]}]]

	foreach pin $isram_iport {
	   echo "ICAHCE SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

	foreach pin $isram_oport {
	   echo "ICAHCE SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

    #DCACHE SRAM 
    set dsram_iport [                     get_pins {mprj/u_dcache_2kb/din0[*]}]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/addr0[*]}]]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/addr1[*]}]]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/csb0}]]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/csb1}]]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/web0}]]
	set dsram_iport [concat $isram_iport [get_pins {mprj/u_dcache_2kb/wmask0[*]}]]

    set dsram_oport [                     get_pins {mprj/u_dcache_2kb/dout0[*]}]
	set dsram_oport [concat $isram_oport [get_pins {mprj/u_dcache_2kb/dout1[*]}]]

	foreach pin $dsram_iport {
	   echo "DCAHCE SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

	foreach pin $dsram_oport {
	   echo "DCAHCE SRAM Interface Timing for : [get_full_name $pin]"  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin  >> sram.min.rpt
           report_checks -path_delay min -fields {slew cap input nets fanout} -through $pin -format summary >> sram.min.summary.rpt
        }

