`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 16:04:47
// Design Name: 
// Module Name: encoder_4_2
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


module encoder_4_2(i1,i2,i3,i4,o1,o2);
input i1,i2,i3,i4;
output reg o1,o2;
always@(*)begin
case({i1,i2,i3,i4})
4'b1000 : begin
       o1=0;
       o2=0;
       end
4'b0100 : begin
       o1=0;
       o2=1;
       end
4'b0010 : begin
       o1=1;
       o2=0;
       end
4'b0001 : begin
       o1=1;
       o2=1;
       end
default : begin
          o1=1'bz;
          o2=1'bz;
          end
endcase
end
endmodule
