module display (
    input [3:0] num,
    output reg [6:0] seg 
);

    always @(*) begin
        case(num)
            4'd0: seg = 7'b1110111;
            4'd1: seg = 7'b0010010;
            4'd2: seg = 7'b1011101;
            4'd3: seg = 7'b1011011;
            4'd4: seg = 7'b0111010;
            4'd5: seg = 7'b1101011;
            4'd6: seg = 7'b1101111;
            4'd7: seg = 7'b1010010;
            4'd8: seg = 7'b1111111;
            4'd9: seg = 7'b1111011;
            default: ;
        endcase
    end

endmodule

/*
we'll assume the seven segment display will look like this (a - g) in order of msb -> lsb

  a
b   c
  d
e   f
  g

*/