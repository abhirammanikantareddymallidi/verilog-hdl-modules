`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 10:57:48
// Design Name: 
// Module Name: multiplier
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


module multiplier(a,b,s);
input [1:0]a,b;
output [3:0]s;
wire w1,w2,w3,w4;
and(s[0],a[0],b[0]);
and(w1,a[1],b[0]);
and(w2,a[0],b[1]);
half_adder ha1 (w1,w2,s[1],w3);
and(w4,a[1],b[1]);
half_adder ha2(w3,w4,s[2],s[3]);
endmodule
