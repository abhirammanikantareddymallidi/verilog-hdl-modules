`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2026 11:36:38
// Design Name: 
// Module Name: demux_1_2_tb
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


module demux_1_2_tb;
reg i,s;
wire out1,out2;
demux_1_2 dut(.i(i),.s(s),.out1(out1),.out2(out2));
initial begin 
i=0;
s=0;#100;
i=1;
s=0;#100;
i=0;
s=1;#100;
i=1;
s=1;#100;
$finish;
end
initial begin
$monitor("time=%d,i=%b,s=%b,out1=%b,out2=%b",$time,i,s,out1,out2);
end
endmodule
