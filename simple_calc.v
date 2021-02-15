`timescale 1ns / 1ps

module simple_calc(
    input [3:0] x, y,
    input [1:0] op_sel,
    output [7:0] result,
    output carry_out, overflow
    );
    
    wire add_n;
    wire [7:0] add_sub_out;
    wire [7:0] mult_out;
    
    //if S0 = 1, add_n = 0 for addition, if S0 = 1, add_n = 1 for subtraction
    assign add_n = ~op_sel[0] & 0 | op_sel[0] & 1;
    
    adder_subtractor add_sub(
                             .x(x), 
                             .y(y), 
                             .add_n(add_n), 
                             .s(add_sub_out), 
                             .c_out(carry_out), 
                             .overflow(overflow));
    
    csa_multiplier add_mult(
                            .m(x), 
                            .q(y), 
                            .p(mult_out));
    
    mux_2x1_8bit(
                 .x(add_sub_out), 
                 .y(mult_out), 
                 .s(op_sel[1]), 
                 .f(result));
    
endmodule