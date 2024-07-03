module debounce(
    input wire clk,        // System clock
    input wire rst_n,      // Active low reset
    input wire noisy,      // Noisy input from a physical button
    output reg clean       // Debounced output to be used in logic
);
    // Constants
    parameter DELAY = 25'd1_000_000; // Adjust this value based on your clock frequency for desired debounce time

    // Internal registers
    reg [24:0] counter;    // Counter to provide delay
    reg state;             // Current stable state

    // Debounce logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            state <= 0;
            clean <= 0;
        end
        else if (noisy == state) begin
            // Reset counter if state matches the noisy input
            counter <= 0;
        end
        else begin
            // Increment counter if state does not match noisy input
            if (counter < DELAY)
                counter <= counter + 1;
            else begin
                // Update state and output after the counter exceeds the delay
                state <= noisy;
                clean <= noisy;
                counter <= 0;
            end
        end
    end
endmodule

module key_led (
    input sys_clk,
    input sys_rst_n,
    input [1:0] key,        // Noisy key input
    output reg [1:0] led
);
    wire [1:0] clean_key;   // Cleaned key inputs after debouncing

    // Instantiate debounce modules for each key input
    debounce db0 (
        .clk(sys_clk),
        .rst_n(sys_rst_n),
        .noisy(key[0]),
        .clean(clean_key[0])
    );

    debounce db1 (
        .clk(sys_clk),
        .rst_n(sys_rst_n),
        .noisy(key[1]),
        .clean(clean_key[1])
    );

    parameter CNT_MAX = 25'd25_000_000;     // 0.5 second

    reg [24:0] cnt;
    reg led_flag;

    // Count for 0.5 second
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            cnt <= 25'd0;
        else if (cnt < CNT_MAX - 1)
            cnt <= cnt + 1'b1;
        else
            cnt <= 25'd0;
    end

    // LED status change based on the key input
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            led_flag <= 1'b0;
        else if (cnt == CNT_MAX - 1)
            led_flag <= ~led_flag;
        else
            led_flag <= led_flag;
    end

    // LED light control (control the LED based on the KEY and led_flag)
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (~sys_rst_n)
            led <= 2'b00;
        else begin
            case (clean_key)
                2'b11: led <= 2'b00;
                2'b10:
                    if (led_flag == 1'b0)
                        led <= 2'b01;
                    else
                        led <= 2'b10;
                2'b01:
                    if (led_flag == 1'b0)
                        led <= 2'b00;
                    else
                        led <= 2'b11;
                default: ;
            endcase
        end
    end
endmodule