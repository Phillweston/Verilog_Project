module lcd_driver (
    input lcd_pclk,             // Pixel clock for LCD
    input rst_n,                // Active low reset signal
    input [15:0] lcd_id,        // LCD identification number or type
    input [23:0] pixel_data,    // 24-bit pixel data input (RGB format)
    output lcd_clk,             // LCD clock signal
    output lcd_hs,              // Horizontal sync signal
    output lcd_vs,              // Vertical sync signal
    output lcd_bl,              // Backlight control signal
    output reg lcd_de,          // Data enable signal
    output lcd_rst,             // LCD reset signal, active low
    output [23:0] lcd_rgb,      // 24-bit RGB output to LCD
    output [10:0] pixel_xpos,   // Current pixel X position
    output [10:0] pixel_ypos,   // Current pixel Y position
    output reg [10:0] h_disp,   // Horizontal display resolution
    output reg [10:0] v_disp,   // Vertical display resolution
    output reg data_req         // Data request signal, prepare for the lcd_de for other modules
);
    // Note: the resolution of 480x272 is used for the LCD 0x4342
    parameter  H_SYNC_4342   =  11'd41;     // Horizontal sync pulse width for 0x4342
    parameter  H_BACK_4342   =  11'd2;      // Horizontal back porch width for 0x4342
    parameter  H_DISP_4342   =  11'd480;    // Horizontal display resolution for 0x4342
    parameter  H_FRONT_4342  =  11'd2;     // Horizontal front porch width for 0x4342
    parameter  H_TOTAL_4342  =  11'd525;   // Total horizontal resolution for 0x4342

    parameter  V_SYNC_4342   =  11'd10;     // Horizontal sync pulse width for 0x4342
    parameter  V_BACK_4342   =  11'd2;      // Horizontal back porch width for 0x4342
    parameter  V_DISP_4342   =  11'd272;    // Horizontal display resolution for 0x4342
    parameter  V_FRONT_4342  =  11'd2;     // Horizontal front porch width for 0x4342
    parameter  V_TOTAL_4342  =  11'd286;   // Total horizontal resolution for 0x4342

    // 7' 800*480   
    parameter  H_SYNC_7084   =  11'd128;    // Horizontal sync pulse width
    parameter  H_BACK_7084   =  11'd88;     // Horizontal back porch
    parameter  H_DISP_7084   =  11'd800;    // Horizontal display area
    parameter  H_FRONT_7084  =  11'd40;     // Horizontal front porch
    parameter  H_TOTAL_7084  =  11'd1056;   // Total horizontal scan line
    
    parameter  V_SYNC_7084   =  11'd2;      // Vertical sync pulse width
    parameter  V_BACK_7084   =  11'd33;     // Vertical back porch
    parameter  V_DISP_7084   =  11'd480;    // Vertical display area
    parameter  V_FRONT_7084  =  11'd10;     // Vertical front porch
    parameter  V_TOTAL_7084  =  11'd525;    // Total vertical lines
    
    // 7' 1024*600   
    parameter  H_SYNC_7016   =  11'd20;     // Horizontal sync pulse width
    parameter  H_BACK_7016   =  11'd140;    // Horizontal back porch
    parameter  H_DISP_7016   =  11'd1024;   // Horizontal display area
    parameter  H_FRONT_7016  =  11'd160;    // Horizontal front porch
    parameter  H_TOTAL_7016  =  11'd1344;   // Total horizontal scan line
    
    parameter  V_SYNC_7016   =  11'd3;      // Vertical sync pulse width
    parameter  V_BACK_7016   =  11'd20;     // Vertical back porch
    parameter  V_DISP_7016   =  11'd600;    // Vertical display area
    parameter  V_FRONT_7016  =  11'd12;     // Vertical front porch
    parameter  V_TOTAL_7016  =  11'd635;    // Total vertical lines
    
    // 10.1' 1280*800   
    parameter  H_SYNC_1018   =  11'd10;     // Horizontal sync pulse width
    parameter  H_BACK_1018   =  11'd80;     // Horizontal back porch
    parameter  H_DISP_1018   =  11'd1280;   // Horizontal display area
    parameter  H_FRONT_1018  =  11'd70;     // Horizontal front porch
    parameter  H_TOTAL_1018  =  11'd1440;   // Total horizontal scan line
    
    parameter  V_SYNC_1018   =  11'd3;      // Vertical sync pulse width
    parameter  V_BACK_1018   =  11'd10;     // Vertical back porch
    parameter  V_DISP_1018   =  11'd800;    // Vertical display area
    parameter  V_FRONT_1018  =  11'd10;     // Vertical front porch
    parameter  V_TOTAL_1018  =  11'd823;    // Total vertical lines

    // 4.3' 800*480   
    parameter  H_SYNC_4384   =  11'd128;    // Horizontal sync pulse width
    parameter  H_BACK_4384   =  11'd88;     // Horizontal back porch
    parameter  H_DISP_4384   =  11'd800;    // Horizontal display area
    parameter  H_FRONT_4384  =  11'd40;     // Horizontal front porch
    parameter  H_TOTAL_4384  =  11'd1056;   // Total horizontal scan line
    
    parameter  V_SYNC_4384   =  11'd2;      // Vertical sync pulse width
    parameter  V_BACK_4384   =  11'd33;     // Vertical back porch
    parameter  V_DISP_4384   =  11'd480;    // Vertical display area
    parameter  V_FRONT_4384  =  11'd10;     // Vertical front porch
    parameter  V_TOTAL_4384  =  11'd525;    // Total vertical lines

    // h_sync: Horizontal sync pulse width
    // h_back: Horizontal back porch width
    // h_total: Total horizontal resolution
    // v_sync: Vertical sync pulse width
    // v_back: Vertical back porch width
    // v_total: Total vertical resolution
    // h_cnt: Horizontal counter, used to simulate the time sequence of the line
    // v_cnt: Vertical counter, used to simulate the time sequence of the field
    reg [10:0] h_sync, h_back, h_total, v_sync, v_back, v_total, h_cnt, v_cnt;

    assign lcd_clk = lcd_pclk;                         // LCD clock signal
    assign lcd_hs = 1;                                 // Horizontal sync signal
    assign lcd_vs = 1;                                 // Vertical sync signal
    assign lcd_bl = 1;                                 // Backlight control signal
    assign lcd_rst = 1;                                // LCD reset signal, active low
    assign lcd_rgb = lcd_de ? pixel_data : 24'd0;      // 24-bit RGB output to LCD
    assign pixel_xpos = lcd_de ? (h_cnt + 1'b1 - h_sync - h_back) : 11'd0;       // Current pixel X position
    assign pixel_ypos = lcd_de ? (v_cnt + 1'b1 - v_sync - v_back) : 11'd0;       // Current pixel Y position

    always @(*) begin
        case (lcd_id)
            16'h4342: begin
                h_sync <= H_SYNC_4342;
                h_back <= H_BACK_4342;
                h_total <= H_TOTAL_4342;
                h_disp <= H_DISP_4342;
                v_sync <= V_SYNC_4342;
                v_back <= V_BACK_4342;
                v_total <= V_TOTAL_4342;
                v_disp <= V_DISP_4342;
            end
            16'h7084: begin
                h_sync <= H_SYNC_7084;
                h_back <= H_BACK_7084;
                h_total <= H_TOTAL_7084;
                h_disp <= H_DISP_7084;
                v_sync <= V_SYNC_7084;
                v_back <= V_BACK_7084;
                v_total <= V_TOTAL_7084;
                v_disp <= V_DISP_7084;
            end
            16'h7016: begin
                h_sync <= H_SYNC_7016;
                h_back <= H_BACK_7016;
                h_total <= H_TOTAL_7016;
                h_disp <= H_DISP_7016;
                v_sync <= V_SYNC_7016;
                v_back <= V_BACK_7016;
                v_total <= V_TOTAL_7016;
                v_disp <= V_DISP_7016;
            end
            16'h1018: begin
                h_sync <= H_SYNC_1018;
                h_back <= H_BACK_1018;
                h_total <= H_TOTAL_1018;
                h_disp <= H_DISP_1018;
                v_sync <= V_SYNC_1018;
                v_back <= V_BACK_1018;
                v_total <= V_TOTAL_1018;
                v_disp <= V_DISP_1018;
            end
            16'h4384: begin
                h_sync <= H_SYNC_4384;
                h_back <= H_BACK_4384;
                h_total <= H_TOTAL_4384;
                h_disp <= H_DISP_4384;
                v_sync <= V_SYNC_4384;
                v_back <= V_BACK_4384;
                v_total <= V_TOTAL_4384;
                v_disp <= V_DISP_4384;
            end
            default: begin
                h_sync <= H_SYNC_4342;
                h_back <= H_BACK_4342;
                h_total <= H_TOTAL_4342;
                h_disp <= H_DISP_4342;
                v_sync <= V_SYNC_4342;
                v_back <= V_BACK_4342;
                v_total <= V_TOTAL_4342;
                v_disp <= V_DISP_4342;
            end
        endcase
    end

    // Horizontal counter generation
    always @(posedge lcd_pclk or negedge rst_n) begin
        if (~rst_n)
            h_cnt <= 11'd0;
        else if (h_cnt == h_total - 1)
            h_cnt <= 11'd0;
        else
            h_cnt <= h_cnt + 1;
    end

    // Vertical counter generation
    always @(posedge lcd_pclk or negedge rst_n) begin
        if (~rst_n)
            v_cnt <= 11'd0;
        else begin
            if (h_cnt == h_total - 1) begin
                if (v_cnt == v_total - 1)
                    v_cnt <= 11'd0;
                else
                    v_cnt <= v_cnt + 1;
            end
        end
    end

    // Generate the data_req based on the simulated line and field time sequences
    always @(posedge lcd_pclk or negedge rst_n) begin
        if (~rst_n)
            data_req <= 1'b0;
        // Data request signal generation
        // Since we need to pull up the port for 1 time interval before the data is ready
        else if ((h_cnt >= h_sync + h_back - 2'd2) && (h_cnt < h_sync + h_back + h_disp - 2'd2)
                 && (v_cnt >= v_sync + v_back) && (v_cnt < v_sync + v_back + v_disp))
            data_req <= 1'b1;
        else
            data_req <= 1'b0;
    end

    // Flip-flop for data request signal
    always @(posedge lcd_pclk or negedge rst_n) begin
        if (~rst_n)
            lcd_de <= 1'b0;
        else
            lcd_de <= data_req;
    end
endmodule