module moore(
    input clk, reset, 
    output out [1:0] out // 2-bit output: 01=Green, 10=Yellow, 11=Red
)

typedef enum [1:0]logic{
    Green : 2'b01;
    Yellow : 2'b10;
    Red : 2'b11;

}states_t

states_t state, next_state;

always @(*) begin
    case(state)
    2'b01: next_state = Yellow;
    2'b10: next_state = Red;
    2'b11: next_state = Green;

    default next_state = Red;
    endcase
end

always @(posedge clk) begin
    if(reset)
        state <= Red;
    else
        state <= next_state;
end

assign out = (state == Red);
endmodule