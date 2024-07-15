# Time sequence constraints
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

# System clock constraints
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports sys_clk]

# System reset constraints
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

# PLL output clock constraints
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports clk_100m]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports clk_100m_180deg]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports clk_50m]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports clk_25m]