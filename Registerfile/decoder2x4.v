`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:53 04/21/2021 
// Design Name: 
// Module Name:    decoder2x4 
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
module decoder2x4(wr,write_enable,sel);
input [1:0]wr;
input write_enable;
output reg [3:0]sel;
always @ *
begin
case ({wr,write_enable})
3'b001: sel=4'b0001;
3'b011: sel=4'b0010;
3'b101: sel=4'b0100;
3'b111: sel=4'b1000;
default: sel=4'b0000;
endcase
end
endmodule

