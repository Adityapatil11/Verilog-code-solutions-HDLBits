module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [2:0] connect;
    bcd_fadd FA1(a[3:0],b[3:0],cin,connect[0],sum[3:0]);
    bcd_fadd FA2(a[7:4],b[7:4],connect[0],connect[1],sum[7:4]);
    bcd_fadd FA3(a[11:8],b[11:8],connect[1],connect[2],sum[11:8]);
    bcd_fadd FA4(a[15:12],b[15:12],connect[2],cout,sum[15:12]);
endmodule
