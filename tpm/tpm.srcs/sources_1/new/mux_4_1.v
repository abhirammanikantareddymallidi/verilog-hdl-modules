`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2026 16:20:54
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


module mux_4_1(sel,FL,FR,RL,RR,data_out);
input [1:0]sel;
input [7:0] FL,FR,RL,RR;
output reg  [7:0] data_out;
always@(*)begin
case(sel)
2'b00 : data_out=FL;
2'b01 : data_out=FR;
2'b10 : data_out=RL;
2'b11 : data_out=RR;
default : data_out = 0;
endcase
end
endmodule
