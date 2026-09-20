`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KL University
// Engineer: M A MANIKANTA REDDY
// 
// Create Date: 22.07.2026 17:13:02
// Design Name:  trafic_light_controler_at_highway_road_conuntry_road
// Module Name: traffic_light_controller
// Project Name: trafic_light_controler_at_highway_road_conuntry_road
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


module traffic_light_controller(
input clk,
input rst,
output reg [2:0]highway,
output reg [2:0]country
);

parameter RED = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN = 3'b001;

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;

parameter GREEN_DELAY = 8;
parameter YELLOW_DELAY = 3;

reg [1:0]state;
reg [4:0]count;

always@(posedge clk or posedge rst)begin
if(rst)begin
state <= s0;
count <= 0;
end
else begin
case(state)
    s0 : begin
        if(count == GREEN_DELAY-1)begin 
        state <= s1;
        count <= 0;
        end
        else
        count <= count + 1;
        end
     s1 : begin
        if(count == YELLOW_DELAY-1)begin 
        state <= s2;
        count <= 0;
        end
        else
        count <= count + 1;
        end
     s2 :begin
        if(count == GREEN_DELAY-1)begin
        state <= s3;
        count <= 0;
        end
        else
        count <= count + 1;
        end
     s3 : begin
        if(count == YELLOW_DELAY-1)begin 
        state <= s0;
        count <= 0;
        end
        else
        count <= count + 1;
        end
     default : begin
            state <= s0;
            count <= 0;
            end
endcase 
end
end
always@(*)begin
    case(state)
    s0 : begin 
        highway = GREEN;
        country = RED;
        end
    s1 : begin
        highway = YELLOW;
        country = RED;
        end
    s2 : begin 
        highway = RED;
        country = GREEN;
        end
    s3 : begin
        highway = RED;
        country = YELLOW;
        end
    default : begin 
            highway = RED;
            country = RED;
            end
    endcase 
end
endmodule