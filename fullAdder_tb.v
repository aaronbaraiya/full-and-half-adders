//setting clock
`timescale 1 ns/ 1ns
//including fullAdder.v file
`include "fullAdder.v"
//defining testbench
module fullAdder_tb;
//indicating inputs
reg A, B, carryIn;
//indicating outputs
wire sum, carryOut;
//creating instance of fullAdder
//A, B, carryIn are inputs
//sum, carryOut are outputs
fullAdder uut(A, B, carryIn, sum, carryOut);
//starting clock
initial begin
//so results can be seen
$dumpfile("fullAdder_tb.vcd"); //vcd filename is fullAdder
$dumpvars(0, fullAdder_tb);
//A, B, and carryIn are inputs
//setting inputs
{A, B, carryIn} = 3'd0; #20; //3 bit binary number 3'd0 is 000, wait time 20 nanoseconds
{A, B, carryIn} = 3'd1; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd2; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd3; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd4; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd5; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd6; #20; //wait time 20 nanoseconds
{A, B, carryIn} = 3'd7; #20; //input is 111, wait time 20 nanoseconds
$display("Finished additions!"); //will display after all inputs are complete
end
endmodule
