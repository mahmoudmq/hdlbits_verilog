module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    wire [7:0]immediate1, immediate2;
    assign immediate1 = (a<b)? a: b;
    assign immediate2 = (c<d)? c: d;
    assign min = (immediate1 < immediate2)? immediate1: immediate2;

endmodule
