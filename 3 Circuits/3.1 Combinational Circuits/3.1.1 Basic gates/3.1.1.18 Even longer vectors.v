module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    
    always @ (*) begin
        for (int i = 0; i < 100; i++) begin
            if (i < 99) begin
                    out_both[i] = in[i] & in[i+1];
                	out_any[99-i] = in[99-i] | in[98-i];
                    out_different[i] = in[i] ^ in[i+1];
                end
                else begin
                    out_different[i] = in[i] ^ in[i-99];
                end
            end
        end
endmodule
