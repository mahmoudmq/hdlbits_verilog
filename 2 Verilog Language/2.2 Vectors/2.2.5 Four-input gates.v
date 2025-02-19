module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // using reduction operators
    assign out_and = & in[3:0];
    assign out_or = | in[3:0];
    assign out_xor = ^ in[3:0];

endmodule
