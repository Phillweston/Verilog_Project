module usart_rx (
    input wire clock,
    input wire rxd,
    input wire rst_n,
    output wire [7:0] rx_data_type,
    output wire rx_valid_wire
);
    parameter CLK_FRQ = 50_000_000;                 // Input clock frequency
    parameter BAUD_RATE = 115_200;                  // Baud rate
    parameter UART_CNT_MAX = CLK_FRQ / BAUD_RATE;   // Counter max value
    parameter UART_BIT = 8;                         // Data bit

    reg [7:0] rx_data;              // Received data
    reg rx_start_flag;              // Start flag
    reg [19:0] rx_cnt;              // Counter for receiving data
    reg [19:0] baud_cnt;            // Counter for baud rate
    reg baud_rate_clk;              // Baud rate clock

    reg rxd_reg1;
    reg rxd_reg2;
    reg rxd_reg3;
    wire rxd_negedge;
    reg [7:0] rx_bit_cnt;
    reg [7:0] rx_data;
    reg rx_valid_flag_pre1;
    reg rx_valid_flag_pre2;
    wire rx_valid_flag;

    assign rx_valid_wire = rx_valid_flag_pre2;
    assign rx_valid_flag = (rx_bit_cnt == 9) ? 1 : 0;
    assign rxd_negedge = ~rxd_reg2 & rxd_reg3;

    assign rx_data_byte = rx_data;
    assign clk_baud_rate = baud_rate_clk;

    // Baud rate clock generation
    always @(posedge clock) begin
        rxd_reg1 <= rxd;
        rxd_reg2 <= rxd_reg1;
        rxd_reg3 <= rxd_reg2;
    end

    // Clock flip logic caused by baud rate
    always @(posedge clock or negedge rst_n) begin
        if (~rst_n) begin
            baud_cnt <= 20'b0;
            baud_rate_clk <= 1'b0;
        end
        else begin
            rx_valid_flag_pre2 <= rx_valid_flag_pre1;
            rx_valid_flag_pre1 <= rx_valid_flag;
            baud_cnt <= baud_cnt + 1;
            if (baud_cnt == UART_CNT_MAX - 1) begin
                baud_cnt <= 20'b0;
                baud_rate_clk <= ~baud_rate_clk;
            end
        end
    end

    // TODO: Frequency divider for baud rate
    always @(posedge clock or negedge rst_n) begin
    end
endmodule