module top_module( 
    input [99:0] in,
    output [99:0] out
);
    always@ (*) begin
        
    integer count = 0;
        for(integer i = 99; i >= 0; i--) begin
            out[i] = in[99-i];    
    	end
    end
endmodule
