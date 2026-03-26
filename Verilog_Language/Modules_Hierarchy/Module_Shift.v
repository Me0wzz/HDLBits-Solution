module top_module ( input clk, input d, output q );
    wire q_wire1, q_wire2;
    my_dff d1 (clk, d, q_wire1);
    my_dff d2 (clk, q_wire1, q_wire2);
    my_dff d3 (clk, q_wire2, q);
endmodule
