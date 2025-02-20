module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    always @ (*) begin
        for ( int i = 0; i < 100; i+=4) begin
            bcd_fadd (a[i:(i+3)], b[i:(i+3)], cin, cout, sum[i:(i+3)]);
        end
    end

endmodule
