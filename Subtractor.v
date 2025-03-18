module Subtractor(input [3:0] A, B , input cin ,output [3:0] Result,output BorrowOut); // Subtractor using Four Bit Fulladder and a 2comp
    wire [2:0] Borrow;

    
    // fulladder for bit 0
    FullAdder FA0(A[0], ~B[0], cin , Result[0], Borrow[0]);
    // fulladder for bit 1
    FullAdder FA1(A[1], ~B[1], Borrow[0], Result[1], Borrow[1]);
    // fulladder for bit 2
    FullAdder FA2(A[2], ~B[2], Borrow[1], Result[2], Borrow[2]);
    // fulladder for bit 3
    FullAdder FA3(A[3], ~B[3], Borrow[2], Result[3], BorrowOut);
endmodule 