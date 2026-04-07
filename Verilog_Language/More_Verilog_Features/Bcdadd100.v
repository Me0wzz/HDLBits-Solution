module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] cout_wire;
    
    bcd_fadd fadd[99:0](a,b,{cout_wire[98:0], cin}, cout_wire, sum);
    assign cout = cout_wire[99];
endmodule
