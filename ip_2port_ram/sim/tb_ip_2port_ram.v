`timescale 1ns/1ns

module tb_ip_2port_ram ();
    parameter CLK = 20;  // 20ns

    reg sys_clk;        // System clock (20ns)
    reg sys_rst_n;

    initial begin
        sys_clk <= 1'b0;
        sys_rst_n <= 1'b0;
        #200
        sys_rst_n <= 1'b1;
    end

    always #(CLK / 2) sys_clk <= ~sys_clk;

    ip_2port_ram u_ip_2port_ram (
        .sys_clk (sys_clk),
        .sys_rst_n (sys_rst_n)
    );

endmodule