module hadd( 
    input a, b,
    output cout, sum );
	assign sum=a^b;
    assign cout=(a&b);
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );
	assign sum=a^b^cin;
    assign cout=(a&b)|(cin&b)|(a&cin) ;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	wire c0,c1,c2;
    hadd mod1(x[0],y[0],c0,sum[0]);
    fadd mod2(x[1],y[1],c0,c1,sum[1]);
    fadd mod3(x[2],y[2],c1,c2,sum[2]);
    fadd mod4(x[3],y[3],c2,sum[4],sum[3]);
endmodule
