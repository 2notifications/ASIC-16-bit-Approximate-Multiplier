`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 23:04:00
// Design Name: 
// Module Name: han_16
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


module han_16(a,b,cin,s,c);
input [15:0]a,b;
input cin;
output [15:0]s;
output c;
wire [15:0]p,g;
wire [7:0]G_0,P_0;
wire [6:0]G_1,P_1;
wire [5:0]G_2;
wire [5:2]P_2;
wire [2:0]G_3;
wire [6:0]G_4;

assign p[0] = a[0] ^ b[0];
assign g[0] = a[0] & b[0];
assign p[1] = a[1] ^ b[1];
assign g[1] = a[1] & b[1];
assign p[2] = a[2] ^ b[2];
assign g[2] = a[2] & b[2];
assign p[3] = a[3] ^ b[3];
assign g[3] = a[3] & b[3];
assign p[4] = a[4] ^ b[4];
assign g[4] = a[4] & b[4];
assign p[5] = a[5] ^ b[5];
assign g[5] = a[5] & b[5];
assign p[6] = a[6] ^ b[6];
assign g[6] = a[6] & b[6];
assign p[7] = a[7] ^ b[7];
assign g[7] = a[7] & b[7];
assign p[8] = a[8] ^ b[8];
assign g[8] = a[8] & b[8];
assign p[9] = a[9] ^ b[9];
assign g[9] = a[9] & b[9];
assign p[10] = a[10] ^ b[10];
assign g[10] = a[10] & b[10];
assign p[11] = a[11] ^ b[11];
assign g[11] = a[11] & b[11];
assign p[12] = a[12] ^ b[12];
assign g[12] = a[12] & b[12];
assign p[13] = a[13] ^ b[13];
assign g[13] = a[13] & b[13];
assign p[14] = a[14] ^ b[14];
assign g[14] = a[14] & b[14];
assign p[15] = a[15] ^ b[15];
assign g[15] = a[15] & b[15];

//stage 1

assign G_0[0] = g[2*0+1]|p[2*0+1]&g[2*0];
assign P_0[0] = p[2*0+1]&p[2*0];
assign G_0[1] = g[2*1+1]|p[2*1+1]&g[2*1];
assign P_0[1] = p[2*1+1]&p[2*1];
assign G_0[2] = g[2*2+1]|p[2*2+1]&g[2*2];
assign P_0[2] = p[2*2+1]&p[2*2];
assign G_0[3] = g[2*3+1]|p[2*3+1]&g[2*3];
assign P_0[3] = p[2*3+1]&p[2*3];
assign G_0[4] = g[2*4+1]|p[2*4+1]&g[2*4];
assign P_0[4] = p[2*4+1]&p[2*4];
assign G_0[5] = g[2*5+1]|p[2*5+1]&g[2*5];
assign P_0[5] = p[2*5+1]&p[2*5];
assign G_0[6] = g[2*6+1]|p[2*6+1]&g[2*6];
assign P_0[6] = p[2*6+1]&p[2*6];
assign G_0[7] = g[2*7+1]|p[2*7+1]&g[2*7];
assign P_0[7] = p[2*7+1]&p[2*7];

// stage 2

assign G_1[0] = G_0[1]|P_0[0+1]&G_0[0];
assign P_1[0] = P_0[1]&P_0[0];
assign G_1[1] = G_0[2]|P_0[1+1]&G_0[1];
assign P_1[1] = P_0[2]&P_0[1];
assign G_1[2] = G_0[3]|P_0[2+1]&G_0[2];
assign P_1[2] = P_0[3]&P_0[2];
assign G_1[3] = G_0[4]|P_0[3+1]&G_0[3];
assign P_1[3] = P_0[4]&P_0[3];
assign G_1[4] = G_0[5]|P_0[4+1]&G_0[4];
assign P_1[4] = P_0[5]&P_0[4];
assign G_1[5] = G_0[6]|P_0[5+1]&G_0[5];
assign P_1[5] = P_0[6]&P_0[5];
assign G_1[6] = G_0[7]|P_0[6+1]&G_0[6];
assign P_1[6] = P_0[7]&P_0[6];

//stage 3
assign G_2[0]=G_1[1]|P_1[1]&G_0[0];

assign G_2[1] = G_1[2]|P_1[2]&G_1[0];
assign G_2[2] = G_1[3]|P_1[3]&G_1[1];
assign G_2[3] = G_1[4]|P_1[4]&G_1[2];
assign G_2[4] = G_1[5]|P_1[5]&G_1[3];
assign G_2[5] = G_1[6]|P_1[6]&G_1[4];

assign P_2[2] = P_1[3]&P_1[1];
assign P_2[3] = P_1[4]&P_1[2];
assign P_2[4] = P_1[5]&P_1[3];
assign P_2[5] = P_1[6]&P_1[4];

//stage 4
assign G_3[0]=G_2[2]|P_2[2]&G_0[0];
assign G_3[1]=G_2[3]|P_2[3]&G_1[0];
assign G_3[2]=G_2[4]|P_2[4]&G_2[0];
assign c=G_2[5]|P_2[5]&G_2[1];

//stage 5
assign G_4[0]=g[2]|p[2]&G_0[0];
assign G_4[1]=g[4]|p[4]&G_1[0];
assign G_4[2]=g[6]|p[6]&G_2[0];
assign G_4[3]=g[8]|p[8]&G_2[1];
assign G_4[4]=g[10]|p[10]&G_3[0];
assign G_4[5]=g[12]|p[12]&G_3[1];
assign G_4[6]=g[14]|p[14]&G_3[2];

//sum
assign s[0]=p[0]^cin;
assign s[1]=g[0]^p[1];
assign s[2]=G_0[0]^p[2];
assign s[3]=G_4[0]^p[3];
assign s[4]=G_1[0]^p[4];
assign s[5]=G_4[1]^p[5];
assign s[6]=G_2[0]^p[6];
assign s[7]=G_4[2]^p[7];
assign s[8]=G_2[1]^p[8];
assign s[9]=G_4[3]^p[9];
assign s[10]=G_3[0]^p[10];
assign s[11]=G_4[4]^p[11];
assign s[12]=G_3[1]^p[12];
assign s[13]=G_4[5]^p[13];
assign s[14]=G_3[2]^p[14];
assign s[15]=G_4[6]^p[15];
endmodule
