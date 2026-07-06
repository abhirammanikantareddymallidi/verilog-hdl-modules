`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 11:51:59
// Design Name: 
// Module Name: dmux_1_4
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


module dmux_1_4(i,s,out);
input i;
input [1:0]s;
output reg [3:0]out;
always@(*)begin
case({s})
2'b00: begin
        out[0]=i;
        out[1]=0;
        out[2]=0;
        out[3]=0;
        end
2'b01: begin
        out[0]=0;
        out[1]=i;
        out[2]=0;
        out[3]=0;
        end
2'b10: begin
        out[0]=0;
        out[1]=0;
        out[2]=i;
        out[3]=0;
        end
2'b11: begin
        out[0]=0;
        out[1]=0;
        out[2]=0;
        out[3]=i;
        end       
endcase
end
endmodule
