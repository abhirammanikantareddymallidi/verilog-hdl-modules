`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2026 16:14:13
// Design Name: 
// Module Name: parity_generator_tb
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


module parity_generator_tb();
reg [3:0]in;
wire even_parity,odd_parity;

parity_generator uut(.in(in),.even_parity(even_parity),.odd_parity(odd_parity));

initial begin
in[3]= 0;in[2]= 0;in[1]= 0;in[0]= 0;#100;
in[3]= 0;in[2]= 0;in[1]= 0;in[0]= 1;#100;
in[3]= 0;in[2]= 0;in[1]= 1;in[0]= 0;#100;
in[3]= 0;in[2]= 0;in[1]= 1;in[0]= 1;#100;

in[3]= 0;in[2]= 1;in[1]= 0;in[0]= 0;#100;
in[3]= 0;in[2]= 1;in[1]= 0;in[0]= 1;#100;
in[3]= 0;in[2]= 1;in[1]= 1;in[0]= 0;#100;
in[3]= 0;in[2]= 1;in[1]= 1;in[0]= 1;#100;

in[3]= 1;in[2]= 0;in[1]= 0;in[0]= 0;#100;
in[3]= 1;in[2]= 0;in[1]= 0;in[0]= 1;#100;
in[3]= 1;in[2]= 0;in[1]= 1;in[0]= 0;#100;
in[3]= 1;in[2]= 0;in[1]= 1;in[0]= 1;#100;


in[3]= 1;in[2]= 1;in[1]= 0;in[0]= 0;#100;
in[3]= 1;in[2]= 1;in[1]= 0;in[0]= 1;#100;
in[3]= 1;in[2]= 1;in[1]= 1;in[0]= 0;#100;
in[3]= 1;in[2]= 1;in[1]= 1;in[0]= 1;#100;
$finish;
end
initial begin
$monitor("in[3]= %b , in[2]= %b , in[1]= %b , in[0]= %b",in[3],in[2],in[1],in[0]);
end
endmodule
