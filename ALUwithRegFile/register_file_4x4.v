`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:30 04/28/2021 
// Design Name: 
// Module Name:    register_file_4x4 
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
module register_file_4x4(data_out1 ,data_out2,data_in,
wr,write_enable,rd1 ,rd2 ,clk,reset);
output [3:0]  data_out1 ,data_out2;
input  [3:0]  data_in ;
input  [1:0]  wr ;
input         write_enable ;
input  [1:0]  rd1,rd2 ;
input         clk ;
wire [3:0]sel;
wire [3:0]do1,do2,do3,do4;
input reset;
decoder2x4 dec(wr,write_enable,sel);
reg4bit A(do1,data_in,clk, sel[0],reset);
reg4bit B(do2,data_in,clk, sel[1],reset);
reg4bit C(do3,data_in,clk, sel[2],reset);
reg4bit D(do4,data_in,clk, sel[3],reset);
mux4x1 one(rd1,data_out1,do1,do2,do3,do4);
mux4x1 two(rd2,data_out2,do1,do2,do3,do4);
endmodule

