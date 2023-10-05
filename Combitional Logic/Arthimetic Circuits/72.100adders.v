module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
	genvar i;
    wire [98:0] connect;
    fulladder FA1(a[0],b[0],cin,connect[0],sum[0]);
    fulladder FA2(a[99],b[99],connect[98],cout,sum[99]);
    
    generate
    for(i=1;i<99;i=i+1)begin: Fulladderblock
        fulladder FA(a[i],b[i],connect[i-1],connect[i],sum[i]);
    end
    endgenerate
endmodule

module fulladder(input a,b,cin,output cout,s);
    assign s=a^b^cin;
    assign cout = (a&b)|(b&cin)|(cin&a);
endmodule