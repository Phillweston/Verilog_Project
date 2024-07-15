// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 10 19:11:56 2024
// Host        : PhillLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/git-repository/Verilog_Project/ip_1port_ram/prj/ip_1port_ram/ip_1port_ram.gen/sources_1/ip/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20656)
`pragma protect data_block
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
VfH2N77h6ppgGjmrJP549SxyrSLYig==
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
