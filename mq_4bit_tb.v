`timescale 1ns / 1ps

module mq_4bit_tb();

    reg [3:0] m;
    reg q;
    wire [3:0] mq;
    
    mq_4bit DUT(
                .m(m),
                .q(q),
                .mq(mq)
                );

    initial begin
    
    m = 4'b1001;
    q = 1'b1;
    #20;
    m = 4'b1001;
    q = 1'b0;
    #20;
    
    $finish;
    end


endmodule
