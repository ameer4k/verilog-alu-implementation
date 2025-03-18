module ALUDataFlow (input [3:0] A, B, input [2:0] OpCode,output [3:0] Result, output Cout);
    // wires to hold results
    wire [3:0] addResult, subResult, andResult, orResult;
    wire AddCout, SubCout;      // Carry-out for addition and subtraction

    // The Adder to perform addition
    Adder adder (A, B, 1'b0, addResult, AddCout);

    // The Subtractor to perform subtraction
    Subtractor subtractor (A, B, 1'b1, subResult, SubCout);

    // The OR gate to perform  OR
    OrGate orGate (A, B, orResult);

    // The AND gate to perform  AND
    AndGate andGate (A, B, andResult);

    // Continuous assignment for Result based on the OpCode
    assign Result = (OpCode == 3'b001) ? addResult :          // If OpCode is 001, perform Addition
                    (OpCode == 3'b000) ? subResult :          // If OpCode is 000, perform Subtraction
                    (OpCode == 3'b010) ? orResult :           // If OpCode is 010, perform Bitwise OR
                    (OpCode == 3'b011) ? andResult :          // If OpCode is 011, perform Bitwise AND
                    4'bz;                                     // Default case: Output Z

    // Continuous assignment for carry-out based on the OpCode
    assign Cout = (OpCode == 3'b001) ? AddCout :             // If OpCode is 001, output the carry-out from addition
                    (OpCode == 3'b000) ? SubCout :             // If OpCode is 000, output the carry-out from subtraction
                    1'bz;                                      // Default case: Output Z
endmodule
