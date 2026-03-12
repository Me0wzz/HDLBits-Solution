module top_module ( input x, input y, output z );
    // z = ~(x ^ y)
    assign z = ~(x ^ y);
endmodule
