`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 20:10:30
// Design Name: 
// Module Name: Compressor5_2_proposed
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


module Compressor5_2_proposed(I0,I1,I2,I3,I4,SUM,CARRY);
input I0,I1,I2,I3,I4;
output SUM,CARRY;

assign SUM = ~I4&((~I3&I2&~I1&~I0) | (~I3&~I2&~I1&I0) | (~I3&~I2&I1&~I0) | (I3&~I2&~I1&~I0) | (I2&I1&I0) | (I3&I2&I0) | (I3&I2&I1) | (I3&I1&I0)) | I4&((~I3&~I2&~I1&~I0) | (I3&I2) | (I1&I0) | (I2&I0) | (I2&I1) | (I3&I0) | (I3&I1));
assign CARRY = (I2 | I3) & (I0 | I1) | (I3 & I2) | (I1 & I0) | ( I4 & ( I0 | I1 | I2 | I3 ) ); 
endmodule

