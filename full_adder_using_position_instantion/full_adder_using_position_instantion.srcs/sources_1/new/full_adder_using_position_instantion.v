`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 16:56:23
// Design Name: 
// Module Name: full_adder_using_position_instantion
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


module full_adder_using_position_instantion(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
half_adder HA1(a,b,w1,w2);
half_adder HA2(w1,c,sum,w3);
or o(carry,w2,w3);
endmodule
