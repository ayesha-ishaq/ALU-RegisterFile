`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:31 04/28/2021 
// Design Name: 
// Module Name:    regfile_ALU4bit 
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
module regfile_ALU4bit(rd1,rd2,data_in,wr,write_en,read_en,clk,
res,oper,carryout,reset,regout1,regout2
    );
input [1:0]rd1;
input [1:0]rd2;
input [3:0]data_in;
input [1:0]wr;
input write_en;
input read_en;
input clk;
output [3:0]res;
input [2:0]oper;
output carryout;
input reset;
wire [3:0]muxout;
output [3:0]regout1;
output [3:0]regout2;
mux2x1 mux(data_in, res, muxout, write_en);
register_file_4x4 regfile(regout1,regout2,muxout,wr,read_en,rd1,rd2,clk,reset);
ALU4bit ALU(regout1,regout2,oper[2],oper[1:0],carryout,res);
endmodule
