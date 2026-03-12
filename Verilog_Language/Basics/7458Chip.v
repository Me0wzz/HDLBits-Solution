module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire and_left_1;
    wire and_left_2;
    wire or_left_1;
	wire and_right_1;
    wire and_right_2;
    wire or_right_1;
    
    assign p2y = or_left_1;
    assign or_left_1 = and_left_1 | and_left_2;
    assign and_left_1 = p2a & p2b;
    assign and_left_2 = p2c & p2d;
    
    assign p1y = or_right_1;
    assign or_right_1 = and_right_1 | and_right_2;
    assign and_right_1 = p1a & p1b & p1c;
    assign and_right_2 = p1d & p1e & p1f;
endmodule
