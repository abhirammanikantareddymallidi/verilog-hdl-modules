`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 14:15:52
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(i,s,out);
input [1:0]i,s;
output reg out;
always@(*)begin
if(s==0)begin
out = i[0];
end
else
out = i[1];
end
endmodule
