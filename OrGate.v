module OrGate (input [3:0] A, B, output [3:0] Result );
    // OR operation for each  bit of A and B
    or(Result[0], A[0], B[0]);  // OR operation for the least significant bit
    or(Result[1], A[1], B[1]);  // OR operation for the second least significant bit
    or(Result[2], A[2], B[2]);  // OR operation for the third least significant bit
    or(Result[3], A[3], B[3]);  // OR operation for the most significant bit

endmodule
