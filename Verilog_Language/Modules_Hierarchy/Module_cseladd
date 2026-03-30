module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1, sum2, sum3;
    wire add_1_cout;
    add16 add_1(a[15:0], b[15:0], 0, sum1, add_1_cout);
    add16 add_2(a[31:16], b[31:16], 0, sum2, 0);
    add16 add_3(a[31:16], b[31:16], 1, sum3, 0);
    
endmodule