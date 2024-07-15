# System clock constraints
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

# LED constraints
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports led]
