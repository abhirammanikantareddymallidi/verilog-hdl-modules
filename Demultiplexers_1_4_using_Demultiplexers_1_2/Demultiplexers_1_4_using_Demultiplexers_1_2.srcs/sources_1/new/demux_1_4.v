`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 12:27:09
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(i,s0,s1,out);
input i,s0,s1;
output [3:0]out;
wire w1,w2;
demux_1_2 D1(i,s1,w1,w2);
demux_1_2 D2(w1,s0,out[0],out[1]);
demux_1_2 D3(w2,s0,out[2],out[3]);
endmodule
