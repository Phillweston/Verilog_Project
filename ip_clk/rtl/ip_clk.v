module ip_clk_wiz (
    input sys_clk,
    input sys_rst_n,
    output clk_100m,
    output clk_100m_180deg,
    output clk_50m,
    output clk_25m
);
    wire locked;        // Clock locked signal
    wire rst_n;

    assign rst_n = sys_rst_n & locked;

    clk_wiz_0 u_clk_wiz_0 (
        // Clock out ports
        .clk_out1(clk_100m),
        .clk_out2(clk_100m_180deg),
        .clk_out3(clk_50m),
        .clk_out4(clk_25m),
        // Status and control signals
        .reset(~sys_rst_n),
        .locked(locked),
        // Clock in ports
        .clk_in1(sys_clk)
    );

endmodule