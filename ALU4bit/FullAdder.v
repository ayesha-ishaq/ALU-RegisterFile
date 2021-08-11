`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:31 04/14/2021 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
	 
assign sum=cin^(a^b);
assign cout=(a&b)|(cin&(a^b));

endmodule