`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2026 21:07:11
// Design Name: 
// Module Name: nand_gate_tb
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


module nand_gate_tb;
reg a,b;
wire y;
nand_gate dut(.a(a),.b(b),.y(y));
initial begin 
a=0;b=0;#100
a=0;b=1;#100
a=1;b=0;#100
a=1;b=1;#100
$finish;
end
initial begin 
$monitor("a=%b,b=%b,y=%b",a,b,y);
end

endmodule
