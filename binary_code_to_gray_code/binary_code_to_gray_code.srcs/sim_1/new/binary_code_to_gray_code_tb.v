`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 12:00:45
// Design Name: 
// Module Name: binary_code_to_gray_code_tb
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


module binary_code_to_gray_code_tb;
reg [3:0]b;
wire [3:0]g;
binary_code_to_gray_code dut(.b(b),.g(g));
initial begin
b=4'b0000;#10;
b=4'b0001;#10;
b=4'b0010;#10;
b=4'b0011;#10;
b=4'b0100;#10;
b=4'b0101;#10;
b=4'b0110;#10;
b=4'b0111;#10;
b=4'b1000;#10;
b=4'b1001;#10;
b=4'b1010;#10;
b=4'b1011;#10;
b=4'b1100;#10;
b=4'b1101;#10;
b=4'b1110;#10;
b=4'b1111;#10;
$finish;
end
initial begin
$monitor("time=%d,binary=%b,gray=%b",$time,b,g);
end
endmodule
