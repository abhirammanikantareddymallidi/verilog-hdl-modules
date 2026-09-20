`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2026 17:53:54
// Design Name: 
// Module Name: traffic_light_controller_tb
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


module traffic_light_controller_tb();
reg clk;
reg rst;
wire [2:0]highway;
wire [2:0]country;

traffic_light_controller dut (.clk(clk),.rst(rst),.highway(highway),.country(country));
always #10 clk = ~clk;
initial begin
rst = 1;
clk = 0;
#10;
rst=0;
clk=1;
#600;
$finish;
end
initial begin
$monitor("Time = %d, Highway=%b, Country=%b",$time,highway,country);
end
endmodule
