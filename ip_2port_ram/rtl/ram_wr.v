module ram_wr (
    input clk,
    input rst_n,
    output reg ram_wr_en,           // RAM enable, 1: enable, 0: disable
    output ram_wr_we,               // RAM write enable, 1: write, 0: read
    output reg [5:0] ram_wr_addr,   // RAM write address
    output [7:0] ram_wr_data,       // RAM write data
    output reg rd_flag              // Read flag, 1: read, 0: write
);
    assign ram_wr_we = ram_wr_en;
    assign ram_wr_data = {2'b0, ram_wr_addr};

    // Port A enable signal
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            ram_wr_en <= 1'b0;
        else
            ram_wr_en <= 1'b1;
    end

    // Port A write address, range: 0 to 63
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            ram_wr_addr <= 6'b0;
        else if (ram_wr_en && ram_wr_addr < 6'd63)
            ram_wr_addr <= ram_wr_addr + 6'b1;
        else
            ram_wr_addr <= 6'b0;
    end

    // Port A read flag
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            rd_flag <= 1'b0;
        else if (ram_wr_addr == 6'd31)
            rd_flag <= 1'b1;
        else
            rd_flag <= rd_flag;
    end
endmodule