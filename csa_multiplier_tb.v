`timescale 1ns / 1ps


module csa_multiplier_tb();

    reg[3:0] m, q;
    wire[7:0] p;
    
    csa_multiplier DUT (
        .m(m),
        .q(q),
        .p(p)
    );
    
    initial begin
        m = 0;
        q = 10;
        #20
        m = 5;
        q = 5;
        #20
        m = 9;
        q = 5;
        #20
        m = 12;
        q = 13;
        #20
        m = 15;
        q = 10;
        #20
        $finish;
    end

endmodule
