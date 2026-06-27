`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 21:14:09
// Design Name: 
// Module Name: xnor_gate
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


module xnor_gate(a,b,out);
input a,b;
output out;
assign out = ~((a & ~b) | (~a & b));
endmodule
