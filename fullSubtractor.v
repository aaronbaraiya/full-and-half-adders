/creating mmodule halfSubtractor
module halfSubtractor (op1, op2, diff, borrow); //2 inputs: op1 and op2, 2 outputs diff and borrow
input op1, op2; //inputs
output diff, borrow; //outputs
//assigns diff to XOR of A and B
assign diff = op1 ^ op2;
assign borrow = !op1 & op2; // sets borrow to NOT of A and op2
endmodule
//creating module fullSubtractor
module fullSubtractor (A, B, bin, diff, bout); //inputs are A, B, and bin, outputs are diff and bout
//inputs
input A, B, bin;
//outputs diff and bout
output diff, bout;
//intermediary wires
wire c, d, e, f;
halfSubtractor u1(A, B, c, d); //inputs are A and B, outputs are C and D
halfSubtractor u2(c,bin, e, f); //inputs are c and bin, outputs are e and f
//outputs
assign diff = e; //duff is assigned to e
assign bout = bin | f; //bout outputs bin or f
endmodule
