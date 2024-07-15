# Time sequence constraints
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

# System clock constraints
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports sys_clk]

# System reset constraints
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

# PL key constraints
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {key[0]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {key[1]}]

# PL led constraints
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {led[1]}]

