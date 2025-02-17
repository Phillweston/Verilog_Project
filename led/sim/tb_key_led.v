`timescale 1ns/1ns  // Unit / Precision

module tb_key_led ();

    parameter CLK = 20;  // 20ns
    // If we use localparam, this param will not be passed to the module
    parameter CNT_MAX = 25'd25;             // 500 nano second (simulation ONLY)

    reg sys_clk;        // System clock (20ns)
    reg sys_rst_n;
    reg [1:0] key;

    wire [1:0] led;

    initial begin
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        key <= 2'b11;       // The key0 is not pressed
        #200
        sys_rst_n <= 1'b1;
        #2000
        key <= 2'b10;       // The key0 is pressed
        #2000
        key <= 2'b11;
       // The key0 is released
        #2000
        key <= 2'b01;       // The key1 is pressed
        #2000
        key <= 2'b11;       // The key1 is released
    end

    always #(CLK / 2) sys_clk <= ~sys_clk;

    key_led #(
        .CNT_MAX (CNT_MAX)      // Instantiate the key_led module with the CNT_MAX parameter
    )
    u_key_led (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .key (key),
        .led (led)
    );

endmodule