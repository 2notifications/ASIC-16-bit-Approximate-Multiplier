`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 20:07:25
// Design Name: 
// Module Name: compressor4_2
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



module compressor4_2(a,b,c1,d,s,c);
input a,b,c1,d;
output s,c;
wire W1,W2,w1,w2,w3;
assign W1=a&b;
assign W2=c1&d;
assign w1=a^b;
assign w2=c1^d;
assign w3=W1&W2;
assign s=w1|w2|w3;
assign c=W1|W2;
endmodule

