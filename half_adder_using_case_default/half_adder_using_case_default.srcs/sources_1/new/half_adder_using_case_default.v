`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 12:05:17
// Design Name: 
// Module Name: half_adder_using_case_default
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


module half_adder_using_case_default(a,b,sum,carry);
input a,b;
output reg sum,carry;
always@(*)begin
case({a,b})
2'b00 : begin sum = 0; carry = 0; end
2'b01 : begin sum = 1; carry = 0; end
2'b10 : begin sum = 1; carry = 0; end
default : begin sum = 0; carry = 1; end
endcase
end
endmodule
