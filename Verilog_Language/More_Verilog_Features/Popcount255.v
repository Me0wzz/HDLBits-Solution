module top_module( 
    input [254:0] in,
    output [7:0] out );
    always @(*) begin
        out = 0;
        for(integer i = 0; i < 255; i = i + 1) begin
            if(in[i] == 1) out = out + 8'd1; 
        end
    end
endmodule
