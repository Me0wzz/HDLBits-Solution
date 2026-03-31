module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire adder1_cout;
    wire [15:0] sum1, sum2;
    wire [31:0] b_xor;
    assign b_xor = b ^ {32{sub}};
    add16 adder1(a[15:0],b_xor[15:0], sub, sum1, adder1_cout);
    add16 adder2(a[31:16],b_xor[31:16], adder1_cout, sum2, );
    assign sum[15:0] = sum1;
    assign sum[31:16] = sum2;

endmodule
