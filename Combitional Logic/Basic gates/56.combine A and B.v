module top_module (input x, input y, output z);
wire z1,z2,z3,z4,z5,z6;
    A fun1(x,y,z1);
    B func2(x,y,z2);
    A func3(x,y,z3);
    B func4(x,y,z4);
    assign z5 = z1 | z2;
    assign z6 = z3 & z4;
    assign z = z5 ^ z6;
endmodule

module A (input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module B ( input x, input y, output z );
assign z= x~^y;
endmodule