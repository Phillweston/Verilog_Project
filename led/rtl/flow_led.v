module flow_led (
    input sys_clk,          // System clock
    input sys_rst_n,        // System reset, active low
    output reg [3:0] led    // LED output
);

    // reg define
    reg [23:0] cnt;

    // Note: Inside the always block, the logic is executed in sequential order
    // Each always block is executed parallelly

    // Counter for system clock, 0.2 second
    // Based on the assumption that the system clock is 50MHz (sys_clk)
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt <= 24'd0;
        else if (cnt <= 24'd1000_0000)
            cnt <= cnt + 1'b1;
        else
            cnt <= 24'd0;
    end

    // Change the display status of LED based on the circuit balance of the shift register
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            led <= 4'b0001;
        else if (cnt == 24'd1000_0000)
            led[0:3] <= {led[2:0], led[3]};
        else
            led <= led;
    end

endmodule