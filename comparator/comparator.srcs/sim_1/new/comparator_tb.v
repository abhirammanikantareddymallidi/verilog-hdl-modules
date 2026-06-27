`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 11:42:32
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb;
reg a,b;
wire eq,lt,gt;
comparator dut(.a(a),.b(b),.eq(eq),.lt(lt),.gt(gt));
initial begin
a=0;b=0;#100;
a=0;b=1;#100;
a=1;b=0;#100;
a=1;b=1;#100;
$finish;
end
initial begin
$monitor("Time=%d,a=%b,b=%b,eq=%b,lt=%b,gt=%b",$time,a,b,eq,lt,gt);
end
endmodule
