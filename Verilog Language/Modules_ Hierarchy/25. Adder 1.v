module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    reg [15:0] sum1,sum2;
    reg carry,cout,cin;
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 low(.a({a[15:0]}), .b({b[15:0]}), .cin(cin), .sum(sum1), .cout(carry));
    add16 high(.a({a[31:16]}), .b({b[31:16]}), .cin(carry), .sum(sum2), .cout(cout));
    assign sum={sum2,sum1};
endmodule
