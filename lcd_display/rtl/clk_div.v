module clk_div (
    input clk,
    input rst_n,
    input [15:0] lcd_id,
    output reg lcd_pclk
);
    reg div_4_cnt;
    reg clk_25m;
    reg clk_12_5m;

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            div_4_cnt <= 1'b0;
            clk_25m <= 1'b0; // Reset clk_25m to low
            clk_12_5m <= 1'b0; // Reset clk_12_5m to low
        end else begin
            div_4_cnt <= ~div_4_cnt; // Flip the div_4_cnt value on each clock edge
            clk_25m <= ~clk_25m; // Toggle clk_25m on each clock edge
            if (div_4_cnt)
                clk_12_5m <= ~clk_12_5m; // Toggle clk_12_5m on each high of div_4_cnt
            // Do not toggle clk_12_5m when div_4_cnt is low
        end
    end

    always @(*) begin
        case (lcd_id)
            16'h4342: lcd_pclk = clk_25m; // 0x4342
            16'h7084: lcd_pclk = clk_12_5m; // 0x7084
            16'h7016: lcd_pclk = clk; // 0x7016
            16'h4384: lcd_pclk = clk_25m; // 0x4384
            16'h1018: lcd_pclk = clk_25m; // 0x1018
            default: lcd_pclk = 1'b0;
        endcase
    end
endmodule