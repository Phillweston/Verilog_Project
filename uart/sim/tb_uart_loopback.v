`timescale 1ns/1ns

module tb_uart_loopback ();
    parameter CLK = 20;  // 20ns

    reg sys_clk;        // System clock (20ns)
    reg sys_rst_n;
    reg uart_rxd;
    wire uart_txd;

    initial begin
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        uart_rxd <= 1'b1;
        #200
        sys_rst_n <= 1'b1;
        #1000
        uart_rxd <= 1'b0;       // Start bit
        #8680                   // 8680ns = 434 * 20ns, 434 is the baud_cnt for 115200 baudrate
        uart_rxd <= 1'b1;       // Data bit 0
        #8680
        uart_rxd <= 1'b0;       // Data bit 1
        #8680
        uart_rxd <= 1'b1;       // Data bit 2
        #8680
        uart_rxd <= 1'b0;       // Data bit 3
        #8680
        uart_rxd <= 1'b1;       // Data bit 4
        #8680
        uart_rxd <= 1'b0;       // Data bit 5
        #8680
        uart_rxd <= 1'b1;       // Data bit 6
        #8680
        uart_rxd <= 1'b0;       // Data bit 7
        #8680
        uart_rxd <= 1'b1;       // Stop bit
        #8680
        uart_rxd <= 1'b1;       // Idle
    end

    always #(CLK / 2) sys_clk <= ~sys_clk;

    uart_loopback u_uart_loopback (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n),
        .uart_rxd (uart_rxd),
        .uart_txd (uart_txd)
    );

endmodule