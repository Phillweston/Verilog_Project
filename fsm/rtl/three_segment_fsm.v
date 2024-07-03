module divider7_fsm (
    // input ports
    input sys_clk,          // System clock
    input sys_rst_n,        // System reset, active low

    // output ports
    output reg clk_divide_7 // Clock divided by 7
);

// reg define
reg [6:0] curr_sta;
reg [6:0] next_sta;

// parameter define
parameter WIDTH = 1

// one hot code for the state machine
parameter S0 = 7'b0000000;
parameter S1 = 7'b0000001;
parameter S2 = 7'b0000010;
parameter S3 = 7'b0000100;
parameter S4 = 7'b0001000;
parameter S5 = 7'b0010000;
parameter S6 = 7'b0100000;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (~sys_rst_n)
        curr_sta <= S0;
        clk_divide_7 <= 1'b0;
    else
        curr_sta <= next_sta;
        if ((curr_sta == S0) | (curr_sta == S1) | (curr_sta == S2) | (curr_sta == S3))
            clk_divide_7 <= 1'b0;
        else if ((curr_sta == S4) | (curr_sta == S5) | (curr_sta == S6))
            clk_divide_7 <= 1'b1;
end

// FSM state logic
always @(*) begin
    case (curr_sta)
        S0: begin
            next_sta = S1;
        end
        S1: begin
            next_sta = S2;
        end
        S2: begin
            next_sta = S3;
        end
        S3: begin
            next_sta = S4;
        end
        S4: begin
            next_sta = S5;
        end
        S5: begin
            next_sta = S6;
        end
        S6: begin
            next_sta = S0;
        end
        default: begin
            next_sta = S0;
        end
    endcase
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (~sys_rst_n)
        curr_sta <= S0;
    else
        curr_sta <= next_sta;
end

endmodule