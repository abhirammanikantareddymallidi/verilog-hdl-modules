`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 11:49:49
// Design Name: 
// Module Name: half_adder_if_else
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


module half_adder_if_else(a,b,sum,carry);
input a,b;
output reg sum,carry;
always@(*)begin
if(a==0 && b==0)begin
sum=0;
carry=0;
end
else if (a==0 && b==1)begin
sum=1;
carry=0;
end
else if(a==1 && b==0)begin
sum=1;
carry=0;
end
else
begin
sum=0;
carry=1;
end
end
endmodule
