module top_module (
    input clk,
    input reset,
    input [7:0] d,
    output [7:0] q
);
    
    always @ (negedge clk) begin
        if(reset == 0) begin
            for(int i = 0; i <= 7; i = i + 1) begin
                q[i] <= d[i]; 
            end
        end
        else begin
            q <= 8'h34;
        end
    end

endmodule
