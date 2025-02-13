module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    wire [15:0]sum0, sum1;
    add16 upper(a[15:0], b[15:0], 0, sum[15:0], cout);
    add16 lower0(a[31:16], b[31:16], 0, sum0);
    add16 lower1(a[31:16], b[31:16], 1, sum1);
    
    always @ (*) begin
        case (cout)
            0: sum[31:16] = sum0;
            1: sum[31:16] = sum1;
        endcase
    end

endmodule
