`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 16:57:55
// Design Name: 
// Module Name: Compressor_8_2
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



module compressors_8_2(A,B,C,D,E,F,G,H,Cout0,Cout1,Cout2,Sum,Carry);
input A,B,C,D,E,F,G,H;
output Cout0,Cout1,Cout2,Carry,Sum;
wire [0:2]a;


assign a[0]=A^B;
assign a[1]=a[0]^C^D;
assign a[2]=a[1]^E^F;
assign Sum=a[2]^G^H;


mux1_2 mux1(.i0(A),.i1(C),.s(a[0]),.o(Cout0));
mux1_2 mux2(.i0(D),.i1(E),.s(a[1]),.o(Cout1));
mux1_2 mux3(.i0(F),.i1(G),.s(a[2]),.o(Cout2));
mux1_2 mux4(.i0(H),.i1(1'b0),.s(Sum),.o(Carry));

endmodule
