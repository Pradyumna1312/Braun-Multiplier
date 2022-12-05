module Braun(input[3:0] A,B, input C, output Cout, output [9:0] S)
wire C[9:0], iS[9:0];
assign S[0] = A[0]&&B[0];
fa f1(A[0]&&B[1],A[1]&&B[0],0,C[0],S[1]);
fa f2(A[2]&&B[0],A[1]&&B[1],0,C[1],iS[0]);
fa f3(A[3]&&B[0],A[2]&&B[1],0,C[2],iS[1]);
fa f4(A[0]&&B[2],iS[0],C[0],C[3],iS[2]);
assign S[2] = iS[2];
fa f5(A[1]&&B[2],iS[1],C[2],C[4],iS[3]);
fa f6(A[2]&&B[2],A[3]&&B[1],C[2],C[5],iS[4]);
fa f7(A[0]&&B[3],C[3],iS[3],C[6],iS[5]);
assign S[3] = iS[5];
fa f8(A[1]&&B[3],iS[4],C[4],C[7],iS[6]);
fa f9(A[3]&&B[2],A[2]&&B[3],C[2],C[8],iS[7]);
fa f10(C[6],iS[5],0,C[9],iS[8]);
assign S[4] = iS[8];
fa f11(iS[7],iS[6],C[9],C[10],iS[9]);
assign S[5] = iS[9];
fa f12(A[3]&&B[3],C[2],C[10],C[11],iS[10]);
assign S[6] = iS[10];
assign Cout = C[11];
endmodule