module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
	reg cin,cout,carry,cout2,cin2,cin1;
    reg [15:0] sum1,sum0,sum2;
    assign cin1=1'b1;
    assign cin2=1'b0;
    add16 low(.a({a[15:0]}),.b({b[15:0]}),.cin(cin),.sum(sum0),.cout(carry));
    add16 high(.a({a[31:16]}),.b({b[31:16]}),.cin(cin1),.sum(sum1),.cout(cout));
    add16 high_1(.a({a[31:16]}),.b({b[31:16]}),.cin(cin2),.sum(sum2),.cout(cout2));
	assign sum=carry?{sum1,sum0}:{sum2,sum0};
endmodule
