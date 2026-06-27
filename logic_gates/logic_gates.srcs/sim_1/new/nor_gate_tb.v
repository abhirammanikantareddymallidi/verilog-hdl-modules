`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2026 20:58:13
// Design Name: 
// Module Name: nor_gate_tb
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


module nor_gate_tb;
reg a,b;
wire out;
nor_gate dut(.a(a),.b(b),.out(out));
initial begin 
a=0;b=0;#100
a=0;b=1;#100
a=1;b=0;#100
a=1;b=1;#100
$finish;
end
initial begin 
$monitor("time=%d,a=%b,b=%b,y=%b",$time,a,b,out);
end
endmodule
