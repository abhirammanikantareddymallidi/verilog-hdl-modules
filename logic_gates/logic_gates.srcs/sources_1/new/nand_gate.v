`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 21:04:08
// Design Name: 
// Module Name: nand_gate
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


module nand_gate(a,b,y);
input a,b;
output reg y;
always@(*)begin
if(a==1 && b==1)
y=0;
else
y=1;
end
endmodule
