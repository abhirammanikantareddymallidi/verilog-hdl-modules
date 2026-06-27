`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 12:18:57
// Design Name: 
// Module Name: gray_code_to_binary_code
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


module gray_code_to_binary_code(g,b);
input [3:0]g;
output [3:0]b;
assign b[3]=g[3];
assign b[2]=g[3]^g[2];
assign b[1]=g[2]^g[1];
assign b[0]=g[1]^g[0];
endmodule
