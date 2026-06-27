`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 21:34:12
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,c,sum,carry);
input a,b,c;
output reg sum,carry;
always@(*)begin
if(c==0)begin
case({a,b}) 
2'b00 : begin sum=0;carry=0;end
2'b01 : begin sum=1;carry=0;end
2'b10 : begin sum=1;carry=0;end
2'b11 : begin sum=0;carry=1;end 
endcase
end
else 
begin
case({a,b}) 
2'b00 : begin sum=1;carry=0;end
2'b01 : begin sum=0;carry=1;end
2'b10 : begin sum=0;carry=1;end
2'b11 : begin sum=1;carry=1;end 
endcase
end
end
endmodule
