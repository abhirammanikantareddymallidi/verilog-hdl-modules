`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2026 16:41:26
// Design Name: 
// Module Name: tmp_top
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


module tmp_top(input clk,rst,[7:0]FL,[7:0]FR,[7:0]RL,[7:0]RR,output led1,led2,led3,led4,FL_en,FR_en,RL_en,RR_en,[7:0]disp_data);
wire [1:0] count_out;
wire [3:0] led_en_ind;
counter COUNTER(.clk(clk),.rst(rst),.count(count_out));
mux_4_1 MUX(.sel(count_out),.FL(FL),.FR(FR),.RL(RL),.RR(RR),.data_out(disp_data));
decoder_2_4 DECODER(.dec_in(count_out),.dec_out(led_en_ind));
assign led1=led_en_ind[0];
assign FL_en=led_en_ind[0];
assign led2=led_en_ind[1];
assign FR_en=led_en_ind[1];
assign led3=led_en_ind[2];
assign RL_en=led_en_ind[2];
assign led4=led_en_ind[3];
assign RR_en=led_en_ind[3];
endmodule
//