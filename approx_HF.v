`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 22:30:42
// Design Name: 
// Module Name: approx_HF
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



module approx_HF(p0,p1,s,c);
input p0,p1;
output s,c;
assign s=p0|p1;
assign c=p0&p1;
endmodule

