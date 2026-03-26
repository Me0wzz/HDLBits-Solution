module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire add1_cout;
    wire [15:0] sum1; 
    wire [15:0] sum2;
    add16 add1(a[15:0], b[15:0], 0, sum1, add1_cout );
    add16 add2(a[31:16], b[31:16], add1_cout, sum2, 0);
    assign sum = {sum2, sum1};
endmodule
