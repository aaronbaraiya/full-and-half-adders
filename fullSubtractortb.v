//setting the clock
`timescale 1 ns / 1ns
//includes fullSubtractor.v file
`include "fullSubtractor.v"
//defining testbench fullSubtractor
module fullSubtractor_tb;
reg A, B, bin; //inputs are A, B, and bin
wire diff, bout; //outputs are diff and bout
//creating instance of fullSubtractor
//A, B, bin are inputs
//diff and bout are outputs
fullSubtractor uut(A, B, bin, diff, bout);
//starting clock
initial begin
//so results can be seen
$dumpfile("fullSubtractor_tb.vcd");
$dumpvars(0, fullSubtractor_tb);
{A, B, bin} = 3'd0; #20; //wait time is 20 seconds
{A, B, bin} = 3'd1; #20; //wait time is 20 seconds
{A, B, bin} = 3'd2; #20; //wait time is 20 seconds
{A, B, bin} = 3'd3; #20; //wait time is 20 seconds
{A, B, bin} = 3'd4; #20; //wait time is 20 seconds
{A, B, bin} = 3'd5; #20; //wait time is 20 seconds
{A, B, bin} = 3'd6; #20; //wait time is 20 seconds
{A, B, bin} = 3'd7; #20; //wait time is 20 seconds
$display("Finished Subtractions"); //when finsihed it displayes finsihed subtractions
end
endmodule //endofmodule
