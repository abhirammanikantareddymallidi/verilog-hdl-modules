`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 12:22:48
// Design Name: 
// Module Name: gray_code_to_binary_code_tb
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


module gray_code_to_binary_code_tb;
reg [3:0]g;
wire [3:0]b;
gray_code_to_binary_code dut(.g(g),.b(b));
initial begin
g=4'b0000;#10;
g=4'b0001;#10;
g=4'b0010;#10;
g=4'b0011;#10;
g=4'b0100;#10;
g=4'b0101;#10;
g=4'b0110;#10;
g=4'b0111;#10;
g=4'b1000;#10;
g=4'b1001;#10;
g=4'b1010;#10;
g=4'b1011;#10;
g=4'b1100;#10;
g=4'b1101;#10;
g=4'b1110;#10;
g=4'b1111;#10;
$finish;
end
initial begin
$monitor("Time=%d,gray=%b,binary=%b",$time,g,b);
end
endmodule
