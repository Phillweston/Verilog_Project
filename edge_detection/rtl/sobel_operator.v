/**
 * @module sobel_operator
 * @brief This module implements the Sobel operator for edge detection.
 *
 * The Sobel operator is a commonly used method for edge detection in image processing.
 * It calculates the gradient magnitude and direction of an input pixel using a 3x3 kernel.
 *
 * @param clk System clock
 * @param rst_n System reset, active low
 * @param pixel_in Input pixel data
 * @param grad_mag Output gradient magnitude
 * @param grad_dir Output gradient direction
 *
 * @note The Sobel operator coefficients are predefined and stored in the coeff_x and coeff_y arrays.
 *       The pixel buffer is shifted and updated with each new input pixel.
 *       The Sobel operator is applied to the pixel buffer to calculate the gradient values.
 *       The gradient magnitude and direction are calculated using the gradient values.
 */
module sobel_operator (
    input wire clk,             // System clock
    input wire rst_n,           // System reset, active low
    input wire [7:0] pixel_in,  // Input pixel data
    output reg [7:0] grad_mag,  // Output gradient magnitude
    output reg [7:0] grad_dir   // Output gradient direction
);

    // Sobel Operator Coefficients
    reg signed [15:0] coeff_x [0:8];
    reg signed [15:0] coeff_y [0:8];

    initial begin
        // Initialize coeff_x for Gx
        coeff_x[0] = -1; coeff_x[1] = 0; coeff_x[2] = 1;
        coeff_x[3] = -2; coeff_x[4] = 0; coeff_x[5] = 2;
        coeff_x[6] = -1; coeff_x[7] = 0; coeff_x[8] = 1;

        // Initialize coeff_y for Gy
        coeff_y[0] = 1;  coeff_y[1] = 2;  coeff_y[2] = 1;
        coeff_y[3] = 0;  coeff_y[4] = 0;  coeff_y[5] = 0;
        coeff_y[6] = -1; coeff_y[7] = -2; coeff_y[8] = -1;
    end

    reg [7:0] pixel [0:8];
    reg signed [15:0] grad_x, grad_y;
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (rst_n) begin
            $display("Reset activated. Clearing grad_x, grad_y, grad_mag, and grad_dir.");
            grad_x <= 0;
            grad_y <= 0;
            grad_mag <= 0;
            grad_dir <= 0;
        end else begin
            // Shift buffer and add new pixel
            for (i = 8; i > 0; i = i - 1) begin
                pixel[i] <= pixel[i - 1];
            end
            pixel[0] <= pixel_in;
            $display("Pixel shifted. New pixel_in: %d", pixel_in);

            // Apply Sobel Operator
            grad_x <= 0;
            grad_y <= 0;
            for (i = 0; i < 9; i = i + 1) begin
                grad_x <= grad_x + coeff_x[i] * pixel[i];
                grad_y <= grad_y + coeff_y[i] * pixel[i];
            end
            $display("Sobel Operator applied. Grad_x: %d, Grad_y: %d", grad_x, grad_y);

            // Calculate Gradient Magnitude and Direction
            grad_mag <= sqrt(grad_x * grad_x + grad_y * grad_y);
            grad_dir <= atan2(grad_y, grad_x);
            $display("Gradient magnitude: %d, Gradient direction: %d", grad_mag, grad_dir);
        end
    end

function [7:0] atan2;
    input signed [15:0] y, x;
    reg [7:0] angle;
    begin
        // Check for edge cases first
        if (x == 0) begin
            if (y > 0) angle = 8'd90; // Positive Y-axis
            else if (y < 0) angle = 8'd270; // Negative Y-axis
            else angle = 8'd0; // x and y are both 0, undefined, default to 0
        end else if (y == 0) begin
            if (x > 0) angle = 8'd0; // Positive X-axis
            else angle = 8'd180; // Negative X-axis
        end else begin
            // Quadrant determination
            if (x > 0) begin
                if (y > 0) angle = 8'd45; // Quadrant 1
                else angle = 8'd315; // Quadrant 4
            end else begin
                if (y > 0) angle = 8'd135; // Quadrant 2
                else angle = 8'd225; // Quadrant 3
            end
        end
        atan2 = angle;
    end
endfunction

function [15:0] sqrt;
    input [31:0] value;
    reg [31:0] root, remainder, temp;
    integer i;
    begin
        root = 0;
        remainder = 0;
        temp = 0;

        for (i = 0; i < 16; i = i + 1) begin
            root = root << 2;
            remainder = (remainder << 2) + (value >> (30 - 2 * i)) & 3;
            temp = (root + 1) << 1;

            if (remainder >= temp) begin
                remainder = remainder - temp;
                root = root + 1;
            end
        end

        sqrt = root;
    end
endfunction

endmodule