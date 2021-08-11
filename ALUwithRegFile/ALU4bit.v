`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:06 04/28/2021 
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
module ALU4bit(a,b,bin,oper,carout,res);
    input [3:0]a;
    input [3:0]b;
    input bin;
    input [1:0]oper;
	 output carout;
    output reg [3:0]res;
wire [3:0]set;
wire cout[3:0];
secondmux W(a[0],b[0],bin,bin,oper,cout[0],set[0]);
secondmux X(a[1],b[1],bin,cout[0],oper,cout[1],set[1]);
secondmux Y(a[2],b[2],bin,cout[1],oper,cout[2],set[2]);
secondmux Z(a[3],b[3],bin,cout[2],oper,cout[3],set[3]);
assign carout = cout[3];
always @ *
begin
if (oper==3)
begin 
res[0]<=set[3];
res[3:1]<=3'b000;
end
else
begin
res<=set;
end
end
endmodule