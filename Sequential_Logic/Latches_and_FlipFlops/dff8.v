module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk) begin
        for(int i = 0; i <= 7; i = i + 1) begin
            q[i] <= d[i]; 
        end
    end

endmodule
