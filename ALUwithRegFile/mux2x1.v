`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:48 04/28/2021 
// Design Name: 
// Module Name:    mux2x1 
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
module mux2x1(a,b,out,sel);
input [3:0]a;
input [3:0]b;
output reg [3:0]out;
input sel;
always @ *
begin
case (sel)
1'b0: begin out=a; end
1'b1: begin out=b; end
endcase
end
endmodule