`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2026 16:05:36
// Design Name: 
// Module Name: tmp_tb
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


module tmp_tb;
reg clk,rst;
reg [7:0]FL,FR,RL,RR;
wire led1,led2,led3,led4;
wire FL_en,FR_en,RL_en,RR_en;
wire [7:0]disp_data;
tmp_top dut(.clk(clk),.rst(rst),.FL(FL),.FR(FR),.RL(RL),.RR(RR),.led1(led1),.led2(led2),.led3(led3),.led4(led4),.FL_en(FL_en),.FR_en(FR_en),.RL_en(RL_en),.RR_en(RR_en),.disp_data(disp_data));
always #5 clk = ~clk;
initial begin 
rst =1;
clk = 0;
#10;
rst=0;
FL=23;
FR=34;
RL=31;
RR=28;
#10;
rst=1;
#50;
rst=0;
#300;
FL=32;
FR=34;
RL=33;
RR=29;
end
initial begin
$monitor("time=%0t rst=%0d FL=%0d FR=%0d RL=%0d RR=%0d led1=%0d led2=%0d led3=%0d led4=%0d FL_en=%0d FR_en=%0d RL_en=%0d RR_en=%0d disp_data=%0d",$time, rst, FL, FR, RL, RR,led1, led2, led3, led4,FL_en, FR_en, RL_en, RR_en,disp_data);
end
endmodule
