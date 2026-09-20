`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2026 20:11:59
// Design Name: 
// Module Name: decoder_1_2
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


module decoder_1_2(en,i,o1,o2);
input en,i;
output reg o1,o2;
always@(*)begin
if(en==1)begin
o1=1'b0;
o2=1'b0;
case(i)
1'b0 : o1 = i;
1'b1 : o2 = i;
endcase
end
end
endmodule
