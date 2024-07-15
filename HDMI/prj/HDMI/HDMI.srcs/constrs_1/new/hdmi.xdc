#时序约束
#create_clock -period 20.000 [get_ports clk] 

#IO引脚约束
#----------------------系统时钟---------------------------
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports clk]

#----------------------系统复位---------------------------
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports rst_n]

#----------------------HDMI接口---------------------------
set_property -dict {PACKAGE_PIN B19  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[2]}]
set_property -dict {PACKAGE_PIN C20  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN D19  IOSTANDARD TMDS_33 } [get_ports {tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN H16  IOSTANDARD TMDS_33 } [get_ports tmds_clk_p]
