`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 20:09:34
// Design Name: 
// Module Name: Compressor_6_2_proposed
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


 module Compressor_6_2_proposed(I5,I4,I3,I2,I1,I0,SUM,CARRY,COUT);
input I5,I4,I3,I2,I1,I0;
output SUM,CARRY,COUT;
assign SUM = (((~I5&~I4) | (I5&I4)) & ( (~I3&~I2) & (~I1&I0 | I1&~I0) | (~I3&I2&(~I1&~I0)) | (I3&~I2&~I1&~I0))) | ((~I5&~I4)&((~I3&I2&I1&I0) | (I3&I2)&(~I1&I0|I1&~I0) | (I3&~I2&I1&I0))) | (I5&I4&(I3&I2&(I1|I0) | (I3|I2)&I1&I0)) | ((~I5&I4 | I5&~I4) & ((~I3&~I2&(~I1&~I0|I1&I0) | (~I3&I2) &(~I1&I0|I1&~I0)) | I3&I2&~I1&~I0 | I3&~I2&(~I1&I0|I1&~I0))) | ((I4|I5)&I3&I2&I1&I0) ;
assign CARRY = ((I5|I4|I3|I2|I1)&(I5|I4|I3|I1|I0)&(I5|I4|I2|I1|I0)&(I5|I4|I3|I2|I0)&(I5|~I4|I3|I2|I1|I0)&(~I5|I4|I3|I2|I1|I0));
assign COUT = (~I5&~I4)&(I3&I2&I1&I0) | (I4|I5)&(I3&I2&(I1|I0) | I1&I0&(I3|I2)) | (I5&I4&(I3&I2 | I1&I0 | I2&I0 | I2&I1 | I3&I0 | I3&I1)) ;
endmodule

