`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2026 16:48:09
// Design Name: 
// Module Name: example
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


// Design a Verilog HDL module with two 4 input (A and B) and two 1 bit outputs(X and Y). The module shall compute the sum of the two inputs and assert x=1 when the sum is greater than 12. The output Y shall be low when x is high. Design and verify the functionality of the design using an appropriate testbench.//
module example(a,b,x,y);
input [3:0]a;
input [3:0]b;
output reg x,y;
wire [4:0]c;
assign c=a+b;
always@(*)begin 
if(c > 4'd12)begin
x=1'b1;
y=1'b0;
end
else begin
x=1'b0;
y=1'b1;
end
end
endmodule
