`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2025 10:53:10 PM
// Design Name: 
// Module Name: Decoders
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

package Decoders;

    //Selected OP decoder
    typedef enum logic [1:0] {
        ADD = 2'b00,
        SUB = 2'b01,
        AND = 2'b10,
        OR = 2'b11
    } OP_t;
    
    //A shift decoder
    typedef enum logic [1:0] {
        No_Shift = 2'b00,
        Shift_Right = 2'b01,
        Shift_Left = 2'b10
    } SH_t;
    
endpackage
