// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Jul 11 02:45:14 2024
// Host        : PhillLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git-repository/Verilog_Project/ip_2port_ram/prj/ip_2port_ram/ip_2port_ram.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21424)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
