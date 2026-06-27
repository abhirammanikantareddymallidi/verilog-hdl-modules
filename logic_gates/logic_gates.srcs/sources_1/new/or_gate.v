`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 20:55:09
// Design Name: 
// Module Name: or_gate
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


module or_gate(a,b,y);
input a,b;
output reg y;
always@(*)begin
if(a==1 || b==1)
y=1;
else
y=0;
end
endmodule
