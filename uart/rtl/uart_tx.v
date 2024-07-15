module uart_tx (
    input clk,
    input rst_n,
    input uart_tx_en,           // UART TX enable
    input [7:0] uart_tx_data,   // UART TX data
    output reg uart_txd,        // UART TX data
    output reg uart_tx_busy     // UART TX busy
);
    parameter CLK_FREQ = 50000000;
    parameter UART_BAUDRATE = 115200;
    // Since the baudrate may have error for the CH340, the uart_rx_done signal may come earlier than the uart_tx_busy signals
    localparam BAUD_CNT_MAX = CLK_FREQ / UART_BAUDRATE;       // 50MHz, 115200 baudrate

    reg [7:0] tx_data_t;
    reg [3:0] tx_cnt;
    reg [15:0] baud_cnt;

    // Register the input data when uart_tx_en is high, and pull up the busy signal
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            tx_data_t <= 8'b0;
            uart_tx_busy <= 1'b0;
        end else if (uart_tx_en) begin
            tx_data_t <= uart_tx_data;
            uart_tx_busy <= 1'b1;
        end else if (tx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX - 1'b1) begin   // Send an entire stop bit
            tx_data_t <= 8'b0;
            uart_tx_busy <= 1'b0;
        end
    end

    // Assign the baud rate counter
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            baud_cnt <= 16'd0;
        // When the enable signal comes earlier than the busy signal, reset the baud_cnt
        else if (uart_tx_en)
            baud_cnt <= 16'd0;
        else if (uart_tx_busy) begin
            if (baud_cnt == BAUD_CNT_MAX - 1)
                baud_cnt <= 16'd0;
            else
                baud_cnt <= baud_cnt + 16'd1;
        end else
            baud_cnt <= 16'd0;
    end

    // Assign the tx_cnt
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            tx_cnt <= 4'd0;
        // When the enable signal comes earlier than the busy signal, reset the tx_cnt
        else if (uart_tx_en)
            tx_cnt <= 4'd0;
        else if (uart_tx_busy) begin
            if (baud_cnt == BAUD_CNT_MAX - 1)
                tx_cnt <= tx_cnt + 4'd1;
        end else
            tx_cnt <= 4'd0;
    end

    // Control the TXD signal based on the tx_cnt
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            uart_txd <= 1'b1;
        else if (uart_tx_busy) begin
            case (tx_cnt)
                4'd0: uart_txd <= 1'b0;             // Start bit
                4'd1: uart_txd <= tx_data_t[0];     // Data bit 0
                4'd2: uart_txd <= tx_data_t[1];     // Data bit 1
                4'd3: uart_txd <= tx_data_t[2];     // Data bit 2
                4'd4: uart_txd <= tx_data_t[3];     // Data bit 3
                4'd5: uart_txd <= tx_data_t[4];     // Data bit 4
                4'd6: uart_txd <= tx_data_t[5];     // Data bit 5
                4'd7: uart_txd <= tx_data_t[6];     // Data bit 6
                4'd8: uart_txd <= tx_data_t[7];     // Data bit 7
                4'd9: uart_txd <= 1'b1;             // Stop bit
                default: uart_txd <= 1'b1;
            endcase
        end else
            uart_txd <= 1'b1;
    end
endmodule