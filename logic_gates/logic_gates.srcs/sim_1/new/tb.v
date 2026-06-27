`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 20:24:14
// Design Name: 
// Module Name: tb
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


module and_gate_tb;
reg a,b;
wire c;
and_gate dut(.a(a),.b(b),.c(c));
initial begin
a=0;b=0;#100
a=0;b=1;#100
a=1;b=0;#100
a=1;b=1;#100
$finish;
$monitor("a=%b,b=%b,c=%b",a,b,c);
end
endmodule
