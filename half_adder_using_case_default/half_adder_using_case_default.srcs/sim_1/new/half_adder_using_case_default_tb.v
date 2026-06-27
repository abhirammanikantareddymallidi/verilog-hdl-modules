`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 12:11:43
// Design Name: 
// Module Name: half_adder_using_case_default_tb
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


module half_adder_using_case_default_tb();
reg a,b;
wire sum,carry;
half_adder_using_case_default dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
a=0;b=0;#100;
a=0;b=1;#100;
a=1;b=0;#100;
a=1;b=1;#100;
$finish;
end
initial begin
$monitor("time=%d,a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);
end
endmodule
