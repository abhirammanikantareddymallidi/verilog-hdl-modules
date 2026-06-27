`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 18:07:53
// Design Name: 
// Module Name: ripple_carry_adder_using_named_instantation_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_carry_adder_using_named_instantation_tb();
reg [3:0] a;
reg [3:0] b;
reg c;
wire [3:0] sum;
wire carry;
ripple_carry_adder_using_named_instantation dut (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
a = 4'b0000; b = 4'b0000; c = 1'b0; #100;
a = 4'b0010; b = 4'b0101; c = 1'b0; #100;
a = 4'b0011; b = 4'b0100; c = 1'b1; #100;
a = 4'b0111; b = 4'b0001; c = 1'b0; #100;
a = 4'b1111; b = 4'b1111; c = 1'b1; #100;
$finish;
end
initial begin
$monitor("Time=%d,a=%b,=%b,c=%b,sum=%b,carry=%b", $time, a, b, c, sum, carry);
end
endmodule
