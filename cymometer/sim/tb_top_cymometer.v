`timescale 1ns/1ns
module tb_top_cymometer();

// top_cymometer Parameters
parameter   CNT_GATE_MAX = 28'd75_00       ;     // 测频周期时间  
parameter   CNT_GATE_LOW = 28'd12_50       ;     // 闸门为低的时间
parameter   CLK_FS_FREQ  = 28'd100_000_000;
parameter   CNT_TIME_MAX = 28'd80_00       ;     // 测频周期时间
parameter   DIV_N        = 26'd10           ;   // 分频系数
// top_cymometer Inputs
reg             sys_clk;
reg             sys_rst_n;
reg             clk_fx;

// top_cymometer Outputs
wire  clk_out1;
wire  clk_out2;
wire  lcd_hs;
wire  lcd_vs;
wire  lcd_de;
wire  lcd_bl;
wire  lcd_clk;
wire  lcd_rst;

// top_cymometer
wire  [23:0]  lcd_rgb;  

//初始化系统时钟、全局复位
initial begin   
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        clk_fx <= 1'b0; 
        #40;
        sys_rst_n <= 1'b1;
end

//sys_clk:每10ns电平翻转一次，产生一个50MHz的时钟信号
always #10 sys_clk = ~sys_clk;

//模拟被测时钟
always #100 clk_fx = ~clk_fx;

// inout
assign lcd_rgb = lcd_de ? {24{1'bz}} : 24'h800000;

//top_cymometer
top_cymometer #(

    .CNT_GATE_MAX (CNT_GATE_MAX),
    .CNT_GATE_LOW (CNT_GATE_LOW),
    .CNT_TIME_MAX (CNT_TIME_MAX),
    .CLK_FS_FREQ  (CLK_FS_FREQ ),
    .DIV_N        (DIV_N       )
)
u_top_cymometer(
    .sys_clk      ( sys_clk    ),
    .sys_rst_n    ( sys_rst_n  ),
    .clk_fx       ( clk_fx     ),

    .clk_out1     ( clk_out1   ),
    .clk_out2     ( clk_out2   ),
    .lcd_hs       ( lcd_hs     ),
    .lcd_vs       ( lcd_vs     ),
    .lcd_de       ( lcd_de     ),
    .lcd_bl       ( lcd_bl     ),
    .lcd_clk      ( lcd_clk    ),
    .lcd_rgb      ( lcd_rgb    ),    
    .lcd_rst      ( lcd_rst    )
);

endmodule