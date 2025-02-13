module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    wire [31:0]b2;
    assign b2 = b ^ {32{sub}};
    add16 lower(a[15:0], b2[15:0], sub, sum[15:0], cout);
    add16 upper(a[31:16], b2[31:16], cout, sum[31:16]);

endmodule
