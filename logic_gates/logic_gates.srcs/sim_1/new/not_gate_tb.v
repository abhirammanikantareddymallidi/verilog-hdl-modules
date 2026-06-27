`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 20:45:31
// Design Name: 
// Module Name: not_gate_tb
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


module not_gate_tb;
reg a;
wire y;
not_gate dut(.a(a),.y(y));
initial begin
a=0;#100
a=1;#100
$finish;
end
initial begin
$monitor("a=%b,y=%b",a,y);
end
endmodule
