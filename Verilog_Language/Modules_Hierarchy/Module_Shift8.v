module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] shift_1, shift_2, shift_3;
    my_dff8 d1(clk, d, shift_1);
    my_dff8 d2(clk, shift_1, shift_2);
    my_dff8 d3(clk, shift_2, shift_3);
    always @ (*)
        begin
            case(sel)
                0: q=d;
                1: q=shift_1;
                2: q=shift_2;
                3: q=shift_3;
            endcase
        end
                    
endmodule
