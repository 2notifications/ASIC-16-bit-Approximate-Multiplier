`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2025 09:21:07
// Design Name: 
// Module Name: TESTBENCH2
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


module TESTBENCH2();
reg [15:0]A,B;
wire [31:0]C;
reg [31:0]expected_result;
integer i,j;
integer output_file;
TOP_MOD_MUL  mul(.a(A),.b(B),.m(C));

initial begin
        output_file = $fopen( "output_sequence_proposed0.txt", "w");
        
    end

initial begin

 for( i = 16'b10; i < 16'b1111111111111111 ; i = i+16'b10000000000) begin
    for( j = 16'b10; j < 16'b1111111111111111 ; j = j+16'b100000000) begin
 
        A = i ; B = j;
        expected_result = A*B;
        $fdisplay(output_file,"%d\t%d", C, expected_result);
    #2;
    end
    end
 end
    


endmodule