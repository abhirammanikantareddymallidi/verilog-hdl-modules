`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2026 14:34:32
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;
reg i0,i1,i2,i3,s0,s1;
wire out;
mux_4_1 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));
initial begin
i0=1;i1=0;i2=1;i3=0;
s0=0;s1=0;#100;
s0=0;s1=1;#100;
s0=1;s1=0;#100;
s0=1;s1=1;#100;
$finish;
end
initial begin
$monitor("time=%d,s0=%b,s1=%b,out=%b",$time,s0,s1,out);
end
endmodule
