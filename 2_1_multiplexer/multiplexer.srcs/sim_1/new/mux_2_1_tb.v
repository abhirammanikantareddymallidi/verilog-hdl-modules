`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2026 14:19:14
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
reg [1:0]i,s;
wire out;
mux_2_1 dut(.i(i),.s(s),.out(out));
initial begin
i=2'b10;
$display("time=%d,s=%b,i=%b,out=%b",$time,s,i,out);
s=0;#100;
$display("time=%d,s=%b,i=%b,out=%b",$time,s,i,out);
s=1;#100;
i=2'b01;
$display("time=%d,s=%b,i=%b,out=%b",$time,s,i,out);
s=0;#100;
$display("time=%d,s=%b,i=%b,out=%b",$time,s,i,out);
s=1;#100;
$display("time=%d,s=%b,i=%b,out=%b",$time,s,i,out);
$finish;
end
endmodule
