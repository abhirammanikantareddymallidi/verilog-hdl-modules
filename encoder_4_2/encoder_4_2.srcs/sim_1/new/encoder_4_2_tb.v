`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 16:12:17
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb();
reg i1,i2,i3,i4;
wire o1,o2;
encoder_4_2 dut(.i1(i1),.i2(i2),.i3(i3),.i4(i4),.o1(o1),.o2(o2));
initial begin 
i1=1;i2=0;i3=0;i4=0;#10;
i1=0;i2=1;i3=0;i4=0;#10;
i1=0;i2=0;i3=1;i4=0;#10;
i1=0;i2=0;i3=0;i4=1;#10;
$finish;
end
initial begin
$monitor("Time = %d , i1 = %b, i2 = %b, i3 = %b, i4 = %b, o1 = %b, o2 = %b",$time,i1,i2,i3,i4,o1,o2);
end
endmodule
