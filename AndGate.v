module AndGate (input [3:0] A, B, output [3:0] Result);
    // AND operation for each bit of A and B
    and(Result[0], A[0], B[0]);  // AND operation for the least significant bit
    and(Result[1], A[1], B[1]);  // AND operation for the second least significant bit
    and(Result[2], A[2], B[2]);  // AND operation for the third least significant bit
    and(Result[3], A[3], B[3]);  // AND operation for the most significant bit
  
endmodule
