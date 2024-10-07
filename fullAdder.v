//creating module halfAdder
//halfadder is circuit which represents halfadder
//2 inputs, operand 1 and 2
//2 outputs sum and carry
module halfAdder(op1, op2, sum, carry);
//indicating op2 and 2 are inputs
input op1, op2;
//indicating outputs sum and carry
output sum, carry;
assign sum = op1 ^ op2; // ^ is the xor operator
assign carry = op1 & op2; // & is the and operator
endmodule //ends module halfAdder
//creating moudle circuit fulladder
//inputs are A, B, carryIn
//outputs are sum, carryOut,
module fullAdder(A, B, carryIn, sum, carryOut);
//indicating inputs
input A, B, carryIn;
//indicating outputs
output sum, carryOut;
//declaring c and d are intermeditary wires
wire c, d, e, f;
//using halfAdder
halfAdder u1(A, B, c, d); //two inputs are A and B, c and d are intermediatary wires
halfAdder u2(carryIn, c, e, f); //2 inputs here are carryIn and C, outputs are e and f
assign carryOut = f | d; //assigning carryOut to f OR d
assign sum = e; //e is set equal to sum wire
endmodule //ends module fullAdder
