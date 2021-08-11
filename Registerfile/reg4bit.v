`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:06 04/21/2021 
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
module reg4bit(out, in, clk, reset, sel);
input [3:0] in;
input clk;
input sel;
input reset;
output reg [3:0]out;
always @ (posedge clk)
if(reset)
begin
out<=4'b0000;
end
else if (sel)
begin
out<=in;
end
endmodule
