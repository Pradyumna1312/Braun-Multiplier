module fa(input A,B,Cin, output S,Cout)
xor x1(S,A,B);
wire g1=A&&B;
wire g3=A&&C;
wire g2=B&&C;
Cout = g1+g2+g3;
endmodule