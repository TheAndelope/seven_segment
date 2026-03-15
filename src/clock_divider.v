module clock_divider(
    input clk,
    input rst_n,
    output reg tick
);
    
    reg [26:0] count;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            tick <= 0;
            count <= 0;
        end else begin
            if(count == 125000000) begin 
                count <= 0;
                tick <= 1;
            end else begin
                count <= count + 1;
                tick <= 0;
            end
        end
    end
endmodule