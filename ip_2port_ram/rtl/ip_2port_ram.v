module ip_2port_ram (
    input sys_clk,
    input sys_rst_n
);
    (* keep = "true" *) wire ram_wr_en;
    (* keep = "true" *) wire ram_wr_we;
    (* keep = "true" *) wire [5:0] ram_wr_addr;
    (* keep = "true" *) wire [7:0] ram_wr_data;
    (* keep = "true" *) wire rd_flag;
    (* keep = "true" *) wire [7:0] ram_rd_data;
    (* keep = "true" *) wire ram_rd_en;
    (* keep = "true" *) wire [5:0] ram_rd_addr;

    ram_wr u_ram_wr (
        .clk (sys_clk),
        .rst_n (sys_rst_n),
        .ram_wr_en (ram_wr_en),
        .ram_wr_we (ram_wr_we),
        .ram_wr_addr (ram_wr_addr),
        .ram_wr_data (ram_wr_data),
        .rd_flag (rd_flag)
    );

    blk_mem_gen_0 u_blk_mem_gen_0 (
        .clka (sys_clk),
        .ena (ram_wr_en),
        .wea (ram_wr_we),
        .addra (ram_wr_addr),
        .dina (ram_wr_data),
        .clkb (sys_clk),
        .enb (ram_wr_en),
        .addrb (ram_wr_addr),
        .doutb (ram_rd_data)
    );

    ram_rd u_ram_rd (
        .clk (sys_clk),
        .rst_n (sys_rst_n),
        .rd_flag (rd_flag),
        .ram_rd_data (ram_rd_data),
        .ram_rd_en (ram_rd_en),
        .ram_rd_addr (ram_rd_addr)
    );
endmodule