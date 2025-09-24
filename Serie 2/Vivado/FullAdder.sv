`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2025 08:37:10 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
        input logic A, B, C_in,
        output logic S, C_out);
        
    //Internal Conn.
    logic P, G;
    
    //Output internal stage
    assign P = A ^ B;
    assign G = A & B;
    
    //Outputs
    assign S = P ^ C_in;
    assign C_out = G | (P & C_in); 
endmodule
