module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire add16_1_cout;
    wire [15:0] sum1;
    wire [15:0] sum2;
    add16 adder_1 (a[15:0], b[15:0], 0, sum1, add16_1_cout);
    add16 adder_2 (a[31:16], b[31:16], add16_1_cout, sum2, 0);
    assign sum = {sum2, sum1};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = (~a && ~b && cin) || (~a && b && ~cin) || (a && ~b && ~cin) || (a && b && cin);
    assign cout = (~a && b && cin) || (a && ~b && cin) || (a && b && ~cin) || (a && b && cin);

endmodule
