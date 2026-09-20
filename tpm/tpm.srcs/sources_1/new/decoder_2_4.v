`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2026 16:35:13
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


module decoder_2_4(
input [1:0] dec_in,
output reg [3:0] dec_out
);
always@(*)begin
case(dec_in)
2'b00 : dec_out = 4'b0001;
2'b01 : dec_out = 4'b0010;
2'b10 : dec_out = 4'b0100;
2'b11 : dec_out = 4'b1000;
endcase
end
endmodule
