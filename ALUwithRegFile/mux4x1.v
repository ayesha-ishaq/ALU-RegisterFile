`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:32 04/28/2021 
// Design Name: 
// Module Name:    mux4x1 
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
module mux4x1(rd,data_out,din1,din2,din3,din4);
input [1:0]rd;
output reg [3:0]data_out;
input [3:0]din1;
input [3:0]din2;
input [3:0]din3;
input [3:0]din4;
always @ *
begin
case (rd)
2'b00: begin data_out=din1; end
2'b01: begin data_out=din2; end
2'b10: begin data_out=din3; end
2'b11: begin data_out=din4; end
endcase
end
endmodule
