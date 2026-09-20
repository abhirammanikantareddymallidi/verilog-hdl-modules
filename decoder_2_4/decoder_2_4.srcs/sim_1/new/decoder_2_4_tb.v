`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2026 16:56:59
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb();
reg en,a1,a2;
wire o1,o2,o3,o4;

decoder_2_4 dut(.en(en),.a1(a1),.a2(a2),.o1(o1),.o2(o2),.o3(o3),.o4(o4));

initial begin
en = 0;
#100;
en = 1;
a1=0;a2=0;#100;
a1=0;a2=1;#100;
a1=1;a2=0;#100;
a1=1;a2=1;#100;
$finish;
end
initial begin 
$monitor("Time = %d , a1 = %b , a2 = %b , 01 = %b, 02 = %b, 03 = %b, 04 = %b",$time,a1,a2,o1,o2,o3,o4);
end
endmodule
