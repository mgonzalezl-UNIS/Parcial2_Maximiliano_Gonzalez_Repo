`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2025 08:58:35 PM
// Design Name: 
// Module Name: Adder3bits
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


module Adder3bits(
        input logic [2:0] A, B,
        input logic C_in,
        output logic [2:0] S,
        output logic C_out);
        
        //Internal Conn.
        logic C_1,C_2;
        
        //Adders
        FullAdder add1(A[0], B[0], C_in, S[0], C_1);
        FullAdder add2(A[1], B[1], C_1, S[1], C_2);
        FullAdder add3(A[2], B[2], C_2, S[2], C_out);
endmodule
