`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2026 20:18:27
// Design Name: 
// Module Name: decoder_1_2_tb
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


module decoder_1_2_tb();
reg en,i;
wire o1,o2;

decoder_1_2 dut(.en(en),.i(i),.o1(o1),.o2(o2));

initial begin
i=0;en=0;#100
i=0;en=1;#100
i=1;en=0;#100
i=1;en=1;#100
$finish;
end
initial begin
$monitor("Time=%d,en=%b,i=%b",$time,en,i);
end
endmodule
