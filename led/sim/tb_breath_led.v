`timescale 1ns/1ns  // Unit / Precision

module tb_breath_led ();
    parameter CNT_2US_MAX = 7'd1;     // 200us
    parameter CNT_2MS_MAX = 10'd10;   // 2ms
    parameter CNT_2S_MAX = 10'd10;    // 2s
    parameter CLK = 20;  // 20ns

    reg sys_clk;        // System clock (20ns)
    reg sys_rst_n;

    wire led;

    initial begin
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        #200
        sys_rst_n <= 1'b1;
    end

    always #(CLK / 2) sys_clk <= ~sys_clk;

    breath_led #(
        .CNT_2US_MAX (CNT_2US_MAX),
        .CNT_2MS_MAX (CNT_2MS_MAX),
        .CNT_2S_MAX (CNT_2S_MAX)
    ) u_breath_led (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .led (led)
    );

endmodule