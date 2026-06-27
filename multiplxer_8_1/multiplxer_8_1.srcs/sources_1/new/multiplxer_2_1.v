`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 14:45:21
// Design Name: 
// Module Name: multiplxer_2_1
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


module multiplxer_2_1(i0,i1,s,out);
input i0,i1,s;
output reg out;
always@(*)begin
if(s==0)
out = i0;
else
out = i1;
end
endmodule
