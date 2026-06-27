`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 11:37:31
// Design Name: 
// Module Name: comparator
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


module comparator(a,b,eq,lt,gt);
input a,b;
output reg eq,lt,gt;
always@(*)begin
if(a==b)begin
eq = 1;
lt = 0;
gt = 0;
end
else if(a>b)begin
eq = 0;
lt = 0;
gt = 1;
end
else if(a<b) begin
eq = 0;
lt = 1;
gt = 0;
end
end
endmodule
