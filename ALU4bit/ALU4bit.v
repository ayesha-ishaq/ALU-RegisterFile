`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:18 04/20/2021 
// Design Name: 
// Module Name:    ALU4bit 
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
module ALU4bit(
    input [3:0]a,
    input [3:0]b,
    input bin,
    input [1:0]oper,
	 output [3:0]cout,
    output [3:0]res,
	 output zero
    );
wire [3:0]set;
secondmux W(a[0],b[0],bin,bin,oper,cout[0],set[0]);
secondmux X(a[1],b[1],bin,cout[0],oper,cout[1],set[1]);
secondmux Y(a[2],b[2],bin,cout[1],oper,cout[2],set[2]);
secondmux Z(a[3],b[3],bin,cout[2],oper,cout[3],set[3]);

assign res[0] = (oper==3)? set[3]:set[0];
assign res[3:1] = (oper==3)? 3'b000:set[3:1];
assign zero=(~(res[0]|res[1]|res[2]|res[3]));
endmodule
