module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire left;
    wire right;
    assign p1y = left;
    assign left = ~(p1a & p1b & p1c & p1d);
    assign p2y = right;
    assign right = ~(p2a & p2b & p2c & p2d);

endmodule
