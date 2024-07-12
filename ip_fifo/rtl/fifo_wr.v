module fifo_wr (
    input wr_clk,                   // Write clock
    input rst_n,
    // FIFO write interface
    input empty,                    // FIFO empty flag, read clock domain
    input almost_full,              // FIFO almost full flag
    input wr_rst_busy,              // Write reset busy flag, start writing only when low
    output reg fifo_wr_en,          // FIFO write enable
    output reg [7:0] fifo_wr_data   // FIFO write data
);
    reg empty_d0;
    reg empty_d1;

    // Two flip-flop synchronizer for empty flag
    always @(posedge wr_clk or negedge rst_n) begin
        if (~rst_n) begin
            empty_d0 <= 1'b0;
            empty_d1 <= 1'b0;
        end else begin
            empty_d0 <= empty;
            empty_d1 <= empty_d0;
        end
    end

    // Write data when the FIFO is not full, stop writing when the FIFO is almost full
    always @(posedge wr_clk or negedge rst_n) begin
        if (~rst_n)
            fifo_wr_en <= 1'b0;
        else if (~wr_rst_busy) begin
            if (empty_d1)
                fifo_wr_en <= 1'b1;
            else if (almost_full)
                fifo_wr_en <= 1'b0; 
        end
    end

    // Write data to the FIFO
    always @(posedge wr_clk or negedge rst_n) begin
        if (~rst_n)
            fifo_wr_data <= 8'b0;
        else if (fifo_wr_en && fifo_wr_data < 8'd254)
            fifo_wr_data <= fifo_wr_data + 8'b1;
        else
            fifo_wr_data <= 8'b0;
    end
endmodule