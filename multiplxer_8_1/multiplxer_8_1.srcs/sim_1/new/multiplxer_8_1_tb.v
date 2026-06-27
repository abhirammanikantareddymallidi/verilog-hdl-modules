`timescale 1ns / 1ps

module multiplxer_8_1_tb;
    reg [7:0] i;
    reg [2:0] s;
    wire out;
    multiplxer_8_1 dut (
        .i(i),
        .s(s),
        .out(out)
    );
    initial begin
        i = 8'b10101010;
        s = 3'b000; #100;
        s = 3'b001; #100; 
        s = 3'b010; #100;
        s = 3'b011; #100;
        s = 3'b100; #100;
        s = 3'b101; #100; 
        s = 3'b110; #100; 
        s = 3'b111; #100; 
        $finish;
    end
    initial begin
        $monitor("time=%d,s=%b,inputs=%b,out=%b", $time, s, s, i, out);
    end    
endmodule
