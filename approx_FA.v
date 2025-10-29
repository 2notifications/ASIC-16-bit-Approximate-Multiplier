`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 21:42:37
// Design Name: 
// Module Name: approx_FA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module approx_FA(a,b,c1,s,c);
input a,b,c1;
output s,c;
assign s=(a|b)^c1;
assign c=(a|b)&c1;
endmodule

