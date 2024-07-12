// Set the width of the RAM as 8, depth as 32
module ram_rw (
    input clk,
    input rst_n,
    input [7:0] ram_rd_data,        // RAM read data
    output reg ram_en,              // RAM enable
    output ram_we,                  // RAM write enable, 1: write, 0: read
    output reg [4:0] ram_addr,      // RAM read and write address
    output reg [7:0] ram_wr_data    // RAM write data
);
    reg [5:0] rw_cnt;               // RAM read and write counter
    assign ram_we = (rw_cnt <= 6'd31 && ram_en == 1'b1) ? 1'b1 : 1'b0;

    // RAM write data, pull up after finishing writing
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            ram_en <= 1'b0;
        else
            ram_en <= 1'b1;
    end

    // Assign to rw_cnt, from 0 to 63
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n || ~ram_en || rw_cnt == 6'd63)
            rw_cnt <= 6'b0;
        else
            rw_cnt <= rw_cnt + 1'b1;
    end

    // Assign to ram_addr, from 0 to 31
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n || ~ram_en || ram_addr == 5'd31)
            ram_addr <= 5'b0;
        else
            ram_addr <= ram_addr + 1'b1;
    end

    // Assign to ram_wr_data, from 0 to 31
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n || ~ram_we || ram_wr_data == 8'd31)
            ram_wr_data <= 8'b0;
        else
            ram_wr_data <= ram_wr_data + 1'b1;
    end

endmodule