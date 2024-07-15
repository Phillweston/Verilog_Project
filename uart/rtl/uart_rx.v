module uart_rx (
    input clk,
    input rst_n,
    input uart_rxd,
    output reg uart_rx_done,            // UART received done
    output reg [7:0] uart_rx_data       // UART received data
);
    parameter CLK_FREQ = 50000000;
    parameter UART_BAUDRATE = 115200;
    localparam BAUD_CNT_MAX = CLK_FREQ / UART_BAUDRATE;       // 50MHz, 115200 baudrate, 434

    reg uart_rxd_d0;
    reg uart_rxd_d1;
    reg uart_rxd_d2;
    reg rx_flag;
    reg [3:0] rx_cnt;
    // If the baudrate is 115200, then the baud_cnt is 434, with the binary value of 110110010, minimum 9 bits
    reg [15:0] baud_cnt;
    reg [7:0] rx_data_t;

    wire start_en;
    assign start_en = ~rx_flag & ~uart_rxd_d1 & uart_rxd_d2;

    // Three flip-flop synchronizer for UART data to sample the data at the middle of the bit and avoid metastability
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            uart_rxd_d0 <= 1'b0;
            uart_rxd_d1 <= 1'b0;
            uart_rxd_d2 <= 1'b0;
        end else begin
            uart_rxd_d0 <= uart_rxd;
            uart_rxd_d1 <= uart_rxd_d0;
            uart_rxd_d2 <= uart_rxd_d1;
        end
    end

    // Assign the received signal to the uart_rx_data
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            rx_flag <= 1'b0;
        else if (start_en)
            rx_flag <= 1'b1;
        // Set low to stop receiving the data when the baud_cnt is at the middle of the bit
        // to reduce the effects of the error
        else if (rx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX / 2 - 1'b1)
            rx_flag <= 1'b0;
    end

    // Assign the baud rate counter
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            baud_cnt <= 16'd0;
        else if (rx_flag) begin
            if (baud_cnt == BAUD_CNT_MAX - 1)
                baud_cnt <= 16'd0;
            else
                baud_cnt <= baud_cnt + 16'd1;
        end else
            baud_cnt <= 16'd0;
    end

    // Assign the rx_cnt
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            rx_cnt <= 4'd0;
        else if (rx_flag) begin
            if (baud_cnt == BAUD_CNT_MAX - 1)
                rx_cnt <= rx_cnt + 4'd1;
        end else
            rx_cnt <= 4'd0;
    end

    // Register the rxd data according to the rx_cnt
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            rx_data_t <= 8'b0;
        else if (rx_flag) begin
            if (baud_cnt == BAUD_CNT_MAX / 2 - 1'b1) begin
                case (rx_cnt)
                    4'd1: rx_data_t[0] <= uart_rxd_d2;
                    4'd2: rx_data_t[1] <= uart_rxd_d2;
                    4'd3: rx_data_t[2] <= uart_rxd_d2;
                    4'd4: rx_data_t[3] <= uart_rxd_d2;
                    4'd5: rx_data_t[4] <= uart_rxd_d2;
                    4'd6: rx_data_t[5] <= uart_rxd_d2;
                    4'd7: rx_data_t[6] <= uart_rxd_d2;
                    4'd8: rx_data_t[7] <= uart_rxd_d2;
                    default: ;
                endcase
            end
        end else
            rx_data_t <= 8'b0;
    end

    // Assign the signal of fully received data and uart_rx_data
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            uart_rx_done <= 1'b0;
            uart_rx_data <= 8'b0;
        end else if (rx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX / 2 - 1'b1) begin
            uart_rx_done <= 1'b1;
            uart_rx_data <= rx_data_t;
        end else begin
            uart_rx_done <= 1'b0;
            // Keep uart_rx_data unchanged since others may read the data
        end
    end
endmodule