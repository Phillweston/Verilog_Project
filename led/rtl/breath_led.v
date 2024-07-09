module breath_led (
    input sys_clk,
    input sys_rst_n,
    output reg led
);
    parameter CNT_2US_MAX = 7'd100;     // 200us
    parameter CNT_2MS_MAX = 10'd1000;   // 2ms
    parameter CNT_2S_MAX = 10'd1000;    // 2s

    reg [6:0] cnt_2us;
    reg [9:0] cnt_2ms;
    reg [9:0] cnt_2s;
    reg inc_dec_flag;       // Brightness increment / decrement flag 0: increment 1: decrement

    // Count for 2us
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt_2us <= 7'b0;
        else if (cnt_2us == CNT_2US_MAX - 7'b1)
            cnt_2us <= 7'b0;
        else
            cnt_2us <= cnt_2us + 7'b1;
    end

    // Count for 2ms
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt_2ms <= 10'b0;
        else if ((cnt_2us == CNT_2US_MAX - 7'b1) &&
                 (cnt_2ms == CNT_2MS_MAX - 10'b1))
            cnt_2ms <= 10'b0;
        else if (cnt_2us == CNT_2US_MAX - 7'b1)
            cnt_2ms <= cnt_2ms + 10'b1;
    end

    // Count for 2s
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt_2s <= 10'b0;
        else if ((cnt_2us == CNT_2US_MAX - 7'b1) &&
                 (cnt_2ms == CNT_2MS_MAX - 10'b1) &&
                 (cnt_2s == CNT_2S_MAX - 10'b1))
            cnt_2s <= 10'b0;
        else if ((cnt_2us == CNT_2US_MAX - 7'b1) &&
                 (cnt_2ms == CNT_2MS_MAX - 10'b1))
            cnt_2s <= cnt_2s + 10'b1;
    end

    // Brightness increment / decrement flag
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            inc_dec_flag <= 1'b0;
        else if ((cnt_2us == CNT_2US_MAX - 7'b1) &&
                 (cnt_2ms == CNT_2MS_MAX - 10'b1) &&
                 (cnt_2s == CNT_2S_MAX - 10'b1))
            inc_dec_flag <= ~inc_dec_flag;
    end

    // Control the output of LED
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            led <= 1'b0;
        else if ((~inc_dec_flag && cnt_2ms <= cnt_2s) ||
                 (inc_dec_flag && cnt_2ms >= cnt_2s))
            led <= 1'b1;
        else
            led <= 1'b0;
    end

    // ila_0 u_ila_0 (
    //     .clk (sys_clk), // input wire clk


    //     .probe0 (sys_rst_n), // input wire [0:0]  probe0  
    //     .probe1 (led), // input wire [0:0]  probe1 
    //     .probe2 (cnt_2us), // input wire [6:0]  probe2 
    //     .probe3 (cnt_2ms), // input wire [9:0]  probe3 
    //     .probe4 (cnt_2s), // input wire [9:0]  probe4 
    //     .probe5 (inc_dec_flag) // input wire [0:0]  probe5
    // );
endmodule