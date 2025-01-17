module approx_multiplier (
    input [3:0] A, B,
    output [7:0] result
);
    // Approximate multiplication technique: Selective bit truncation
    wire [7:0] partial1, partial2, partial3, partial4;
    
    assign partial1 = {A[3:2] * B[3:2], 4'b0000}; // MSB multiplication, shifted for significance
    assign partial2 = {2'b00, A[3:2] * B[1:0], 2'b00}; // Mid-range impact
    assign partial3 = {2'b00, B[3:2] * A[1:0], 2'b00}; // Mid-range impact
    assign partial4 = {4'b0000, A[1:0] * B[1:0]}; // LSB contribution
    
    assign result = partial1 + partial2 + partial3 + partial4;
    
endmodule
