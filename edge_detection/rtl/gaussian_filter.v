/**
 * @module gaussian_filter
 * @brief This module implements a Gaussian filter for image processing.
 *
 * The Gaussian filter is applied to the input pixel data to smooth the image and reduce noise.
 * The filter coefficients are pre-defined and stored in the 'coeff' array.
 * The input pixel data is stored in a shift register 'pixel' and the filter is applied by multiplying each pixel with its corresponding coefficient and summing the results.
 * The output pixel data is divided by 256 to normalize the result.
 *
 * @param clk System clock
 * @param rst_n System reset, active low
 * @param pixel_in Input pixel data
 * @param pixel_out Output pixel data
 */
module gaussian_filter (
    input wire clk,             // System clock
    input wire rst_n,           // System reset, active low
    input wire [7:0] pixel_in,  // Input pixel data
    output reg [7:0] pixel_out, // Output pixel data
);

    // Coefficients for the Gaussian filter
    reg [15:0] coeff [0:8];

    initial begin
        coeff[0] = 16'd1; coeff[1] = 16'd4; coeff[2] = 16'd6;
        coeff[3] = 16'd4; coeff[4] = 16'd1; coeff[5] = 16'd4;
        coeff[6] = 16'd16; coeff[7] = 16'd24; coeff[8] = 16'd16;
    end

    reg [7:0] pixel [0:8];
    reg [15:0] sum;
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (rst_n) begin
            $display("Reset activated. Clearing sum and pixel_out.");
            sum <= 0;
            pixel_out <= 0;
        end else begin
            // Shift buffer and add new pixel
            for (i = 8; i > 0; i = i - 1) begin
                pixel[i] <= pixel[i - 1];
            end
            pixel[0] <= pixel_in;
            $display("Pixel shifted. New pixel_in: %d", pixel_in);

            // Apply Gaussian Filter
            sum <= 0;
            for (i = 0; i < 9; i = i + 1) begin
                sum <= sum + coeff[i] * pixel[i];
            end
            $display("Gaussian filter applied. Sum: %d", sum);
            pixel_out <= sum >> 8;  // Divide by 256
            $display("Output pixel value: %d", pixel_out);
        end
    end

endmodule