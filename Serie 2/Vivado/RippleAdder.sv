`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2025 08:25:21 PM
// Design Name: 
// Module Name: RippleAdder
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

module RippleAdder(
        input logic [6:0] A, B,
        input logic C_in,
        output logic [6:0] S,
        output logic C_out);
        
        //Internal Conn.
        logic C_1, C_2;
        
        //Adders
        FullAdder add1(A[0], B[0], C_in, S[0], C_1);
        Adder3bits add2(A[3:1], B[3:1], C_1, S[3:1], C_2);
        Adder3bits add3(A[6:4], B[6:4], C_2, S[6:4], C_out);
endmodule
