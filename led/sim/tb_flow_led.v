`timescale 1ns/1ns  // Unit / Precision

module tb_flow_led ();

    parameter CLK = 20;  // 20ns
    parameter CNT_MAX = 24'd24;  // 500 nano second (simulation ONLY)

    reg sys_clk;        // System clock (20ns)
    reg sys_rst_n;

    wire [3:0] led;

    initial begin
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        #200
        sys_rst_n <= 1'b1;
    end

    always #(CLK / 2) sys_clk <= ~sys_clk;

    flow_led #(
        .CNT_MAX (CNT_MAX)      // Instantiate the flow_led module with the CNT_MAX parameter
    )
    u_flow_led (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .led (led)
    );

endmodule