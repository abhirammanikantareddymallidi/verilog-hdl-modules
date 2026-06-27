`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 14:44:07
// Design Name: 
// Module Name: multiplxer_8_1
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


module multiplxer_8_1(i,s,out);
input [7:0]i;
input [2:0]s;
output out;
wire w1,w2,w3,w4,w5,w6;
multiplxer_2_1 mux1 (i[0],i[1],s[0],w1);
multiplxer_2_1 mux2 (i[2],i[3],s[0],w2);
multiplxer_2_1 mux3 (i[4],i[5],s[0],w3);
multiplxer_2_1 mux4 (i[6],i[7],s[0],w4);
multiplxer_2_1 mux5 (w1,w2,s[1],w5);
multiplxer_2_1 mux6 (w3,w4,s[1],w6);
multiplxer_2_1 mux7 (w5,w6,s[2],out);
endmodule