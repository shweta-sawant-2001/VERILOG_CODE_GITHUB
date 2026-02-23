module mealy(
    input in, areset, clk;
    output out;

)

typedef enum login [1:0]{
    A = 1'b0;
    B = 1'b1;
}state_t

state_t state, next_state;

always @(*) begin
    case(state)
        A : begin
            if(in)
                next_state = B;
            else 
                next_state = A;
        end

        B: begin
            if(in)
                next_state = A ;
            else
                next_state = B;
        end
    endcase
end

always @(posedge clk , posedge areset) begin
    if(areset)
        state <= B;
    else 
        state <= next_state;
    
end

assign out = (state == B);
endmodule