`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2026 17:08:49
// Design Name: 
// Module Name: example_tb
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


module example_tb();
reg [3:0]a,b;
wire x,y;
example dut (.a(a),.b(b),.x(x),.y(y));
initial begin 
a=4'b0000;
b=4'b0001;
#100;
a=4'b1100;
b=4'b1100; 
#100;
a=4'b1010;
b=4'b0101;
#100;
a=4'b0010;
b=4'b0100;
$finish;
end
initial begin
$monitor("the value of time = %d , a = %d , b = %d  x = %d , y = %d",$time,a,b,x,y);
end 
endmodule
