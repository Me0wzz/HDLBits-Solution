module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] comp, comp2, comp3;
    assign comp = a > b ? b : a;
    assign comp2 = comp > c ? c : comp;
    assign comp3 = comp2 > d ? d :comp2;
    assign min = comp3;
endmodule
