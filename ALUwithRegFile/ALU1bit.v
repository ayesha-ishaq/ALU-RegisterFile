`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:12 04/28/2021 
// Design Name: 
// Module Name:    ALU1bit 
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
module ALU1bit(
    input a,
    input b,
    input oper,
    output result
    );
assign result=oper? a|b : a&b;

endmodule	