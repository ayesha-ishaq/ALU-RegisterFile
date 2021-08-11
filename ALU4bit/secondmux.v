`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:13 04/14/2021 
// Design Name: 
// Module Name:    secondmux 
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
module secondmux(
    input a,
    input b,
    input bin,
	 input cin,
    input [1:0]oper,
	 output cout,
    output res
    );
wire inter;
assign inter=bin? ~b : b;
firstmux i1(a,inter,cin,oper,cout,res);
endmodule
