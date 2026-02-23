//Implement a 2-to-1 multiplexer using a with-select statement.

module mux(
    input a,b;
    output out;
)
reg chip_select;
always @(*) begin
    case(chip_select)
    1'b0 : out = a;
    1'b1 : out = b;
endcase
end
    
endmodule