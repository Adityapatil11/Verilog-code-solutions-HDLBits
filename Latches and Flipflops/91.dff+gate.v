module top_module (
    input clk,
    input in, 
    output out);
	wire w;
    assign w = in ^ out;
    always @(posedge clk)
        begin
            out<=w;
        end
endmodule
