// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 10 02:43:40 2024
// Host        : PhillLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git-repository/Verilog_Project/ip_1port_ram/prj/ip_1port_ram/ip_1port_ram.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3883 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20640)
`pragma protect data_block
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
pxlqkayl
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
