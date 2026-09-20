`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 17:50:14
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire [7:0]o;
decoder_3_8 d1 (1'b1,a,b,c,o);
assign sum   = o[1] | o[2] | o[4] | o[7];
assign carry = o[3] | o[5] | o[6] | o[7];
endmodule
