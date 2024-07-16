module lcd_rgb_colorbar (
    input sys_clk,
    input sys_rst_n,
    output lcd_clk,             // LCD clock signal
    output lcd_hs,              // Horizontal sync signal
    output lcd_vs,              // Vertical sync signal
    output lcd_bl,              // Backlight control signal
    output lcd_de,              // Data enable signal
    output lcd_rst,             // LCD reset signal, active low
    inout [23:0] lcd_rgb        // 24-bit RGB output to LCD
);
    wire [23:0] lcd_rgb_o;
    wire [23:0] lcd_rgb_i;
    wire [15:0] lcd_id;
    wire lcd_pclk;
    wire [10:0] pixel_xpos;
    wire [10:0] pixel_ypos;
    wire [10:0] h_disp;
    wire [10:0] v_disp;
    wire [23:0] pixel_data;

    assign lcd_rgb = lcd_de ? lcd_rgb_o : {24{1'bz}};
    assign lcd_rgb_i = lcd_rgb;

    rd_id u_rd_ud (
        .clk (sys_clk),
        .rst_n (sys_rst_n),
        .lcd_rgb (lcd_rgb_i),
        .lcd_id (lcd_id)
    );

    clk_div u_clk_div (
        .clk (sys_clk),
        .rst_n (sys_rst_n),
        .lcd_id (lcd_id),
        .lcd_pclk (lcd_pclk)
    );

    lcd_display u_lcd_display (
        .lcd_pclk (lcd_pclk),
        .rst_n (sys_rst_n),
        .pixel_xpos (pixel_xpos),
        .pixel_ypos (pixel_ypos),
        .h_disp (h_disp),
        .v_disp (v_disp),
        .pixel_data (pixel_data)
    );

    lcd_driver u_lcd_driver (
        .lcd_pclk (lcd_pclk),             // Pixel clock for LCD
        .rst_n (sys_rst_n),                // Active low reset signal
        .lcd_id (lcd_id),        // LCD identification number or type
        .pixel_data (pixel_data),    // 24-bit pixel data input (RGB format)
        .lcd_clk (lcd_clk),             // LCD clock signal
        .lcd_hs (lcd_hs),              // Horizontal sync signal
        .lcd_vs (lcd_vs),              // Vertical sync signal
        .lcd_bl (lcd_bl),              // Backlight control signal
        .lcd_de (lcd_de),          // Data enable signal
        .lcd_rst (lcd_rst),             // LCD reset signal, active low
        .lcd_rgb (lcd_rgb_o),      // 24-bit RGB output to LCD
        .pixel_xpos (pixel_xpos),   // Current pixel X position
        .pixel_ypos (pixel_ypos),   // Current pixel Y position
        .h_disp (h_disp),   // Horizontal display resolution
        .v_disp (v_disp),   // Vertical display resolution
        .data_req ()         // Data request signal, prepare for the lcd_de for other modules
    );
endmodule