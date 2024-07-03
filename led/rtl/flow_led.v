module flow_led (
    input sys_clk,          // System clock, 50MHz
    input sys_rst_n,        // System reset, active low
    output reg [3:0] led    // LED output
);

    parameter CNT_MAX = 24'd1000_0000;  // 0.2 second

    // reg define
    reg [23:0] cnt;

    // Note: Inside the always block, the logic is executed in sequential order
    // Each always block is executed parallelly

    // Counter for system clock, 0.2 second
    // Based on the assumption that the system clock is 50MHz (sys_clk)
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt <= 24'd0;
        else if (cnt < CNT_MAX - 1)
            cnt <= cnt + 1'b1;
        else
            cnt <= 24'd0;
    end

    // Change the display status of LED based on the circuit balance of the shift register
    // For two-bit shift register, the LED value is initialize with 2'b01, and shifted to the left by one bit
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            led <= 4'b0001;
        else if (cnt == CNT_MAX - 1)
            led[3:0] <= {led[2:0], led[3]};  // Shift the LED display status
    end

endmodule