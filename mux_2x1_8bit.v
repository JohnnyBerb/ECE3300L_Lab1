`timescale 1ns / 1ps

module mux_2x1_8bit(
    input [7:0] x, y,
    input s,
    output reg [7:0] f
    );
    
    always@(*)
    begin
    case(s)
    0:f=x;
    1:f={4'b0000,y};       //concatenated 4 MSB to mask 4 LSB
    endcase
    end
    
endmodule
