`timescale 1ns / 1ns  // Unit / Precision

module tb_led ();
    reg key;
    wire led;

    initial begin
        key <= 1'b1;
        #200
        key <= 1'b0;
        $display("Time: %0t, Key: %b, LED: %b", $time, key, led); // Display after first change
        #500
        key <= 1'b1;
        $display("Time: %0t, Key: %b, LED: %b", $time, key, led); // Display after second change
        #1000
        key <= 1'b0;
        $display("Time: %0t, Key: %b, LED: %b", $time, key, led); // Display after third change
        #1000
        key <= 1'b1;
        $display("Time: %0t, Key: %b, LED: %b", $time, key, led); // Display after fourth change
    end

    // Instantiate the led module
    led u_led (
        .key (key),
        .led (led)
    );

endmodule