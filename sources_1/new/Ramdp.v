`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2024 08:25:28 PM
// Design Name: 
// Module Name: Ramdp
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


module Ramdp(  
input clk,wr,rd,
input[9:0]add,// size of the memory = 2^10 x 8 bits
 input [7:0]din,//8bits
 output reg [7:0]dout );
 
 reg[7:0]mem [1023: 0];// size of the Ram = 8 bits & location = 1024
 always @ (wr,rd,din,add)
 begin
        if(wr )
        mem[add] = din;
        else if(rd  )
        dout = mem[add];

 end
endmodule
