`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:07 04/28/2021 
// Design Name: 
// Module Name:    reg4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module reg4bit(out, in, clk, sel,reset);
input [3:0] in;
input clk;
input sel;
output reg [3:0]out;
input reset;
always @ (posedge clk)
if (reset)
begin
out<=4'b0000;
end
else if (sel)
begin
out<=in;
end
endmodule
