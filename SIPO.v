module SIPO(
    input clk, in;
    output [3:0]out

)
always @(posedge) begin
    out <= {out[2:0], in};
    
end
endmodule

