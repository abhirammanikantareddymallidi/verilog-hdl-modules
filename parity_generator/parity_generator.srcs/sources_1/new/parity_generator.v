`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 16:02:22
// Design Name: 
// Module Name: parity_generator
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


module parity_generator(in,even_parity,odd_parity);
input [3:0]in;
output even_parity,odd_parity;
assign odd_parity=in[3]^in[2]^in[1]^in[0];
assign even_parity=~odd_parity;
endmodule
