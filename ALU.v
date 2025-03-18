module ALU (input [3:0] A, B, input [2:0] OpCode, output reg [3:0] Result );
    // wires to hold results
    wire [3:0] addResult, subResult, andResult, orResult;
    wire AddCout, SubCout;      // Carry-out for addition and subtraction
    
    // the Adder module to perform addition
    Adder adder (A, B, 1'b0, addResult, AddCout);
    
    // the Subtractor module to perform subtraction
    Subtractor subtractor (A, B, 1'b1, subResult, SubCout);
    
    // the OR gate to perform bitwise OR
    OrGate orGate (A, B, orResult);
    
    // the AND gate to perform bitwise AND
    AndGate andGate (A, B, andResult);

    // Main always to select the result based on the OpCode
    always @(*) begin
        case (OpCode)
            3'b001: Result = addResult;  // If OpCode is 001, perform Addition
            3'b000: Result = subResult;  // If OpCode is 000, perform Subtraction
            3'b010: Result = orResult;   // If OpCode is 010, perform Bitwise OR
            3'b011: Result = andResult;  // If OpCode is 011, perform Bitwise AND
            default: Result = 4'bz;      // Default case: Result is (Z)
        endcase
    end

    // Another always to assign carry-out values based on the OpCode
    always @(*) begin
        case (OpCode)
            3'b001: Result = AddCout;  // If OpCode is 001, output the carry-out from addition
            3'b000: Result = SubCout;  // If OpCode is 000, output the carry-out from subtraction
            default: Result = 1'bz;    // Default case: Result is (Z)
        endcase
    end
endmodule
