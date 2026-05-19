module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @ (posedge clk or posedge areset) begin
        if(areset) begin
            q <= 8'b00000000;
        end
        else begin
            for(int i = 0; i <= 7; i = i + 1) begin
                q[i] <= d[i]; 
            end
        end
    end

endmodule
