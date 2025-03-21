module FullAdder (input A, B, Cin, output Sum, Cout);
    wire AxorB, AB, BCin;  // wires to hold  results

    // AND gate to compute the carry between A and B
    and (AB, A, B);

    // XOR gate to compute the sum of A and B 
    xor (AxorB, A, B);

    // AND gate to compute the carry from the sum of A and B and the carry-in
    and (BCin, AxorB, Cin);

    // XOR gate to compute the final sum by adding the carry-in
    xor (Sum, AxorB, Cin);

    // OR gate to compute the final carry-out
    or (Cout, AB, BCin);

endmodule
