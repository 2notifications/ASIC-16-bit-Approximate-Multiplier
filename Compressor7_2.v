`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 16:24:11
// Design Name: 
// Module Name: Compressor7_2
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


module compressor7_2(I1,I2,I3,I4,I5,I6,I7,Cout1,Cout2,Sum,Carry);
input I1,I2,I3,I4,I5,I6,I7;
output Cout1,Cout2,Sum,Carry;
wire [7:0]a;
wire [1:0]p;

assign p[0]=1'b0;
assign p[1]=1'b1;
assign a[0]=I1^I2;
assign a[3]=I4^I5;
assign a[4]=I6^I7;
assign a[6]=a[1]^a[3];
assign a[2]=a[1]^a[3];
assign a[5]=~(I6&I7);

mux1_2 mux1(a[0],~a[0],I3,a[1]);
mux1_2 mux2(a[2],~a[2],a[4],Sum);
mux1_2 mux3(p[1],a[7],a[5],Carry);
mux1_2 mux4(p[0],a[6],a[4],a[7]);
mux1_2 mux5(I1,I3,a[0],Cout1);
mux1_2 mux6(I5,a[1],a[3],Cout2);

endmodule

