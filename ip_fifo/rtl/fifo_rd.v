module fifo_rd (
    input rd_clk,               // Read clock
    input rst_n,                // Active low reset
    // FIFO read interface
    input [7:0] fifo_rd_data,   // FIFO read data
    input full,                 // Full signal, write clock domain
    input almost_empty,         // Almost empty signal
    input rd_rst_busy,          // Read reset busy flag
    output reg fifo_rd_en       // FIFO read enable
);
    reg full_d0;
    reg full_d1;

    // Two flip-flop synchronizer for empty flag
    always @(posedge rd_clk or negedge rst_n) begin
        if (~rst_n) begin
            full_d0 <= 1'b0;
            full_d1 <= 1'b0;
        end else begin
            full_d0 <= full;
            full_d1 <= full_d0;
        end
    end

    // Assign data to the fifo_rd_en, when the FIFO is not empty, stop reading when the FIFO is almost empty
    always @(posedge rd_clk or negedge rst_n) begin
        if (~rst_n)
            fifo_rd_en <= 1'b0;
        else if (~rd_rst_busy) begin
            if (full_d1)
                fifo_rd_en <= 1'b1;
            else if (almost_empty)
                fifo_rd_en <= 1'b0;
        end
    end
endmodule