`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 23:02:06
// Design Name: 
// Module Name: or_and_cell
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


module or_and_cell(a,b,d,s,c);
input a,b,d;
output s,c;
assign s=a|b|d;
assign c=a&b;

endmodule
