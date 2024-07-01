module seg_led_static_top (
    input sys_clk,          // System clock
    input sys_rst_n,        // System reset, active low
    output [5:0] sel,       // 6-bit select signal for 7-segment display
    output [7:0] sel_led    // 8-bit LED output
);

    // Time interval for the variation of the digital display (0.5s)
    parameter TIME_SHOW = 25'd25000_000;

    // Notice signal for the variation of the digital display
    wire add_flag;

    // generate a time impulse signal for each 0.5 second
    // Function: Override the default parameter value of the time_count module
    // with a new value specified by the TIME_SHOW parameter of the seg_led_static_top module
    time_count #(
        .TIME_SHOW(TIME_SHOW)
    ) u_time_count (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .add_flag (add_flag)
    );

endmodule