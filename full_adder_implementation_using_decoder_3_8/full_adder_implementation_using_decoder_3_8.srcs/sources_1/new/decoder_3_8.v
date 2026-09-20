`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 17:48:47
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(en,a1,a2,a3,o);
input en,a1,a2,a3;
output reg [7:0]o;
always@(*)begin
o = 8'b00000000;
if(en == 0)
o = 8'b00000000;
else begin
case({a1,a2,a3})
3'b000 : o[0]=1'b1;
3'b001 : o[1]=1'b1;
3'b010 : o[2]=1'b1;
3'b011 : o[3]=1'b1;
3'b100 : o[4]=1'b1;
3'b101 : o[5]=1'b1;
3'b110 : o[6]=1'b1;
3'b111 : o[7]=1'b1;
endcase
end
end
endmodule
