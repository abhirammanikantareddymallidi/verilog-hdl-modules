`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 17:43:22
// Design Name: 
// Module Name: ripple_carry_adder_using_named_instantation
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


module ripple_carry_adder_using_named_instantation(a,b,c,sum,carry);
input [3:0]a;
input [3:0]b;
input c;
output [3:0]sum;
output carry;
wire [2:0]w;
full_adder HA1 (.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(w[0]));
full_adder HA2 (.a(a[1]),.b(b[1]),.c(w[0]),.sum(sum[1]),.carry(w[1]));
full_adder HA3 (.a(a[2]),.b(b[2]),.c(w[1]),.sum(sum[2]),.carry(w[2]));
full_adder HA4 (.a(a[3]),.b(b[3]),.c(w[2]),.sum(sum[3]),.carry(carry));
endmodule
