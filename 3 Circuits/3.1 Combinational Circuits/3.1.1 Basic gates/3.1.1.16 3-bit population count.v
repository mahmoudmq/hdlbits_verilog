module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always @ (*) begin
        out = 0;
        for (int i = 0; i < 3; i++) begin
            if (1'b0 ^ in[i]) begin
            	out += 1'b1;
            end
        end
    end

endmodule
