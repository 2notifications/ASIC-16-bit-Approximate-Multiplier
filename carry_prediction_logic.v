`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 23:02:49
// Design Name: 
// Module Name: carry_prediction_logic
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


module carry_prediction_logic(a,b,c,s,cout);
input a,b,c;
output s,cout;
wire [3:0]w;

assign w[0]=a|b;
assign w[1]=a&b;
assign w[2]=w[0]&c;
assign w[3]=w[0]|c;
assign cout=w[1]|w[2];
assign s=~cout&w[3];

endmodule
