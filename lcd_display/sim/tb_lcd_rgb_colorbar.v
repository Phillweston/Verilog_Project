`timescale 1ns/1ns

module tb_lcd_rgb_colorbar ();
    reg sys_clk;
    reg sys_rst_n;

    wire lcd_de;
    wire lcd_hs;
    wire lcd_vs;
    wire lcd_bl;
    wire lcd_clk;
    wire lcd_rst;
    wire [23:0] lcd_rgb;

    always #10 sys_clk = ~sys_clk;

    assign lcd_rgb = lcd_de ? {24{1'bz}} : 24'h80;

    initial begin
        sys_clk = 1'b0;
        sys_rst_n = 1'b0;
        #200 sys_rst_n = 1'b1;
    end

    lcd_rgb_colorbar u_lcd_rgb_colorbar (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .lcd_clk (lcd_clk),
        .lcd_hs (lcd_hs),
        .lcd_vs (lcd_vs),
        .lcd_bl (lcd_bl),
        .lcd_de (lcd_de),
        .lcd_rst (lcd_rst),
        .lcd_rgb (lcd_rgb)
    );
endmodule