`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 08:51:47 PM
// Design Name: 
// Module Name: tb
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


module tb;
reg[9:0]add;
reg[7:0]din;
reg clk,wr,rd;
wire [7:0]dout;
Ramdp r1(.clk(clk),.wr(wr),.rd(rd),.din(din),.add(add),.dout(dout));
always #70 clk = ~clk;
initial begin
clk = 1; din = 8'h000f;  wr = 0; rd =0;
end
initial begin
#100;
wr <= 1;
rd <= 0;
 din <= 8'b10111001;
 add <= 9;
 
 
 #100;
wr <= 1;
rd <= 0;
 din <= 8'b1001001;
 add <= 8;
 
 #100;
wr <= 1;
rd <= 0;
 din <= 8'b1111;
 add <= 7;
 
 #100;
wr <= 1;
rd <= 0;
 din <= 8'b10011000;
 add <= 6;
 
 #100;
wr <= 1;
rd <= 0;
din <= 8'b10001000;
 add <= 5;
 
 
 
 
 
 //rd
 
 
 #100
 wr <= 0;
 add <= 9;
rd <= 1;
 
 
 #100;
wr <= 0;
add <= 8;
rd <= 1;
 
 
 #100;
wr <= 0;
add <= 7;
rd <= 1;
 
 
 #100;
wr <= 0;
add <= 6;
rd <= 1;
 
  #100;
wr <= 0;
add <= 5;
rd <= 1;
 
 #200;
 $finish;
 
end

endmodule
