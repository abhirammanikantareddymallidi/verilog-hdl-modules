`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 12:23:39
// Design Name: 
// Module Name: demux_1_2
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


module demux_1_2(i,s,out1,out2);
input i,s;
output reg out1,out2;
always@(*)begin
if(s==0)begin
out1=i;
out2=0;
end
else begin
out1=0;
out2=i;
end
end
endmodule
