module second_counter(
    input clk,
    input rst_n,
    input tick,
    output reg [4:0] seconds
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            seconds <= 0;
        end else begin 
            if(tick) begin 
                if(seconds == 29) begin
                    seconds <= 0;
                end else begin
                    seconds <= seconds + 1;
                end
            end 
        end
    end

endmodule