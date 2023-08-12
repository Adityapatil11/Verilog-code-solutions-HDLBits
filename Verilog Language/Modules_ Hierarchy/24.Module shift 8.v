module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire [15:0] sum1,sum2;
    wire [15:0] bb1,bb2;
    wire carry,cout;
   
    assign bb1 = {16{sub}} ^ b[15:0];
    assign bb2 = {16{sub}} ^ b[31:16];    
    
    add16 lower(.a({a[15:0]}),
                .b(bb1),
                .cin(sub),
                .sum(sum1),
                .cout(carry)
               );
    
    add16 upper(.a({a[31:16]}),
                .b(bb2),
                .cin(carry),
                .sum(sum2),
                .cout(cout)
               );
    
    assign sum={sum2,sum1};

endmodule
