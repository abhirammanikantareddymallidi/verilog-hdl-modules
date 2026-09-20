`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2026 20:30:13
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(en,a1,a2,o1,o2,o3,o4);
input en,a1,a2;
output reg o1,o2,o3,o4;
always@(*)begin
o1=1'b0;
o2=1'b0;
o3=1'b0;
o4=1'b0;
if(en==1)begin
case({a1,a2})
2'b00 : o1=1'b1;
2'b01 : o2=1'b1;
2'b10 : o3=1'b1;
2'b11 : o4=1'b1;
endcase
end
end
endmodule
