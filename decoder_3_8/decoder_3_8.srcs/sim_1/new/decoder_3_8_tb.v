`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 17:36:49
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb();
reg en,a1,a2,a3;
wire [7:0]o;

decoder_3_8 dut (.en(en),.a1(a1),.a2(a2),.a3(a3),.o(o));

initial begin
en=0;
#100;
en=1;
a1=0;a2=0;a3=0;#100;
a1=0;a2=0;a3=1;#100;
a1=0;a2=1;a3=0;#100;
a1=0;a2=1;a3=1;#100;
a1=1;a2=0;a3=0;#100;
a1=1;a2=0;a3=1;#100;
a1=1;a2=1;a3=0;#100;
a1=1;a2=1;a3=1;#100;
$finish;
end
initial begin 
$monitor("Time = %d, a1 = %b, a2 = %b , a3 = %b , o = %b ",$time,a1,a2,a3,o);
end
endmodule
