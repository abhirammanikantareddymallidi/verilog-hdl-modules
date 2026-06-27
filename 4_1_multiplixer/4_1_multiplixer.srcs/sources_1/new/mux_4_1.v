`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 14:26:32
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(i0,i1,i2,i3,s0,s1,out);
input i0,i1,i2,i3,s0,s1;
output reg out;
always@(*)begin
if(s0==0 && s1==0) 
out = i0;
else if(s0 == 0 && s1 == 1)
out = i1;
else if (s0 == 1 && s1 == 0)
out = i2;
else if(s0 == 1 && s1 == 1)
out = i3;
end
endmodule
