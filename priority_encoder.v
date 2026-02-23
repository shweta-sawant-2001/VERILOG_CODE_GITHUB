module priority_encoder_4(
    input [3:0] in,
    output reg [1:0] out,
    output reg valid
);
always @(*) begin
    valid = 1'b0;
    out = 2'b00;

    if(in[3])
        out = 2'b11;
        valid = 1;
    else if(in[2] == 1)
        out = 2'b10;
        valid = 1;
    else if(in[1] == 1)
        out = 2'b01;
        valid = 1;
    else 
        out = 2'b00;
        valid = 1;
    
end
endmodule