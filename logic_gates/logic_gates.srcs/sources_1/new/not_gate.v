`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 20:42:24
// Design Name: 
// Module Name: not_gate
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


module not_gate(a,y);
input a;
output reg y;
always@(*)begin
if(a==1)
y=0;
else
y=1;
end
endmodule
