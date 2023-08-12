module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] coutwire;
    genvar i;
    generate
        bcd_fadd u1(a[3:0],b[3:0],cin,coutwire[0],sum[3:0]);
        for(i=4;i<400;i+=4)begin: bcdadder
            bcd_fadd dut(a[i+3:i],b[i+3:i],coutwire[i/4 - 1],coutwire[i/4],sum[i+3:i]);
        end
    endgenerate
    assign cout =coutwire[99];
endmodule
