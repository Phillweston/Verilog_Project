module led (
    input key,
    output led
);

    assign led = ~key;
endmodule