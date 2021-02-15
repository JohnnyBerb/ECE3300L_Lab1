`timescale 1ns / 1ps



module mq_4bit(
    input [3:0] m,
    input q,
    output [3:0] mq

    );
    
    assign mq = {m[3] & q, m[2] & q, m[1] & q, m[0] & q};
    
endmodule
