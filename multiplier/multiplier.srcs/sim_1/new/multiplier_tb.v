`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 11:06:21
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb;
reg [1:0]a,b;
wire [3:0]s;
multiplier dut(.a(a),.b(b),.s(s));
initial begin
a = 2'b00;
b = 2'b11;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
a = 2'b01;
b = 2'b10;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
a = 2'b10;
b = 2'b01;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
a = 2'b11;
b = 2'b00;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
a = 2'b00;
b = 2'b00;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
a = 2'b11;
b = 2'b11;
#100;
$display("time=%d,a=%b,b=%b,s=%b",$time,a,b,s);
$finish;
end
endmodule
