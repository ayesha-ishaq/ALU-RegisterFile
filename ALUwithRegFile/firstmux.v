`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:11 04/28/2021 
// Design Name: 
// Module Name:    firstmux 
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
module firstmux(
    input wire x,
    input wire y,
    input wire carin,
    input wire [1:0]ope,
    output carout,
    output reg ans
    );
wire temp1, temp2;
ALU1bit one(x, y, ope[0], temp1);
FullAdder two(x,y,carin,temp2,carout);
always @ *
begin
if(ope[1]==0)
	ans=temp1;
else 
	ans=temp2;
end	
endmodule
