`timescale 1ns/1ns

module tb_lcd_rgb_colorbar ();
    reg sys_clk;
    reg sys_rst_n;

    wire tmds_clk_p;
    wire tmds_clk_n;
    wire [2:0] tmds_data_p;
    wire [2:0] tmds_data_n;

    initial begin
        sys_clk = 1'b1;
        sys_rst_n = 1'b0;
        #200 sys_rst_n = 1'b1;
    end

    always #10 sys_clk <= ~sys_clk;

    hdmi_colorbar_top u_hdmi_colorbar_top (
        .clk (sys_clk),
        .rst_n (sys_rst_n),
        .tmds_clk_p (tmds_clk_p),    // TMDS 时钟通道
        .tmds_clk_n (tmds_clk_n),
        .tmds_data_p (tmds_data_p),   // TMDS 数据通道
        .tmds_data_n (tmds_data_n)
    );
endmodule