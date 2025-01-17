`timescale 1ns/1ps
module multiplier_tb;

    reg [3:0] A, B;
    wire [7:0] result;

    // Instantiate the module
    approx_multiplier uut (
        .A(A),
        .B(B),
        .result(result)
    );

    initial begin
        // Test different input values
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0001; B = 4'b0001; #10;
        A = 4'b0010; B = 4'b0011; #10;
        A = 4'b0100; B = 4'b0101; #10;
        A = 4'b1010; B = 4'b1101; #10;
        A = 4'b1111; B = 4'b1111; #10;

        // Stop the simulation
        $stop;
    end

    initial begin
        $monitor("At time %0dns: A=%b, B=%b, Result=%b", $time, A, B, result);
    end

endmodule
