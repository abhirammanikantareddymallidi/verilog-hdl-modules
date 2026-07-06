`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 12:35:04
// Design Name: 
// Module Name: demux_1_4_tb
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


module demux_1_4_tb();
reg i;
reg [1:0]s;
wire [3:0]out;
demux_1_4 dut(.i(i),.s0(s[0]),.s1(s[1]),.out(out));
initial begin
i=1;
s=2'b00;#100;
i=1;
s=2'b01;#100;
i=1;
s=2'b10;#100;
i=1;
s=2'b11;#100;
end
initial begin
$monitor("time=%d,i=%b,s=%b,out=%b",$time,i,s,out);
end
endmodule
