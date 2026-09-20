`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 17:57:35
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,c;
wire sum,carry;
full_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
a=0;b=0;c=0;#100;
a=1;b=0;c=0;#100;
a=0;b=1;c=0;#100;
a=1;b=1;c=0;#100;
a=0;b=0;c=1;#100;
a=1;b=0;c=1;#100;
a=0;b=1;c=1;#100;
a=1;b=1;c=1;#100;
$finish;
end
initial begin
$monitor("time=%d,a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);
end
endmodule
